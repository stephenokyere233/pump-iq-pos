// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pump_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PumpInfo _$PumpInfoFromJson(Map<String, dynamic> json) => _PumpInfo(
      id: json['id'] as String? ?? '',
      pumpName: json['pumpName'] as String? ?? '',
      stationId: json['stationId'] as String? ?? '',
      territoryId: json['territoryId'] as String? ?? '',
    );

Map<String, dynamic> _$PumpInfoToJson(_PumpInfo instance) => <String, dynamic>{
      'id': instance.id,
      'pumpName': instance.pumpName,
      'stationId': instance.stationId,
      'territoryId': instance.territoryId,
    };
