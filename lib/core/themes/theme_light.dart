part of 'theme.dart';

/// Refer to [Material 3 Flutter Implementation](https://github.com/flutter/flutter/issues/89853)
/// for more detail on textTheme

get _lightTheme => ThemeData(
      disabledColor: Colors.grey.shade400,
      primaryColor: AppPalette.lightColorScheme.primary,
      // scaffoldBackgroundColor: AppPalette.lightColorScheme.background,
      scaffoldBackgroundColor: AppPalette.kScaffoldBackgroundColor,
      colorScheme: AppPalette.lightColorScheme,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppPalette.lightColorScheme.primary,
        selectionColor: AppPalette.lightColorScheme.primary.withOpacity(0.5),
        selectionHandleColor: AppPalette.lightColorScheme.primary,
      ),

      /// theme - DialogTheme
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        shadowColor: AppPalette.kShadowColor,
        titleTextStyle: TextStyle(
          color: AppPalette.kDarkGrayishBlueColor,
          fontWeight: FontWeight.w600,
          fontSize: 24.w,
        ),
        contentTextStyle: TextStyle(
          color: AppPalette.kMediumSlateBlueColor,
          fontSize: 14.w,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.w),
        ),
      ),

      /// theme - IconTheme
      iconTheme: IconThemeData(
        color: AppPalette.lightColorScheme.primary,
        size: 14.w,
      ),
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: ThemeManager.kFontFamily,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppPalette.lightColorScheme.primary,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        foregroundColor: Colors.black,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 14.w,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: AppPalette.lightColorScheme.primary,
        unselectedItemColor: AppPalette.kTextColorLight,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 12.w,
          fontWeight: FontWeight.normal,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 12.w,
          fontWeight: FontWeight.normal,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(
              AppPalette.lightColorScheme.primary.withOpacity(0.25)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.w)),
          backgroundColor: AppPalette.lightColorScheme.primary,
          foregroundColor: AppPalette.lightColorScheme.onPrimary,
          splashFactory: InkRipple.splashFactory,
          elevation: 0,
          textStyle: TextStyle(
            fontFamily: ThemeManager.kFontFamily,
            color: AppPalette.kWhite,
            fontSize: 16.w,
            fontWeight: FontWeight.w500,
          ),
          padding: EdgeInsets.symmetric(vertical: 18.w),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.w),
          ),
          side: const BorderSide(
            color: AppPalette.kOutlineButtonColor,
          ),
          backgroundColor: AppPalette.kWhite,
          foregroundColor: AppPalette.kOutlineButtonForegroundColor,
          splashFactory: InkRipple.splashFactory,
          elevation: 0,
          textStyle: TextStyle(
            fontFamily: ThemeManager.kFontFamily,
            color: AppPalette.kBlack,
            fontSize: 16.w,
            fontWeight: FontWeight.w500,
          ),
          padding: EdgeInsets.symmetric(vertical: 18.w),
        ),
      ),

      dividerTheme: DividerThemeData(
        color: const Color(0xFFF2BB21),
        thickness: 2.w,
      ),
      splashColor: Colors.grey.shade200,
      textTheme: TextTheme(
        displayLarge: const TextStyle(),
        displayMedium: const TextStyle(),
        displaySmall: const TextStyle(),
        headlineLarge: TextStyle(
          fontFamily: ThemeManager.kFontFamily,
          color: AppPalette.lightColorScheme.onBackground,
          fontSize: 24.w,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          fontFamily: ThemeManager.kFontFamily,
          color: AppPalette.lightColorScheme.onBackground,
          fontSize: 20.w,
          fontWeight: FontWeight.w700,
        ),
        // headlineSmall: GoogleFonts.inter(
        //   color: AppPalette.lightColorScheme.primary,
        //   fontSize: 24,
        //   fontWeight: FontWeight.bold,
        // ),
        titleLarge: TextStyle(
          fontFamily: ThemeManager.kFontFamily,
          color: AppPalette.lightColorScheme.onBackground,
          fontSize: 16.w,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          fontFamily: ThemeManager.kFontFamily,
          color: AppPalette.lightColorScheme.onBackground,
          fontSize: 14.w,
          fontWeight: FontWeight.w700,
        ),
        // titleSmall: GoogleFonts.inter(
        //   color: AppPalette.kTextColorLight,
        //   fontSize: 14,
        //   fontWeight: FontWeight.bold,
        // ),
        bodyLarge: TextStyle(
          fontFamily: ThemeManager.kFontFamily,
          color: AppPalette.kBodyColor,
          fontSize: 16.w,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontFamily: ThemeManager.kFontFamily,
          fontSize: 14.w,
          color: AppPalette.kBodyColor,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: 12.w,
          color: AppPalette.kBodyTextColorLight,
        ),
        labelLarge: const TextStyle(),
        labelMedium: const TextStyle(),
        labelSmall: const TextStyle(),
      ),

      /// for text form with border
      // inputDecorationTheme: InputDecorationTheme(
      //   suffixIconColor: Colors.grey.shade400,
      //   contentPadding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 24.w),
      //   hintStyle: TextStyle(
      //     color: AppPalette.kHintTextLight,
      //     fontSize: 14.w,
      //     fontFamily: ThemeManager.kFontFamily,
      //     fontWeight: FontWeight.normal,
      //   ),
      //   errorBorder: kErrorInputBorder,
      //   focusedErrorBorder: kFocusedErrorInputBorder,
      //   focusedBorder: kFocusedInputBorder,
      //   disabledBorder: kDisabledInputBorder,
      //   enabledBorder: kEnabledInputBorder,
      //border: kDefaultInputBorder,
      // ),

      /// text form field without border

      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: Colors.grey.shade400,
        filled: true,
        fillColor: AppPalette.kFormFieldFillColor,
        errorMaxLines: 2,
        contentPadding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 24.w),
        hintStyle: TextStyle(
          color: AppPalette.kHintTextLight,
          fontSize: 16.w,
          fontFamily: ThemeManager.kFontFamily,
          fontWeight: FontWeight.w400,
        ),
        errorBorder: kOutlineInputWithoutBorder,
        focusedErrorBorder: kOutlineInputWithoutBorder,
        focusedBorder: kOutlineInputWithoutBorder,
        disabledBorder: kOutlineInputWithoutBorder,
        enabledBorder: kOutlineInputWithoutBorder,
        border: kOutlineInputWithoutBorder,
      ),

      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all<Color>(
            AppPalette.lightColorScheme.primary),
      ),
      checkboxTheme: CheckboxThemeData(
        overlayColor: MaterialStateProperty.all<Color>(
            AppPalette.lightColorScheme.primary.withOpacity(0.25)),
        checkColor: MaterialStateProperty.all<Color>(Colors.white),
        fillColor: MaterialStateProperty.all<Color>(
            AppPalette.lightColorScheme.primary),
      ),
    );

