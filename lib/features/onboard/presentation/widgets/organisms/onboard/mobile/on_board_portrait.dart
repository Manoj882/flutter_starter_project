import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/constants/size_config.dart';
import '/core/constants/text_constants.dart';
import '/core/palettes/palettes.dart';
import '/core/routes/app_router.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';
import '/core/widgets/atoms/buttons/custom_elevated_button.dart';
import '/core/widgets/atoms/buttons/custom_outlined_button.dart';
import '/core/widgets/atoms/buttons/skip_button.dart';
import '/features/onboard/presentation/widgets/molecules/mobile/on_board_section.dart';

class OnBoardMobilePortraitWidget extends StatefulWidget {
  const OnBoardMobilePortraitWidget({super.key});

  @override
  State<OnBoardMobilePortraitWidget> createState() =>
      _OnBoardMobilePortraitWidgetState();
}

class _OnBoardMobilePortraitWidgetState
    extends State<OnBoardMobilePortraitWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.kWhite,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight60,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    TextConstants.kWelcomeTitle,
                    style: getBodyLarge(context),
                  ),

                  /// region - skip button
                  SkipButton(
                    onTap: () {},
                  ),

                  /// endregion - skip button
                ],
              ),
              sizedBoxHeight10,
              Text(
                TextConstants.kWelcomeBody,
                style: getHeadlineLarge(context),
              ),
              sizedBoxHeight50,

              /// region - OnBoarding Section

              OnBoardSection(),

              /// endregion - OnBoarding Section

              sizedBoxHeight50,

              /// region - Login Button

              CustomElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const LoginRoute());
                },
                isLoading: false,
                buttonTitle: TextConstants.kLogin,
              ),

              /// endregion - Login Button

              sizedBoxHeight16,

              /// region - Create New Account Button

              CustomOutlinedButton(
                onPressed: () {
                  AutoRouter.of(context).push(
                    const CreateAccountRoute(),
                  );
                },
                buttonTitle: TextConstants.kCreateNewAccount,
              ),

              /// endregion - Create New Account Button

              sizedBoxHeight50,
            ],
          ),
        ),
      ),
    );
  }
}
