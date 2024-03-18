import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/pages/register/create_password/create_password_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

@RoutePage()
class CreatePasswordPage extends StatelessWidget {
  const CreatePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (mobileContext) => CreatePasswordMobileWidget(),
    );
  }
}
