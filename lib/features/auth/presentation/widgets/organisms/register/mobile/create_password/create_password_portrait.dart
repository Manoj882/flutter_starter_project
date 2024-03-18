import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/constants/hint_text_constants.dart';
import '/core/routes/app_router.dart';
import '/core/utils/input_validator/input_validator.dart';
import '/core/widgets/atoms/text_form_fields/password_form_field.dart';
import '/core/constants/size_config.dart';
import '/core/constants/text_constants.dart';
import '/core/palettes/palettes.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';
import '/core/widgets/atoms/buttons/custom_elevated_button.dart';

class CreatePasswordMobilePortrait extends StatelessWidget {
  CreatePasswordMobilePortrait({super.key});

  final pswController = TextEditingController();
  final confirmPswController = TextEditingController();

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.kWhite,
      appBar: AppBar(),
      body: Padding(
        padding: horizontalBasePadding,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TextConstants.kCreatePassword,
                style: getHeadlineLarge(context),
              ),
              sizedBoxHeight28,

              PasswordFormField(
                controller: pswController,
              ),

              sizedBoxHeight16,

              PasswordFormField(
                controller: confirmPswController,
                hintText: HintTextConstants.kHintConfirmPsw,
                validator: (value) => InputValidator().validateConfirmPassword(
                  pswController.text,
                  confirmPswController.text,
                ),
              ),

              sizedBoxHeight48,

              /// region - Continue button

              CustomElevatedButton(
                onPressed: () {
                  // if (formKey.currentState!.validate()) {}

                  AutoRouter.of(context).push(VerifyOTPRoute());
                },
                buttonTitle: TextConstants.kContinue,
              ),

              /// endregion - Continue button
            ],
          ),
        ),
      ),
    );
  }
}
