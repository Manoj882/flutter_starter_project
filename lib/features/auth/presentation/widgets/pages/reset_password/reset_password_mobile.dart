import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/organisms/reset_password/mobile/reset_password_portrait.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResetPasswordMobile extends StatelessWidget {
  const ResetPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (context) => ResetPasswordMobilePortrait(),
    );
  }
}
