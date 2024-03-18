import 'dart:io';
import 'package:dio/dio.dart';
import '/core/config_reader/app_config_reader.dart';
import '/core/config_reader/config_reader.dart';
import '/core/injections/injections.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: getIt<ConfigReader>().baseURL,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {
          'Accept': Headers.jsonContentType,
        },
      ),
    );

    dio.interceptors
        .add(QueuedInterceptorsWrapper(onRequest: (options, handler) async {
      final appConfig = await getIt<AppConfigReader>().getConfig();

      final userToken = appConfig.userToken;

      if (userToken != null && userToken.idToken.trim().isNotEmpty) {
        options.headers[HttpHeaders.authorizationHeader] =
            'Bearer ${appConfig.userToken?.idToken}';
      }
      handler.next(options);
    }));

    dio.interceptors.add(LogInterceptor(
      requestBody: false,
      requestHeader: false,
      responseBody: false,
      error: false,
      responseHeader: false,
    ));

    return dio;
  }
}
