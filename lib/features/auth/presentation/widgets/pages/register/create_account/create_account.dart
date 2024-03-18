import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/pages/register/create_account/create_account_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

@RoutePage()
class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (mobileContext) => const CreateAccountMobileWidget(),
    );
  }
}
