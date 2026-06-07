import 'dart:async';

import 'package:dio/dio.dart';
import 'package:pump_iq/src/features/auth/data/models/auth_response_model.dart';
import 'package:pump_iq/src/features/auth/data/models/pump_info_model.dart';

import '../config/app_config.dart';
import '../utils/utils.dart';
import 'hive_service.dart';
import 'secure_storage_service.dart';

class AuthService {
  AuthService._();
  static final AuthService instance = AuthService._();

  static const _accessTokenKey = 'access_token';
  static const _refreshTokenKey = 'refresh_token';
  static const _deviceRegisteredKey = 'device_registered';
  static const _deviceIdKey = 'device_id';
  static const _stationIdKey = 'station_id';
  static const _stationNameKey = 'station_name';
  static const _pumpInfoKey = 'pump_info';
  static const _registeredStationIdKey = 'registered_station_id';

  Dio get _dio => AppConfig.dio;
  final SecureStorageService _storage = SecureStorageService.instance;

  final StreamController<Map<String, dynamic>?> _authStateController =
      StreamController<Map<String, dynamic>?>.broadcast();

  Stream<Map<String, dynamic>?> get authStateChanges =>
      _authStateController.stream;

  FutureEither<Map<String, dynamic>?> login({
    required String pin,
    required String deviceId,
  }) async {
    return runTask(() async {
      final response = await _dio
          .post<Map<String, dynamic>>('/auth/pump-attendant/login', data: {
        'pin': pin,
        'device_id': deviceId,
      });
      final data = response.data!;

      final accessToken = data['accessToken'] as String?;
      final refreshToken = data['refreshToken'] as String?;
      if (accessToken != null) {
        await _storage.write(_accessTokenKey, accessToken);
        _dio.options.headers['Authorization'] = 'Bearer $accessToken';
      }
      if (refreshToken != null) {
        await _storage.write(_refreshTokenKey, refreshToken);
      }

      _persistStationFromAuthData(data);
      _authStateController.add(data);
      return data;
    }, requiresNetwork: true);
  }

  FutureEither<void> logout() async {
    return runTask(() async {
      final tokenResult = await _storage.read(_refreshTokenKey);
      final refreshToken = tokenResult.getOrElse((_) => null);

      await _dio.post<void>('/auth/logout', data: {
        'refreshToken': refreshToken ?? '',
      });

      await _clearLocalAuth();
    }, requiresNetwork: true);
  }

  String? getStationId() {
    return HiveService.instance.get<String>(_stationIdKey);
  }

  String? getStationName() {
    return HiveService.instance.get<String>(_stationNameKey);
  }

  List<PumpInfo> getPumpInfoList() {
    final raw = HiveService.instance.get<List<dynamic>>(_pumpInfoKey);
    if (raw == null || raw.isEmpty) return const [];
    return raw
        .whereType<Map<dynamic, dynamic>>()
        .map((item) => PumpInfo.fromJson(Map<String, dynamic>.from(item)))
        .where((pump) => pump.id.isNotEmpty)
        .toList();
  }

  FutureEither<bool> checkDeviceRegistration({required String deviceId}) async {
    return runTask(() async {
      final stationId = getStationId();
      if (stationId == null) {
        return false;
      }

      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/device-check',
        data: {
          'id': deviceId,
          'station_id': stationId,
        },
      );
      final data = response.data!;
      final registered = data['registered'] as bool? ?? false;

      await _setDeviceRegistrationCache(
        registered: registered,
        stationId: stationId,
        serverDeviceId: (data['device_id'] ?? data['deviceId'])?.toString(),
      );

      return registered;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> registerDevice({
    required Map<String, dynamic> payload,
  }) async {
    return runTask(() async {
      final stationId = getStationId();
      if (stationId == null) {
        throw Exception('Station not assigned to this user');
      }

      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/register-device',
        data: {
          ...payload,
          'station_id': stationId,
        },
      );
      final data = response.data!;

      await _setDeviceRegistrationCache(
        registered: true,
        stationId: stationId,
        serverDeviceId: (data['device_id'] ?? data['deviceId'])?.toString(),
      );

      return data;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>?> getCurrentUser() async {
    return runTask(() async {
      final response = await _dio.get<Map<String, dynamic>>('/auth/me');
      final data = response.data;
      if (data != null) {
        _persistStationFromAuthData(data);
      }
      return data;
    });
  }

  Future<void> _setDeviceRegistrationCache({
    required bool registered,
    required String stationId,
    String? serverDeviceId,
  }) async {
    await HiveService.instance.put(_deviceRegisteredKey, registered);
    if (registered) {
      await HiveService.instance.put(_registeredStationIdKey, stationId);
      if (serverDeviceId != null) {
        await HiveService.instance.put(_deviceIdKey, serverDeviceId);
      }
    } else {
      await HiveService.instance.delete(_registeredStationIdKey);
      await HiveService.instance.delete(_deviceIdKey);
    }
  }

  void _persistStationFromAuthData(Map<String, dynamic> data) {
    final user = AuthResponse.fromPayload(data).user;
    final stationId = user.resolvedStationId;
    if (stationId != null) {
      HiveService.instance.put(_stationIdKey, stationId);
    }

    final stationName = user.resolvedStationName;
    if (stationName != null) {
      HiveService.instance.put(_stationNameKey, stationName);
    }

    if (user.pumpInfo.isNotEmpty) {
      HiveService.instance.put(
        _pumpInfoKey,
        user.pumpInfo.map((pump) => pump.toJson()).toList(),
      );
    } else {
      HiveService.instance.delete(_pumpInfoKey);
    }
  }

  /// Clears all local auth state without calling the logout endpoint.
  /// Used by the token-refresh interceptor when a session is irrecoverable.
  Future<void> clearLocalSession() async {
    await _clearLocalAuth();
  }

  Future<void> _clearLocalAuth() async {
    await _storage.delete(_accessTokenKey);
    await _storage.delete(_refreshTokenKey);
    _dio.options.headers.remove('Authorization');
    await HiveService.instance.delete(_stationIdKey);
    await HiveService.instance.delete(_stationNameKey);
    await HiveService.instance.delete(_pumpInfoKey);
    _authStateController.add(null);
  }

  /// Restores the auth header from stored token on app start.
  Future<void> restoreAuthHeader() async {
    final result = await _storage.read(_accessTokenKey);
    result.fold(
      (_) {},
      (token) {
        if (token != null) {
          _dio.options.headers['Authorization'] = 'Bearer $token';
        }
      },
    );
  }

  void dispose() {
    _authStateController.close();
  }
}
