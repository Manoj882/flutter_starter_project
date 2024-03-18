import 'package:flutter/material.dart';

class SplashMobilePortraitWidget extends StatefulWidget {
  const SplashMobilePortraitWidget({super.key});

  @override
  State<SplashMobilePortraitWidget> createState() =>
      _SplashMobilePortraitWidgetState();
}

class _SplashMobilePortraitWidgetState extends State<SplashMobilePortraitWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: animation,
              child: const CircularProgressIndicator.adaptive(),
            ),
          ],
        ),
      ),
    );
  }
}
