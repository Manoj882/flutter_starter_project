import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/core/config_reader/app_config_reader.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AppConfigReader appConfigReader;
  SplashBloc({required this.appConfigReader}) : super(SplashState.initial()) {
    on<_DisplaySplash>(_onDisplaySplash);
  }

  void _onDisplaySplash(_DisplaySplash event, Emitter<SplashState> emit) async {
    emit(SplashState.loading());

    final appConfig = await appConfigReader.getConfig();

    Future.delayed(const Duration(seconds: 3));

    emit(SplashState.loadOnBoard());

    // if (appConfig.isWelcomeScreenShown != true) {
    //   await appConfigReader.saveConfig(
    //     appConfig.copyWith(isWelcomeScreenShown: true),
    //   );
    //   emit(SplashState.loadOnBoard());
    // } else {
    //   emit(SplashState.loaded());
    // }
  }
}
