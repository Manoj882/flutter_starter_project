import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/routes/app_router.dart';
import '/core/widgets/atoms/buttons/custom_elevated_button.dart';
import '/core/widgets/atoms/text_form_fields/email_form_field.dart';
import '/core/constants/size_config.dart';
import '/core/constants/text_constants.dart';
import '/core/palettes/palettes.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';

class CreateAccountMobilePortrait extends StatelessWidget {
  CreateAccountMobilePortrait({super.key});

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.kWhite,
      appBar: AppBar(),
      body: Padding(
        padding: horizontalBasePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TextConstants.kCreateAccount,
              style: getHeadlineLarge(context),
            ),
            sizedBoxHeight28,
            EmailFormField(
              controller: emailController,
            ),
            sizedBoxHeight48,

            /// region - Continue button

            CustomElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(CreatePasswordRoute());
              },
              buttonTitle: TextConstants.kContinue,
            ),

            /// endregion - Continue button
          ],
        ),
      ),
    );
  }
}
