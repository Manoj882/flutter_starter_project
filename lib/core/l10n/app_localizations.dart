import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class L10n {
  static final allLocale = [
    const Locale('en'),
    const Locale('ne'),
  ];

  static String getLocaleName(BuildContext context, String code) {
    switch (code) {
      case 'en':
        return AppLocalizations.of(context)!.english;

      case 'ne':
        return AppLocalizations.of(context)!.nepali;

      default:
        return AppLocalizations.of(context)!.english;
    }
  }
}
