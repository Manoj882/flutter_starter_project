import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/config_reader/app_config_reader.dart';
import '/core/routes/app_router.dart';
import '/features/onboard/presentation/widgets/pages/on_board.dart';
import '/features/splash/presentation/widgets/pages/splash_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../core/injections/injections.dart';
import '../../bloc/splash_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(appConfigReader: getIt<AppConfigReader>())
        ..add(SplashEvent.displaySplash()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          state.maybeMap(
            loadOnBoard: (_) =>
                AutoRouter.of(context).replace(const OnBoardRoute()),
            loaded: (_) => AutoRouter.of(context).replace(const MyHomeRoute()),
            orElse: () {},
          );
        },
        child: ScreenTypeLayout.builder(
          mobile: (mobileContext) => const SplashMobileWidget(),
        ),
      ),
    );
  }
}
