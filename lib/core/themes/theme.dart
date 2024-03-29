import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/input_borders.dart';
import '../palettes/palettes.dart';

part 'theme_dark.dart';
part 'theme_light.dart';

abstract class ThemeManager {
  static const String kFontFamily = 'inter';

  static get light => _lightTheme;
  static get dark => _darkTheme;
}
