import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/l10n/app_localizations.dart';

import '../../config_reader/app_config_reader.dart';
import '../../entities/app_config/app_config.dart';

part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final AppConfigReader appConfigReader;

  LocaleBloc({required this.appConfigReader}) : super(const LocaleState()) {
    on<ChangeLocale>(_onChangeLocale);
  }

  void _onChangeLocale(ChangeLocale event, Emitter<LocaleState> emit) async {
    AppConfig appConfig = await appConfigReader.getConfig();

    if (event.selectedLocale == null) {
      emit(state.copyWith(
        selectedLanguage: Locale(appConfig.appLocaleLanguage),
      ));
    } else {
      emit(
        state.copyWith(selectedLanguage: event.selectedLocale),
      );
      appConfig =
          AppConfig(appLocaleLanguage: event.selectedLocale!.languageCode);

      await appConfigReader.saveConfig(appConfig);
    }
  }
}
