import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/pages/set_new_password/set_new_password_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

@RoutePage()
class SetNewPasswordPage extends StatelessWidget {
  const SetNewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (mobileContext) => SetNewPasswordMobile(),
    );
  }
}
