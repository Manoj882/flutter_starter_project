part of 'locale_bloc.dart';

abstract class LocaleEvent extends Equatable {
  const LocaleEvent();

  @override
  List<Object?> get props => [];
}

class ChangeLocale extends LocaleEvent {
  final Locale? selectedLocale;

  const ChangeLocale({this.selectedLocale});

  @override
  List<Object?> get props => [selectedLocale];
}
