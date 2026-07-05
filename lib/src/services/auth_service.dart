import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pump_iq/src/features/auth/data/models/auth_response_model.dart';
import 'package:pump_iq/src/features/auth/data/models/pump_info_model.dart';
import 'package:pump_iq/src/features/auth/data/models/station_attendant_pin_login_model.dart';

import '../config/api_paths.dart';
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
  static const _pumpAttendantIdKey = 'pump_attendant_id';
  static const _companyIdKey = 'company_id';
  static const _pumpInfoKey = 'pump_info';
  static const _registeredStationIdKey = 'registered_station_id';
  static const _sessionUserKey = 'session_user';
  static const _lastLoginStationIdKey = 'last_login_station_id';

  Dio get _dio => AppConfig.dio;
  final SecureStorageService _storage = SecureStorageService.instance;

  final StreamController<Map<String, dynamic>?> _authStateController =
      StreamController<Map<String, dynamic>?>.broadcast();

  Stream<Map<String, dynamic>?> get authStateChanges =>
      _authStateController.stream;

  FutureEither<Map<String, dynamic>> loginWithPin({
    required StationAttendantPinLoginRequest request,
  }) async {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        ApiPaths.staffTokenPin,
        data: request.toJson(),
      );
      final data = response.data!;

      final accessToken = data['access'] as String?;
      final refreshToken = data['refresh'] as String?;
      if (accessToken != null) {
        await _storage.write(_accessTokenKey, accessToken);
        _dio.options.headers['Authorization'] = 'Bearer $accessToken';
      }
      if (refreshToken != null) {
        await _storage.write(_refreshTokenKey, refreshToken);
      }

      _persistSessionFromAuthData(data);
      await HiveService.instance.put(_lastLoginStationIdKey, request.stationId);
      _authStateController.add(data);
      return data;
    }, requiresNetwork: true);
  }

  FutureEither<void> logout() async {
    return runTask(() async {
      await _clearLocalAuth();
    });
  }

  String? getStationId() {
    return HiveService.instance.get<String>(_stationIdKey);
  }

  String? getLastLoginStationId() {
    return HiveService.instance.get<String>(_lastLoginStationIdKey);
  }

  String? getStationName() {
    return HiveService.instance.get<String>(_stationNameKey);
  }

  String? getPumpAttendantId() {
    return HiveService.instance.get<String>(_pumpAttendantIdKey);
  }

  String? getCompanyId() {
    final raw = HiveService.instance.get<String>(_companyIdKey);
    final resolved = resolveApiReferenceId(raw);
    if (resolved != null && raw != null && raw != resolved) {
      HiveService.instance.put(_companyIdKey, resolved);
    }
    return resolved;
  }

  /// Server-assigned device UUID after registration (used for device-check).
  String? getCachedDeviceId() {
    return HiveService.instance.get<String>(_deviceIdKey);
  }

  void setCompanyId(String companyId) {
    final resolved = resolveApiReferenceId(companyId);
    if (resolved == null || resolved.isEmpty) return;
    HiveService.instance.put(_companyIdKey, resolved);
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

      Map<String, dynamic> data;
      try {
        final response = await _dio.post<Map<String, dynamic>>(
          ApiPaths.authDeviceCheck,
          data: {'id': deviceId, 'station_id': stationId},
        );
        data = response.data!;
      } on DioException catch (e) {
        // API returns 404 with DeviceCheckResponse when the device is unknown.
        if (e.response?.statusCode == 404 &&
            e.response?.data is Map<String, dynamic>) {
          data = Map<String, dynamic>.from(e.response!.data as Map);
        } else {
          rethrow;
        }
      }

      final registered = data['registered'] as bool? ?? false;

      await _setDeviceRegistrationCache(
        registered: registered,
        stationId: stationId,
        serverDeviceId:
            (data['device'] as Map?)?['id']?.toString() ??
            (data['device_id'] ?? data['deviceId'])?.toString(),
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

      final requestBody = Map<String, dynamic>.from(payload)
        ..remove('id')
        ..['station_id'] = stationId;

      final response = await _dio.post<Map<String, dynamic>>(
        ApiPaths.authRegisterDevice,
        data: requestBody,
      );
      final data = response.data!;

      await _setDeviceRegistrationCache(
        registered: true,
        stationId: stationId,
        serverDeviceId: (data['id'] ?? data['device_id'] ?? data['deviceId'])
            ?.toString(),
      );

      return data;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>?> getCurrentUser() async {
    return runTask(() async {
      final raw = HiveService.instance.get<String>(_sessionUserKey);
      if (raw == null || raw.isEmpty) return null;
      return Map<String, dynamic>.from(jsonDecode(raw) as Map);
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

  void _persistSessionFromAuthData(Map<String, dynamic> data) {
    final auth = AuthResponse.fromPinLogin(data);
    final user = auth.user;
    final roles = parseAuthRoleMaps(data);

    final stationId = auth.stationId ?? user.resolvedStationId;
    if (stationId != null) {
      HiveService.instance.put(_stationIdKey, stationId);
    }

    final stationName = user.resolvedStationName;
    if (stationName != null) {
      HiveService.instance.put(_stationNameKey, stationName);
    }

    if (auth.pumpAttendantId != null) {
      HiveService.instance.put(_pumpAttendantIdKey, auth.pumpAttendantId!);
    }

    final companyId = resolveCompanyIdFromRoles(roles);
    if (companyId != null) {
      setCompanyId(companyId);
    }

    if (user.pumpInfo.isNotEmpty) {
      HiveService.instance.put(
        _pumpInfoKey,
        user.pumpInfo.map((pump) => pump.toJson()).toList(),
      );
    } else {
      HiveService.instance.delete(_pumpInfoKey);
    }

    HiveService.instance.put(_sessionUserKey, jsonEncode(data));
  }

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
    await HiveService.instance.delete(_pumpAttendantIdKey);
    await HiveService.instance.delete(_companyIdKey);
    await HiveService.instance.delete(_sessionUserKey);
    await HiveService.instance.delete(_deviceRegisteredKey);
    await HiveService.instance.delete(_registeredStationIdKey);
    await HiveService.instance.delete(_deviceIdKey);
    _authStateController.add(null);
  }

  Future<void> restoreAuthHeader() async {
    final result = await _storage.read(_accessTokenKey);
    result.fold((_) {}, (token) {
      if (token != null) {
        _dio.options.headers['Authorization'] = 'Bearer $token';
      }
    });
  }

  void dispose() {
    _authStateController.close();
  }
}
