// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthStation _$AuthStationFromJson(Map<String, dynamic> json) => _AuthStation(
      id: json['id'] as String? ?? '',
      stationName: json['stationName'] as String? ?? '',
      stationCode: json['stationCode'] as String?,
      territoryName: json['territoryName'] as String?,
      companyName: json['companyName'] as String?,
    );

Map<String, dynamic> _$AuthStationToJson(_AuthStation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stationName': instance.stationName,
      'stationCode': instance.stationCode,
      'territoryName': instance.territoryName,
      'companyName': instance.companyName,
    };
