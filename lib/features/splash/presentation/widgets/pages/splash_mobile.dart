import 'package:flutter/material.dart';
import '/features/splash/presentation/widgets/organisms/splash/mobile/splash_portrait.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SplashMobileWidget extends StatelessWidget {
  const SplashMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
        portrait: (context) => const SplashMobilePortraitWidget());
  }
}
