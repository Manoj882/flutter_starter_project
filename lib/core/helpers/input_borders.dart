import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../palettes/palettes.dart';

final OutlineInputBorder kDefaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.w),
    borderSide: BorderSide(
        // color: const Color(0xFF545A60),
        color: AppPalette.kDisabledBorderColor,
        style: BorderStyle.solid,
        width: 0.5.w));

final OutlineInputBorder kDisabledInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.w),
  borderSide: BorderSide(
    // color: Colors.grey.shade400
    color: AppPalette.kDisabledBorderColor,
    style: BorderStyle.solid,
    width: 0.5.w,
  ),
);

final OutlineInputBorder kEnabledInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.w),
    borderSide: BorderSide(
        // color: const Color(0xFF545A60),
        color: AppPalette.kDisabledBorderColor,
        style: BorderStyle.solid,
        width: 0.5.w));

final OutlineInputBorder kFocusedInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.w),
    borderSide: BorderSide(
        color: AppPalette.primaryColorLight,
        style: BorderStyle.solid,
        width: 0.5.w));

final OutlineInputBorder kErrorInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.w),
    borderSide:
        BorderSide(color: Colors.red, style: BorderStyle.solid, width: 0.5.w));

final OutlineInputBorder kFocusedErrorInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.w),
    borderSide:
        BorderSide(color: Colors.red, style: BorderStyle.solid, width: 0.5.w));

final OutlineInputBorder kOutlineInputWithoutBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.circular(12.w),
);
