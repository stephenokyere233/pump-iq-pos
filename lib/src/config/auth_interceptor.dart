import 'package:dio/dio.dart';

import '../services/auth_service.dart';
import '../services/secure_storage_service.dart';
import 'api_paths.dart';

/// Intercepts 401 responses and attempts a single token refresh before
/// failing the request. Uses [QueuedInterceptor] so concurrent 401s
/// share a single refresh cycle instead of racing.
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor(this._dio);

  final Dio _dio;
  static const _refreshTokenKey = 'refresh_token';
  static const _accessTokenKey = 'access_token';

  final SecureStorageService _storage = SecureStorageService.instance;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401) {
      return handler.next(err);
    }

    final original = err.requestOptions;
    if (_isAuthPath(original.path)) {
      return handler.next(err);
    }

    try {
      final tokenResult = await _storage.read(_refreshTokenKey);
      final refreshToken = tokenResult.getOrElse((_) => null);

      if (refreshToken == null || refreshToken.isEmpty) {
        await AuthService.instance.clearLocalSession();
        return handler.next(err);
      }

      final refreshResponse = await _dio.post<Map<String, dynamic>>(
        ApiPaths.usersTokenRefresh,
        data: {'refresh': refreshToken},
      );

      final data = refreshResponse.data;
      final newAccessToken = data?['access'] as String?;

      if (newAccessToken == null) {
        await AuthService.instance.clearLocalSession();
        return handler.next(err);
      }

      await _storage.write(_accessTokenKey, newAccessToken);
      _dio.options.headers['Authorization'] = 'Bearer $newAccessToken';

      final newRefreshToken = data?['refresh'] as String?;
      if (newRefreshToken != null) {
        await _storage.write(_refreshTokenKey, newRefreshToken);
      }

      original.headers['Authorization'] = 'Bearer $newAccessToken';
      final retryResponse = await _dio.fetch<dynamic>(original);
      return handler.resolve(retryResponse);
    } on DioException {
      await AuthService.instance.clearLocalSession();
      return handler.next(err);
    }
  }

  bool _isAuthPath(String path) {
    return path.contains(ApiPaths.usersTokenRefresh) ||
        path.contains(ApiPaths.staffTokenPin);
  }
}
