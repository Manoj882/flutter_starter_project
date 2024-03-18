import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/core/routes/app_router.dart';
import '/core/constants/size_config.dart';
import '/core/constants/text_constants.dart';
import '/core/palettes/palettes.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';
import '/core/widgets/atoms/buttons/custom_elevated_button.dart';
import '/core/widgets/atoms/text_form_fields/email_form_field.dart';

class ForgotPasswordMobilePortraitWidget extends StatelessWidget {
  ForgotPasswordMobilePortraitWidget({super.key});

  final _usernameController = TextEditingController();

  final _forgotPswFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.kWhite,
      appBar: AppBar(
        notificationPredicate: (scrollNotify) => false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: horizontalBasePadding,
          child: Form(
            key: _forgotPswFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TextConstants.kForgotPassword,
                  style: getHeadlineLarge(context),
                ),
                sizedBoxHeight6,
                Text(
                  TextConstants.kForgotPswBody,
                  style: getBodyLarge(context),
                ),
                sizedBoxHeight40,
                EmailFormField(
                  controller: _usernameController,
                ),
                sizedBoxHeight40,

                /// region - Continue button

                CustomElevatedButton(
                  onPressed: () {
                    bool isValid = _forgotPswFormKey.currentState!.validate();

                    if (isValid) {
                      AutoRouter.of(context).push(ResetPasswordRoute());
                    }
                  },
                  buttonTitle: TextConstants.kContinue,
                ),

                /// endregion - Continue button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
