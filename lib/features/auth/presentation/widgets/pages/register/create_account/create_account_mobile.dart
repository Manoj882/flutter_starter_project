import 'package:flutter/material.dart';
import '/features/auth/presentation/widgets/organisms/register/mobile/create_account/create_acount_portrait.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CreateAccountMobileWidget extends StatelessWidget {
  const CreateAccountMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (context) => CreateAccountMobilePortrait(),
    );
  }
}
