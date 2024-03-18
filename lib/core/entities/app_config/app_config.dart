import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import '/features/auth/domain/entities/login_detail/login_detail.dart';

import '../../../features/auth/data/models/user/user_token.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

@freezed
class AppConfig with _$AppConfig {
  factory AppConfig({
    @Default(false) bool isWelcomeScreenShown,
    @Default('en') String appLocaleLanguage,
    UserTokenModel? userToken,
    LoginDetail? savedCredentials,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);
}
