import 'dart:async';
import 'dart:isolate';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/apps/app.dart';
import '/core/bloc_observers/bloc_observer.dart';
import '/core/config_reader/app_config_reader.dart';
import '/core/config_reader/config_reader.dart';
import '/core/injections/injections.dart';
import 'package:device_preview/device_preview.dart';
import '/core/routes/app_router.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'core/apps/device_preview_app.dart';
import 'core/blocs/locale/locale_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

final appRouter = AppRouter();

void main() async {
  Bloc.observer = AppBlocObserver();

  print('current isolate: ${Isolate.current.debugName}');

  //await initAndRunApp();

  runZonedGuarded<Future<void>>(
    () async {
      await SentryFlutter.init(
        (options) {
          /// TODO: Add dsn key which is obtained from flutter project created in Sentry.io

          options.dsn = 'https://example@sentry.io/add-your-dsn-here';
          options.tracesSampleRate = 1.0;
        },
        appRunner: () async => await initAndRunApp(),
      );
    },
    (error, stack) async {
      await Sentry.captureException(error, stackTrace: stack);
      // await FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    },
  );
}

Future _initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// TODO: Configure firebase and add necessary configuration files

  //await Firebase.initializeApp();

  // Pass all uncaught 'fatal' error from the framework to Crashlytics
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };

  // GetIt configuration
  configureDependencies();
  await getIt<ConfigReader>().initialize();
}

Future initAndRunApp() async {
  await _initializeApp();

  Isolate.current.addErrorListener(RawReceivePort((pair) async {
    // Pass all uncaught asynchronous errors that aren't handled by the
    // Flutter framework to Crashlytics
    final List<dynamic> errorAndStacktrace = pair;
    await FirebaseCrashlytics.instance.recordError(
        errorAndStacktrace.first, errorAndStacktrace.last,
        fatal: true);
  }).sendPort);

  if (!kReleaseMode && getIt<ConfigReader>().isDevicePreviewEnabled) {
    runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const DevicePreviewApp(),
      ),
    );
  } else {
    runApp(
      BlocProvider(
        create: (context) =>
            LocaleBloc(appConfigReader: getIt<AppConfigReader>())
              ..add(const ChangeLocale()),
        child: MyApp(),
      ),
    );
  }
}
