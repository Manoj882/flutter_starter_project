import 'package:flutter/material.dart';
import '/core/palettes/palettes.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';

class RichTextButton extends StatelessWidget {
  const RichTextButton({this.onTap, required this.textTitle, super.key});

  final void Function()? onTap;
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          text: textTitle,
          style: getBodyLargeMedium(context)?.copyWith(
            color: AppPalette.kPrimaryBlue,
          ),
        ),
      ),
    );
  }
}
