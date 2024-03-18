import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/constants/hint_text_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/core/helpers/assets/svg_assets.dart';
import '/core/palettes/palettes.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    this.controller,
    this.textInputAction,
    this.readOnly = false,
    this.hintText,
    this.onChanged,
    this.validator,
    this.autoValidateMode,
    super.key,
  });

  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final String? hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.text,
      style: getInputTextStyle(context),
      textInputAction: widget.textInputAction ?? TextInputAction.done,
      readOnly: widget.readOnly,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText ?? HintTextConstants.kHintPassword,
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          splashColor: AppPalette.kWhite,
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: _obscureText
              ? SvgPicture.asset(
                  SvgAssets.eyeOff,
                  colorFilter: const ColorFilter.mode(
                    AppPalette.kSuffixIconColor,
                    BlendMode.srcIn,
                  ),
                  height: 20.w,
                  width: 20.w,
                  fit: BoxFit.cover,
                )
              : SvgPicture.asset(
                  SvgAssets.eye,
                  colorFilter: const ColorFilter.mode(
                    AppPalette.kSuffixIconColor,
                    BlendMode.srcIn,
                  ),
                  height: 20.w,
                  width: 20.w,
                  fit: BoxFit.cover,
                ),
        ),
      ),
      onChanged: widget.onChanged,
      validator: widget.validator,
      autovalidateMode:
          widget.autoValidateMode ?? AutovalidateMode.onUserInteraction,
    );
  }
}
