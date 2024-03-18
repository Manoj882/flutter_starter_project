import 'package:flutter/widgets.dart';
import '/features/auth/presentation/widgets/organisms/set_new_password/mobile/set_new_password_portrait.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SetNewPasswordMobile extends StatelessWidget {
  const SetNewPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (context) => SetNewPasswordMobilePortrait(),
    );
  }
}
