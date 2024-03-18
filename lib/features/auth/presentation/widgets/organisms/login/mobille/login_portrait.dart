import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/core/routes/app_router.dart';
import '/core/constants/size_config.dart';
import '/core/constants/text_constants.dart';
import '/core/helpers/assets/svg_assets.dart';
import '/core/palettes/palettes.dart';
import '/core/widgets/atoms/buttons/custom_elevated_button.dart';
import '/core/widgets/atoms/buttons/rich_text_button.dart';
import '/core/widgets/atoms/buttons/social_button.dart';
import '/core/widgets/atoms/dividers/or_divider.dart';
import '/core/widgets/atoms/text_form_fields/email_form_field.dart';
import '/core/widgets/atoms/text_form_fields/password_form_field.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';

class LoginMobilePortrait extends StatelessWidget {
  LoginMobilePortrait({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.kWhite,
      appBar: AppBar(
        notificationPredicate: (scrollNotification) => false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: horizontalBasePadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TextConstants.kWelcomeBack,
                style: getHeadlineLarge(context),
              ),
              sizedBoxHeight40,
              EmailFormField(
                controller: emailController,
              ),
              sizedBoxHeight16,
              PasswordFormField(
                controller: passwordController,
              ),
              sizedBoxHeight40,

              /// region - Login button

              CustomElevatedButton(
                onPressed: () {},
                buttonTitle: TextConstants.kLogin,
              ),

              /// endregion - Login button

              sizedBoxHeight25,

              /// region - Forget password text button

              Center(
                child: RichTextButton(
                  onTap: () {
                    AutoRouter.of(context).push(ForgotPasswordRoute());
                  },
                  textTitle: TextConstants.kForgotPassword,
                ),
              ),

              /// endregion - Forget password text button

              sizedBoxHeight40,

              const OrDivider(),

              sizedBoxHeight25,

              /// region - Continue with google button

              SocialButton(
                onPressed: () {},
                assetName: SvgAssets.google,
                buttonTitle: TextConstants.kContinueWithGoogle,
              ),

              /// endregion - Continue with google button

              sizedBoxHeight14,

              /// region - Continue with facebook button

              SocialButton(
                onPressed: () {},
                assetName: SvgAssets.facebook,
                buttonTitle: TextConstants.kContinueWithFB,
              ),

              /// endregion - Continue with facebook button
            ],
          ),
        ),
      ),
    );
  }
}
