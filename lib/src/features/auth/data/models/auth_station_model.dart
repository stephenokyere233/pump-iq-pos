import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_station_model.freezed.dart';
part 'auth_station_model.g.dart';

/// Station object nested under `user.station` in auth responses.
@freezed
abstract class AuthStation with _$AuthStation {
  const factory AuthStation({
    @Default('') String id,
    @Default('') String stationName,
    String? stationCode,
    String? territoryName,
    String? companyName,
  }) = _AuthStation;

  factory AuthStation.fromJson(Map<String, dynamic> json) =>
      _$AuthStationFromJson(json);
}
