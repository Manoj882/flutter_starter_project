import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/organisms/verify_otp/mobile/verify_otp_portrait.dart';
import 'package:responsive_builder/responsive_builder.dart';

class VerifyOTPMobileWidget extends StatelessWidget {
  const VerifyOTPMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
        portrait: (context) => const VerifyOTPMobilePortraitWidget());
  }
}
