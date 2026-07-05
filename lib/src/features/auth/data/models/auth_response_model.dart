import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/json_resolver.dart';
import 'auth_station_model.dart';
import 'pump_info_model.dart';
import 'user_model.dart';

part 'auth_response_model.freezed.dart';

List<Map<String, dynamic>> parseAuthRoleMaps(Map<String, dynamic> json) {
  return (json['roles'] as List?)
          ?.whereType<Map<String, dynamic>>()
          .map((role) => Map<String, dynamic>.from(role))
          .toList() ??
      const [];
}

List<String> parseAuthPermissions(Map<String, dynamic> json) {
  return (json['permissions'] as List?)
          ?.map((permission) => permission.toString())
          .toList() ??
      const [];
}

String? resolveCompanyIdFromRoles(List<Map<String, dynamic>> roles) {
  for (final role in roles) {
    final companyId = role['company_id']?.toString().trim();
    if (companyId != null && companyId.isNotEmpty) return companyId;

    final nestedCompanyId = resolveApiReferenceId(role['company']);
    if (nestedCompanyId != null && nestedCompanyId.isNotEmpty) {
      return nestedCompanyId;
    }
  }
  return null;
}

String? resolveRoleNameFromRoles(List<Map<String, dynamic>> roles) {
  for (final role in roles) {
    final name = role['name']?.toString().trim();
    if (name != null && name.isNotEmpty) return name;
  }
  return null;
}

/// PIN login response (`POST /v1/staff/token/pin/`).
@Freezed(fromJson: false, toJson: false)
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    String? accessToken,
    String? refreshToken,
    String? stationId,
    String? pumpAttendantId,
    required AuthUserPayload user,
  }) = _AuthResponse;

  factory AuthResponse.fromPinLogin(Map<String, dynamic> json) {
    final userJson = json['user'];
    if (userJson is! Map<String, dynamic>) {
      throw const FormatException('Auth response missing user object');
    }

    return AuthResponse(
      accessToken: json['access'] as String?,
      refreshToken: json['refresh'] as String?,
      stationId: json['station_id']?.toString(),
      pumpAttendantId: json['pump_attendant_id']?.toString(),
      user: AuthUserPayload.fromJson(userJson),
    );
  }

  factory AuthResponse.fromPayload(Map<String, dynamic> payload) {
    if (payload['user'] is Map<String, dynamic>) {
      return AuthResponse.fromPinLogin(payload);
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
      phone: (json['phone'] ?? json['phone_number'])?.toString() ?? '',
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

  AppUser toAppUser({
    String? cachedStationName,
    String? cachedStationId,
    String? pumpAttendantId,
    String? companyId,
    String? role,
  }) {
    return AppUser(
      id: userId,
      email: email ?? '',
      name: name,
      phone: phone,
      stationId: cachedStationId ?? resolvedStationId,
      stationName: resolvedStationName ?? cachedStationName,
      role: role ?? userRole,
      pumpAttendantId: pumpAttendantId,
      companyId: companyId,
    );
  }
}