// final ThemeData myTheme = ThemeData(
//   primarySwatch: Colors.blue,
//   brightness: Brightness.light,
//   primaryColor: Color( 0xff2196f3 ),
//   primaryColorBrightness: Brightness.dark,
//   primaryColorLight: Color( 0xffbbdefb ),
//   primaryColorDark: Color( 0xff1976d2 ),
//   accentColor: Color( 0xff2196f3 ),
//   accentColorBrightness: Brightness.dark,
//   canvasColor: Color( 0xfffafafa ),
//   scaffoldBackgroundColor: Color( 0xfffafafa ),
//   bottomAppBarColor: Color( 0xffffffff ),
//   cardColor: Color( 0xffffffff ),
//   dividerColor: Color( 0x1f000000 ),
//   highlightColor: Color( 0x66bcbcbc ),
//   splashColor: Color( 0x66c8c8c8 ),
//   selectedRowColor: Color( 0xfff5f5f5 ),
//   unselectedWidgetColor: Color( 0x8a000000 ),
//   disabledColor: Color( 0x61000000 ),
//   buttonColor: Color( 0xffe0e0e0 ),
//   toggleableActiveColor: Color( 0xff1e88e5 ),
//   secondaryHeaderColor: Color( 0xffe3f2fd ),
//   textSelectionColor: Color( 0xff90caf9 ),
//   cursorColor: Color( 0xff4285f4 ),
//   textSelectionHandleColor: Color( 0xff64b5f6 ),
//   backgroundColor: Color( 0xff90caf9 ),
//   dialogBackgroundColor: Color( 0xffffffff ),
//   indicatorColor: Color( 0xff2196f3 ),
//   hintColor: Color( 0x8a000000 ),
//   errorColor: Color( 0xffd32f2f ),
//   buttonTheme: ButtonThemeData(
//     textTheme: ButtonTextTheme.normal,
//     minWidth: 88,
//     height: 36,
//     padding: EdgeInsets.only(top:0,bottom:0,left:16, right:16),
//     shape:     RoundedRectangleBorder(
//       side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
//       borderRadius: BorderRadius.all(Radius.circular(2.0)),
//     )
//     ,
//     alignedDropdown: false ,
//     buttonColor: Color( 0xffe0e0e0 ),
//     disabledColor: Color( 0x61000000 ),
//     highlightColor: Color( 0x29000000 ),
//     splashColor: Color( 0x1f000000 ),
//     focusColor: Color( 0x1f000000 ),
//     hoverColor: Color( 0x0a000000 ),
//     colorScheme: ColorScheme(
//       primary: Color( 0xff2196f3 ),
//       primaryVariant: Color( 0xff1976d2 ),
//       secondary: Color( 0xff2196f3 ),
//       secondaryVariant: Color( 0xff1976d2 ),
//       surface: Color( 0xffffffff ),
//       background: Color( 0xff90caf9 ),
//       error: Color( 0xffd32f2f ),
//       onPrimary: Color( 0xffffffff ),
//       onSecondary: Color( 0xffffffff ),
//       onSurface: Color( 0xff000000 ),
//       onBackground: Color( 0xffffffff ),
//       onError: Color( 0xffffffff ),
//       brightness: Brightness.light,
//     ),
//   ),
//   textTheme: TextTheme(
//     display4: TextStyle(
//       color: Color( 0x8a000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     display3: TextStyle(
//       color: Color( 0x8a000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     display2: TextStyle(
//       color: Color( 0x8a000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     display1: TextStyle(
//       color: Color( 0x8a000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     headline: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     title: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     subhead: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     body2: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     body1: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     caption: TextStyle(
//       color: Color( 0x8a000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     button: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     subtitle: TextStyle(
//       color: Color( 0xff000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     overline: TextStyle(
//       color: Color( 0xff000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//   ),
//   primaryTextTheme: TextTheme(
//     display4: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     display3: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     display2: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     display1: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     headline: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     title: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     subhead: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     body2: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     body1: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     caption: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     button: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     subtitle: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     overline: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//   ),
//   accentTextTheme: TextTheme(
//     display4: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     display3: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     display2: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     display1: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     headline: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     title: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     subhead: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     body2: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     body1: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     caption: TextStyle(
//       color: Color( 0xb3ffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     button: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     subtitle: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     overline: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//   ),
//   inputDecorationTheme:   InputDecorationTheme(
//     labelStyle: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     helperStyle: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     hintStyle: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     errorStyle: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     errorMaxLines: null,
//     hasFloatingPlaceholder: true,
//     isDense: false,
//     contentPadding: EdgeInsets.only(top:12,bottom:12,left:0, right:0),
//     isCollapsed : false,
//     prefixStyle: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     suffixStyle: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     counterStyle: TextStyle(
//       color: Color( 0xdd000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     filled: false,
//     fillColor: Color( 0x00000000 ),
//     errorBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
//       borderRadius: BorderRadius.all(Radius.circular(4.0)),
//     ),
//     focusedBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
//       borderRadius: BorderRadius.all(Radius.circular(4.0)),
//     ),
//     focusedErrorBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
//       borderRadius: BorderRadius.all(Radius.circular(4.0)),
//     ),
//     disabledBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
//       borderRadius: BorderRadius.all(Radius.circular(4.0)),
//     ),
//     enabledBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
//       borderRadius: BorderRadius.all(Radius.circular(4.0)),
//     ),
//     border: UnderlineInputBorder(
//       borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
//       borderRadius: BorderRadius.all(Radius.circular(4.0)),
//     ),
//   ),
//   iconTheme: IconThemeData(
//     color: Color( 0xdd000000 ),
//     opacity: 1,
//     size: 24,
//   ),
//   primaryIconTheme: IconThemeData(
//     color: Color( 0xffffffff ),
//     opacity: 1,
//     size: 24,
//   ),
//   accentIconTheme: IconThemeData(
//     color: Color( 0xffffffff ),
//     opacity: 1,
//     size: 24,
//   ),
//   sliderTheme: SliderThemeData(
//     activeTrackColor: null,
//     inactiveTrackColor: null,
//     disabledActiveTrackColor: null,
//     disabledInactiveTrackColor: null,
//     activeTickMarkColor: null,
//     inactiveTickMarkColor: null,
//     disabledActiveTickMarkColor: null,
//     disabledInactiveTickMarkColor: null,
//     thumbColor: null,
//     disabledThumbColor: null,
//     thumbShape: null(),
//     overlayColor: null,
//     valueIndicatorColor: null,
//     valueIndicatorShape: null(),
//     showValueIndicator: null,
//     valueIndicatorTextStyle: TextStyle(
//       color: Color( 0xffffffff ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//   ),
//   tabBarTheme: TabBarTheme(
//     indicatorSize: TabBarIndicatorSize.tab,
//     labelColor: Color( 0xffffffff ),
//     unselectedLabelColor: Color( 0xb2ffffff ),
//   ),
//   chipTheme: ChipThemeData(
//     backgroundColor: Color( 0x1f000000 ),
//     brightness: Brightness.light,
//     deleteIconColor: Color( 0xde000000 ),
//     disabledColor: Color( 0x0c000000 ),
//     labelPadding: EdgeInsets.only(top:0,bottom:0,left:8, right:8),
//     labelStyle: TextStyle(
//       color: Color( 0xde000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     padding: EdgeInsets.only(top:4,bottom:4,left:4, right:4),
//     secondaryLabelStyle: TextStyle(
//       color: Color( 0x3d000000 ),
//       fontSize: null,
//       fontWeight: FontWeight.w400,
//       fontStyle: FontStyle.normal,
//     ),
//     secondarySelectedColor: Color( 0x3d2196f3 ),
//     selectedColor: Color( 0x3d000000 ),
//     shape: StadiumBorder( side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ) ),
//   ),
//   dialogTheme: DialogTheme(
//       shape:     RoundedRectangleBorder(
//         side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
//         borderRadius: BorderRadius.all(Radius.circular(0.0)),
//       )
//
//   ),
// );
