import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/constants/text_constants.dart';
import '/core/palettes/palettes.dart';
import '/core/utils/text_style_utils/text_style_utils.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 1.w,
            endIndent: 22.w,
            color: AppPalette.kBlack.withOpacity(0.21),
          ),
        ),
        Text(
          TextConstants.kOr,
          style: getBodyLarge(context)?.copyWith(
            color: AppPalette.kDarkBlue,
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1.w,
            indent: 22.w,
            color: AppPalette.kBlack.withOpacity(0.21),
          ),
        ),
      ],
    );
  }
}
