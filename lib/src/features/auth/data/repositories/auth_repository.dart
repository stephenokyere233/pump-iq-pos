import 'package:pump_iq/src/features/auth/data/models/auth_response_model.dart';
import 'package:pump_iq/src/features/auth/data/models/station_attendant_pin_login_model.dart';
import 'package:pump_iq/src/features/auth/data/models/user_model.dart';
import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

class AuthRepository {
  final AuthService _authService = AuthService.instance;

  Stream<AppUser?> get onAuthStateChanged {
    return _authService.authStateChanges.map((userData) {
      if (userData == null) return null;
      return _mapAppUserFromAuthPayload(userData);
    });
  }

  String? getLastLoginStationId() => _authService.getLastLoginStationId();

  FutureEither<AppUser> login({
    required String stationId,
    required String pin,
  }) async {
    final result = await _authService.loginWithPin(
      request: StationAttendantPinLoginRequest(
        stationId: stationId,
        pin: pin.replaceAll(RegExp(r'\s'), ''),
      ),
    );

    return result.flatMap((userData) {
      return right(_mapAppUserFromAuthPayload(userData));
    });
  }

  FutureEither<void> logout() {
    return _authService.logout();
  }

  String? getStationId() => _authService.getStationId();

  String? getPumpAttendantId() => _authService.getPumpAttendantId();

  String? getCompanyId() => _authService.getCompanyId();

  FutureEither<bool> checkDeviceRegistration() async {
    final deviceIdResult = await _resolveDeviceId();
    return deviceIdResult.fold(
      left,
      (deviceId) => _authService.checkDeviceRegistration(deviceId: deviceId),
    );
  }

  FutureEither<String> _resolveDeviceId() async {
    final cachedDeviceId = _authService.getCachedDeviceId();
    if (cachedDeviceId != null && cachedDeviceId.isNotEmpty) {
      AppLogger.info('Device id (cached): $cachedDeviceId');
      return right(cachedDeviceId);
    }

    final payloadResult = await DeviceInfoService.instance
        .getRegisterDevicePayload();

    return payloadResult.fold(left, (payload) {
      final deviceId = payload['id'] as String?;
      if (deviceId == null || deviceId.isEmpty) {
        return left(const ServerFailure('Device id unavailable'));
      }
      AppLogger.info('Device id (hardware): $deviceId');
      return right(deviceId);
    });
  }

  FutureEither<void> registerDevice({
    required Map<String, dynamic> payload,
  }) async {
    final result = await _authService.registerDevice(payload: payload);
    return result.map((_) {});
  }

  FutureEither<AppUser?> checkAuthState() async {
    final result = await _authService.getCurrentUser();

    return result.map((userData) {
      if (userData == null) return null;
      return _mapAppUserFromAuthPayload(userData);
    });
  }

  AppUser _mapAppUserFromAuthPayload(Map<String, dynamic> payload) {
    final auth = AuthResponse.fromPayload(payload);
    final roles = parseAuthRoleMaps(payload);
    return auth.user.toAppUser(
      cachedStationName: _authService.getStationName(),
      cachedStationId: auth.stationId ?? _authService.getStationId(),
      pumpAttendantId:
          auth.pumpAttendantId ?? _authService.getPumpAttendantId(),
      companyId:
          resolveCompanyIdFromRoles(roles) ?? _authService.getCompanyId(),
      role: resolveRoleNameFromRoles(roles),
    );
  }
}
