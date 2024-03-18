import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/organisms/forgot_password/mobile/forgot_password_portrait.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ForgotPasswordMobileWidget extends StatelessWidget {
  const ForgotPasswordMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (context) => ForgotPasswordMobilePortraitWidget(),
    );
  }
}
