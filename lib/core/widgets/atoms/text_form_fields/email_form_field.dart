import 'package:flutter/material.dart';
import '/core/constants/hint_text_constants.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField(
      {this.initialValue,
      this.controller,
      this.textInputAction,
      this.hintText,
      this.readOnly = false,
      this.onChanged,
      this.validator,
      this.autoValidateMode,
      super.key});

  final String? initialValue;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final String? hintText;
  final bool readOnly;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.none,
      readOnly: readOnly,
      style: getInputTextStyle(context),
      decoration: InputDecoration(
        hintText: hintText ?? HintTextConstants.kHintEmail,
      ),
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
    );
  }
}
