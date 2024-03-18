import 'dart:convert';

import '/core/constants/secure_storage_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../entities/app_config/app_config.dart';

abstract class AppConfigReader {
  Future<AppConfig> getConfig();

  Future saveConfig(AppConfig config);
}

@LazySingleton(as: AppConfigReader)
class AppConfigReaderImpl extends AppConfigReader {
  final FlutterSecureStorage secureStorage;

  AppConfigReaderImpl({required this.secureStorage});

  @override
  Future<AppConfig> getConfig() async {
    final configStr =
        await secureStorage.read(key: SecureStorageKeys.appConfig);

    AppConfig config;

    if (configStr != null) {
      try {
        config = AppConfig.fromJson(jsonDecode(configStr));
      } catch (e) {
        config = AppConfig();
        await saveConfig(config);
      }
    } else {
      config = AppConfig();
      await saveConfig(config);
    }
    return config;
  }

  @override
  Future saveConfig(AppConfig config) async {
    await secureStorage.write(
      key: SecureStorageKeys.appConfig,
      value: jsonEncode(
        config.toJson(),
      ),
    );
  }
}
