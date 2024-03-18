import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/palettes/palettes.dart';

TextStyle? getHeadlineLarge(BuildContext context) {
  return Theme.of(context).textTheme.headlineLarge?.copyWith(
        color: AppPalette.kTitleColor,
        fontSize: 30.w,
        fontWeight: FontWeight.w700,
      );
}

TextStyle? getHeadlineSmall(BuildContext context) {
  return Theme.of(context).textTheme.headlineSmall?.copyWith(
        color: AppPalette.kTitleColor,
        fontSize: 24.w,
        fontWeight: FontWeight.w600,
      );
}

// fontSize:16, fontWeight: FontWeight.w400 (regular)
TextStyle? getBodyLarge(BuildContext context) {
  return Theme.of(context).textTheme.bodyLarge;
}

// fontSize:16, fontWeight: FontWeight.w400 (regular)
TextStyle? getInputTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: AppPalette.kBlack,
      );
}

// fontSize:16, fontWeight: FontWeight.w500 (medium)
TextStyle? getBodyLargeMedium(BuildContext context) {
  return Theme.of(context).textTheme.bodyLarge?.copyWith(
        fontSize: 16.w,
        fontWeight: FontWeight.w500,
      );
}
