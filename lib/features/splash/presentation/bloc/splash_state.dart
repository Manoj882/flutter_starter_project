part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  factory SplashState.initial() = _Initial;
  factory SplashState.loading() = _Loading;
  factory SplashState.loaded() = _Loaded;
  factory SplashState.loadOnBoard() = _LoadOnBoard;
  factory SplashState.loadFailure() = _LoadFailure;
}
