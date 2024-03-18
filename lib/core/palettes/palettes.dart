import 'package:flutter/material.dart';

abstract class AppPalette {
  static const Color primaryColorLight = Color(0xFF22AD5C);

  static const Color kTextColorLight = Color(0XFF111213);
  static const Color kBodyTextColorLight = Color(0XFF545A60);
  static const Color kBodyTextColorVariantLight = Color(0XFFA4A4A4);
  static const Color kChipBackgroundColorLight = Color(0xFFEFF4FF);
  static const Color kCardBackgroundColorLight = Color(0xFFFDFDFD);
  static const Color kBody14Color = Color(0xffA8AAAC);
  static const Color kLightGrey = Color(0xFFF5F5F5);
  static const Color kMiddleGrey = Color(0xFFC4C4C4);
  static const Color kBlack = Color(0xFF000000);
  static const Color kWhite = Color(0xFFFFFFFF);

  static const Color kScaffoldBackgroundColor = Color(0xFFF5F5F5);

  static const Color kDisabledBorderColor = Color(0xFFA8AAAC);
  static const Color kActiveBorderColor = Color(0xFF2B3C8E);

  static const Color kRed = Color(0xffb00020);

  /// region - hire app

  static const Color kDarkGrayishBlueColor = Color(0xFF374151);
  static const Color kMediumSlateBlueColor = Color(0xFF637381);

  static const Color kShadowColor = Color(0xFF000000);

  static const Color kOutlineButtonColor = Color(0xFFE5E7EB);
  static const Color kOutlineButtonForegroundColor = Color(0xFF111928);
  static const Color kTitleColor = Color(0xFF374151);
  static const Color kBodyColor = Color(0xFF637381);
  static const Color kFormFieldFillColor = Color(0xFFF8FAFC);
  static const Color kHintTextLight = Color(0xFF6C7786);
  static const Color kSuffixIconColor = Color(0xFF7E8B9C);
  static const Color kPrimaryBlue = Color(0xFF6366F1);
  static const Color kDarkBlue = Color(0xFF343940);

  static const kActiveFillColor = Color(0xFFF9F9FA);
  static const kInActiveFillColor = Color(0xFFE3E7EC);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppPalette.primaryColorLight,
    onPrimary: Colors.white,
    primaryContainer: null,
    onPrimaryContainer: null,
    secondary: Color(0xff03dac6),
    onSecondary: Colors.black,
    secondaryContainer: null,
    onSecondaryContainer: null,
    tertiary: null,
    onTertiary: null,
    tertiaryContainer: null,
    onTertiaryContainer: null,
    error: Color(0xffb00020),
    onError: Colors.white,
    errorContainer: null,
    onErrorContainer: null,
    background: Color(0xFFFFFFFF),
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    surfaceVariant: null,
    onSurfaceVariant: null,
    outline: null,
    shadow: null,
    inverseSurface: null,
    onInverseSurface: null,
    inversePrimary: null,
    surfaceTint: null,
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppPalette.primaryColorLight,
    onPrimary: Colors.white,
    primaryContainer: null,
    onPrimaryContainer: null,
    secondary: Color(0xff03dac6),
    onSecondary: Colors.black,
    secondaryContainer: null,
    onSecondaryContainer: null,
    tertiary: null,
    onTertiary: null,
    tertiaryContainer: null,
    onTertiaryContainer: null,
    error: Color(0xffb00020),
    onError: Colors.white,
    errorContainer: null,
    onErrorContainer: null,
    background: Colors.red,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    surfaceVariant: null,
    onSurfaceVariant: null,
    outline: null,
    shadow: null,
    inverseSurface: null,
    onInverseSurface: null,
    inversePrimary: null,
    surfaceTint: null,
  );
}
