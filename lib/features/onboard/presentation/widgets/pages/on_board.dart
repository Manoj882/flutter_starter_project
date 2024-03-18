import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '/features/onboard/presentation/widgets/pages/on_board_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

@RoutePage()
class OnBoardPage extends StatelessWidget {
  const OnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (mobileContext) => const OnBoardMobileWidget(),
    );
  }
}
