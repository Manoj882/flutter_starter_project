import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/pages/verify_otp/verify_otp_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

@RoutePage()
class VerifyOTPPage extends StatelessWidget {
  const VerifyOTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (mobileContext) => const VerifyOTPMobileWidget(),
    );
  }
}
