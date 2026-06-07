// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FuelPrice _$FuelPriceFromJson(Map<String, dynamic> json) => _FuelPrice(
      id: json['id'] as String,
      fuelType: json['fuelType'] as String,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      stationId: json['stationId'] as String,
      territoryId: json['territoryId'] as String,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$FuelPriceToJson(_FuelPrice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fuelType': instance.fuelType,
      'unitPrice': instance.unitPrice,
      'stationId': instance.stationId,
      'territoryId': instance.territoryId,
      'status': instance.status,
    };
