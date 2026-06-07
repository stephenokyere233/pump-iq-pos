import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_price_model.freezed.dart';
part 'fuel_price_model.g.dart';

@freezed
abstract class FuelPrice with _$FuelPrice {
  const factory FuelPrice({
    required String id,
    required String fuelType,
    required double unitPrice,
    required String stationId,
    required String territoryId,
    String? status,
  }) = _FuelPrice;

  factory FuelPrice.fromJson(Map<String, dynamic> json) =>
      _$FuelPriceFromJson(json);
}
