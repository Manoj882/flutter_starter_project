
import 'package:flutter/material.dart';
import '/features/onboard/presentation/widgets/organisms/onboard/mobile/on_board_portrait.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OnBoardMobileWidget extends StatelessWidget {
  const OnBoardMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(portrait: (context) => const OnBoardMobilePortraitWidget(),);
  }
}
