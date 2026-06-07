import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_station_model.dart';
import 'pump_info_model.dart';
import 'user_model.dart';

part 'auth_response_model.freezed.dart';

/// Pump attendant login response (`POST /auth/pump-attendant/login`).
@Freezed(fromJson: false, toJson: false)
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    String? accessToken,
    String? refreshToken,
    String? expiresAt,
    required AuthUserPayload user,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    final userJson = json['user'];
    if (userJson is! Map<String, dynamic>) {
      throw const FormatException('Auth response missing user object');
    }

    return AuthResponse(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresAt: json['expiresAt'] as String?,
      user: AuthUserPayload.fromJson(userJson),
    );
  }

  /// Login payload, `/auth/me`, or a bare user object.
  factory AuthResponse.fromPayload(Map<String, dynamic> payload) {
    if (payload['user'] is Map<String, dynamic>) {
      return AuthResponse.fromJson(payload);
    }
    return AuthResponse(user: AuthUserPayload.fromJson(payload));
  }
}

/// User object inside auth responses (`user` key).
@Freezed(fromJson: false, toJson: false)
abstract class AuthUserPayload with _$AuthUserPayload {
  const factory AuthUserPayload({
    required String userId,
    required String phone,
    String? username,
    String? userRole,
    String? name,
    String? email,
    String? country,
    String? stationId,
    AuthStation? station,
    @Default([]) List<PumpInfo> pumpInfo,
  }) = _AuthUserPayload;

  factory AuthUserPayload.fromJson(Map<String, dynamic> json) {
    final stationJson = json['station'];
    return AuthUserPayload(
      userId: (json['userId'] ?? json['id'])?.toString() ?? '',
      username: json['username'] as String?,
      phone: json['phone'] as String? ?? '',
      userRole: (json['userRole'] ?? json['role']) as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
      stationId: json['stationId']?.toString(),
      station: stationJson is Map<String, dynamic>
          ? AuthStation.fromJson(stationJson)
          : null,
      pumpInfo: parsePumpInfoList(json['pumpInfo']),
    );
  }

  const AuthUserPayload._();

  String? get resolvedStationId {
    final id = stationId?.trim();
    if (id != null && id.isNotEmpty) return id;
    final nestedId = station?.id.trim();
    if (nestedId != null && nestedId.isNotEmpty) return nestedId;
    return null;
  }

  String? get resolvedStationName {
    final name = station?.stationName.trim();
    if (name != null && name.isNotEmpty) return name;
    return null;
  }

  AppUser toAppUser({String? cachedStationName}) {
    return AppUser(
      id: userId,
      email: email ?? '',
      name: name,
      phone: phone,
      stationId: resolvedStationId,
      stationName: resolvedStationName ?? cachedStationName,
      role: userRole,
    );
  }
}
