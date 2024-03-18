import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/l10n/app_localizations.dart';

import '../../blocs/locale/locale_bloc.dart';

class LocalePickerWidget extends StatelessWidget {
  const LocalePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (buildContext, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton(
            iconEnabledColor: Colors.black,
            value: state.selectedLocale,
            items: L10n.allLocale.map((locale) {
              final languageName =
                  L10n.getLocaleName(context, locale.languageCode);
              return DropdownMenuItem(
                value: locale,
                onTap: () async {
                  buildContext
                      .read<LocaleBloc>()
                      .add(ChangeLocale(selectedLocale: locale));
                },
                child: Center(
                  child: Text(
                    languageName,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        );
      },
    );
  }
}
