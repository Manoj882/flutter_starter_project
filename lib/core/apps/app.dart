import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/themes/theme.dart';
import '/main.dart';
import '../../my_home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../blocs/locale/locale_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
    );
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocBuilder<LocaleBloc, LocaleState>(
            builder: (context, state) {
              return SafeArea(
                child: MaterialApp.router(
                  title: 'Hire App',
                  debugShowCheckedModeBanner: false,
                  routerConfig: appRouter.config(),
                  // routerDelegate: appRouter.delegate(),
                  // routeInformationParser: appRouter.defaultRouteParser(),
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: state.selectedLocale,
                  themeMode: ThemeMode.light,
                  theme: ThemeManager.light,
                  // home: const MyHomePage(),
                ),
              );
            },
          );
        });
  }
}
