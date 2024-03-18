import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/organisms/login/mobille/login_portrait.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginMobileWidget extends StatelessWidget {
  const LoginMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (context) => LoginMobilePortrait(),
    );
  }
}
