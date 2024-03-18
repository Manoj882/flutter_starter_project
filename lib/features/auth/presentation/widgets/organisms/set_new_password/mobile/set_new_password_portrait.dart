import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/core/palettes/palettes.dart';
import '/core/widgets/atoms/buttons/custom_elevated_button.dart';
import '/core/widgets/atoms/text_form_fields/password_form_field.dart';
import '/core/constants/size_config.dart';
import '/core/constants/text_constants.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';

class SetNewPasswordMobilePortrait extends StatelessWidget {
  SetNewPasswordMobilePortrait({super.key});

  final _newPswController = TextEditingController();
  final _confirmPswController = TextEditingController();

  static final _setNewPswFormKey = GlobalKey<FormState>();

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
            key: _setNewPswFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    TextConstants.kSetNewPassword,
                    style: getHeadlineLarge(context),
                  ),
                ),
                sizedBoxHeight28,
                PasswordFormField(
                  controller: _newPswController,
                ),
                sizedBoxHeight16,
                PasswordFormField(
                  controller: _confirmPswController,
                ),
                sizedBoxHeight48,

                /// region - Reset Password Button

                CustomElevatedButton(
                  onPressed: () {
                    bool isValid = _setNewPswFormKey.currentState!.validate();

                    if (isValid) {}
                  },
                  buttonTitle: TextConstants.kResetPassword,
                ),

                /// endregion - Reset Password Button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
