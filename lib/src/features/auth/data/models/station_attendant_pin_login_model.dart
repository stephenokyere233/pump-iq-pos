import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_attendant_pin_login_model.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class StationAttendantPinLoginRequest
    with _$StationAttendantPinLoginRequest {
  const factory StationAttendantPinLoginRequest({
    required String stationId,
    String? stationPin,
    String? attendantPin,
    String? pin,
  }) = _StationAttendantPinLoginRequest;

  const StationAttendantPinLoginRequest._();

  Map<String, dynamic> toJson() => {
        'station_id': stationId,
        if (stationPin != null) 'station_pin': stationPin,
        if (attendantPin != null) 'attendant_pin': attendantPin,
        if (pin != null) 'pin': pin,
      };
}

@Freezed(fromJson: false, toJson: false)
abstract class StationAttendantPinLoginResponse
    with _$StationAttendantPinLoginResponse {
  const factory StationAttendantPinLoginResponse({
    required String access,
    required String refresh,
    required Map<String, dynamic> user,
    required String stationId,
    required String pumpAttendantId,
    @Default([]) List<dynamic> roles,
    @Default([]) List<String> permissions,
  }) = _StationAttendantPinLoginResponse;

  factory StationAttendantPinLoginResponse.fromJson(Map<String, dynamic> json) {
    return StationAttendantPinLoginResponse(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
      user: Map<String, dynamic>.from(json['user'] as Map),
      stationId: json['station_id'] as String,
      pumpAttendantId: json['pump_attendant_id'] as String,
      roles: (json['roles'] as List?) ?? const [],
      permissions: (json['permissions'] as List?)
              ?.map((e) => e.toString())
              .toList() ??
          const [],
    );
  }
}
