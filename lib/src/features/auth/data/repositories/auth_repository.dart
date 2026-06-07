import 'package:pump_iq/src/features/auth/data/models/auth_response_model.dart';
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

  FutureEither<AppUser> login({required String pin}) async {
    final deviceIdResult = await _resolveDeviceId();
    return await deviceIdResult.fold(
      (failure) async => left<Failure, AppUser>(failure),
      (deviceId) async {
        AppLogger.info('Logging in with device ID: $deviceId');
        final result = await _authService.login(pin: pin, deviceId: deviceId);

        return result.flatMap((userData) {
          if (userData == null) {
            return left(
              const ServerFailure('Login failed: User record not found'),
            );
          }

          return right(_mapAppUserFromAuthPayload(userData));
        });
      },
    );
  }

  FutureEither<void> logout() {
    return _authService.logout();
  }

  String? getStationId() => _authService.getStationId();

  FutureEither<bool> checkDeviceRegistration() async {
    final deviceIdResult = await _resolveDeviceId();
    return deviceIdResult.fold(
      left,
      (deviceId) => _authService.checkDeviceRegistration(deviceId: deviceId),
    );
  }

  FutureEither<String> _resolveDeviceId() async {
    final payloadResult =
        await DeviceInfoService.instance.getRegisterDevicePayload();

    return payloadResult.fold(
      left,
      (payload) {
        final deviceId = payload['id'] as String?;
        if (deviceId == null || deviceId.isEmpty) {
          return left(const ServerFailure('Device id unavailable'));
        }
        return right(deviceId);
      },
    );
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
    return AuthResponse.fromPayload(payload)
        .user
        .toAppUser(cachedStationName: _authService.getStationName());
  }
}
