import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/core/routes/app_router.dart';
import '/core/constants/text_constants.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';
import '/core/widgets/atoms/buttons/custom_elevated_button.dart';
import '/core/widgets/atoms/text_form_fields/pin_code_text_form_field.dart';
import '/core/constants/size_config.dart';
import '/core/palettes/palettes.dart';

class ResetPasswordMobilePortrait extends StatefulWidget {
  const ResetPasswordMobilePortrait({super.key});

  @override
  State<ResetPasswordMobilePortrait> createState() =>
      _ResetPasswordMobilePortraitState();
}

class _ResetPasswordMobilePortraitState
    extends State<ResetPasswordMobilePortrait> {
  final _codeController = TextEditingController();

  final _pinCodeFormKey = GlobalKey<FormState>();

  String _codeNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.kWhite,
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: horizontalBasePadding,
          child: Form(
            key: _pinCodeFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    TextConstants.kResetPassword,
                    style: getHeadlineLarge(context),
                  ),
                ),
                sizedBoxHeight6,
                Text(
                  TextConstants.kkVerificationCodeBody,
                  style: getBodyLarge(context),
                ),
                sizedBoxHeight30,

                /// region - pin code text field

                CustomPinCodeTextField(
                  controller: _codeController,
                  onChanged: (newCode) {
                    setState(() {
                      _codeNumber = newCode;
                    });
                  },
                ),

                /// endregion - pin code text field

                sizedBoxHeight30,

                /// region - Resend Code

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      TextConstants.kNotGetCode,
                      style: getBodyLarge(context),
                    ),
                    Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          TextConstants.kResendCode,
                          style: getBodyLarge(context),
                        ),
                      ),
                    ),
                  ],
                ),

                /// region - Resend Code

                sizedBoxHeight40,

                /// region - Verify button

                CustomElevatedButton(
                  onPressed: () {
                    bool isValid = _pinCodeFormKey.currentState!.validate();

                    if (isValid) {
                      AutoRouter.of(context).push(SetNewPasswordRoute());
                    }
                  },
                  buttonTitle: TextConstants.kVerify,
                ),

                /// endregion - Verify button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
