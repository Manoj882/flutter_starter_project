import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/pages/login/login_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (mobileContext) => LoginMobileWidget(),
    );
  }
}
