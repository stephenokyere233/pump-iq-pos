import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../imports/core_imports.dart';
import 'auth_interceptor.dart';

class AppConfig {
  AppConfig._();
  static late final Dio dio;

  static String get baseUrl => _getBaseUrl();

  static Future<void> init() async {
    dio = Dio(
      BaseOptions(
        baseUrl: _getBaseUrl(),
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.add(AuthInterceptor(dio));

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final uri = options.uri;
          AppLogger.info(
            '[DIO] REQUEST[${options.method}] => ${uri.path}${uri.hasQuery ? '?${uri.query}' : ''}',
          );
          return handler.next(options);
        },
        onResponse: (response, handler) {
          AppLogger.info(
              '[DIO] RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          final status = e.response?.statusCode;
          final path = e.requestOptions.path;
          final body = e.response?.data;
          AppLogger.error(
            '[DIO] ERROR[$status] => PATH: $path'
            '${body != null ? ' body: $body' : ''}',
            e,
            e.stackTrace,
          );
          return handler.next(e);
        },
      ),
    );
  }

  static String _getBaseUrl() {
    return dotenv.get('API_BASE_URL',
        fallback: 'https://pumpiq.logiwave.xyz/api');
  }
}
