import 'package:freezed_annotation/freezed_annotation.dart';

part 'pump_info_model.freezed.dart';
part 'pump_info_model.g.dart';

/// Pump assigned to a pump attendant (`user.pumpInfo` in auth responses).
@freezed
abstract class PumpInfo with _$PumpInfo {
  const factory PumpInfo({
    @Default('') String id,
    @Default('') String pumpName,
    @Default('') String stationId,
    @Default('') String territoryId,
  }) = _PumpInfo;

  factory PumpInfo.fromJson(Map<String, dynamic> json) =>
      _$PumpInfoFromJson(json);

  const PumpInfo._();

  String get displayLabel =>
      pumpName.isNotEmpty ? 'Pump $pumpName' : 'Pump';
}

List<PumpInfo> parsePumpInfoList(dynamic raw) {
  if (raw is! List) return const [];
  return raw
      .whereType<Map<dynamic, dynamic>>()
      .map((item) => PumpInfo.fromJson(Map<String, dynamic>.from(item)))
      .where((pump) => pump.id.isNotEmpty)
      .toList();
}
