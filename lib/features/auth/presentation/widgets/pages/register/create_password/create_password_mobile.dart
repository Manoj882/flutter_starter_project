import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/organisms/register/mobile/create_password/create_password_portrait.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CreatePasswordMobileWidget extends StatelessWidget {
  const CreatePasswordMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (context) => CreatePasswordMobilePortrait(),
    );
  }
}
