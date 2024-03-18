part of 'locale_bloc.dart';

class LocaleState extends Equatable {
  const LocaleState({
    Locale? locale,
  }) : selectedLocale = locale;

  final Locale? selectedLocale;

  @override
  List<Object?> get props => [selectedLocale];

  LocaleState copyWith({Locale? selectedLanguage}) {
    return LocaleState(
      locale: selectedLanguage ?? selectedLocale,
    );
  }
}
