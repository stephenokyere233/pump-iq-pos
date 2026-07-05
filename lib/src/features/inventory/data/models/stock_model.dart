import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/json_resolver.dart';

part 'stock_model.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class Stock with _$Stock {
  const factory Stock({
    required String id,
    required String company,
    required String name,
    @Default('0') String currentUnitPrice,
    String? currentPriceUpdatedAt,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => Stock(
    id: json['id'].toString(),
    company: resolveApiReferenceId(json['company']) ?? '',
    name: json['name']?.toString() ?? '',
    currentUnitPrice: json['current_unit_price']?.toString() ?? '0',
    currentPriceUpdatedAt: json['current_price_updated_at']?.toString(),
  );

  const Stock._();

  double get unitPrice => double.tryParse(currentUnitPrice) ?? 0;
}

@Freezed(fromJson: false, toJson: false)
abstract class PaginatedStocks with _$PaginatedStocks {
  const factory PaginatedStocks({
    required int count,
    required List<Stock> results,
  }) = _PaginatedStocks;

  factory PaginatedStocks.fromJson(Map<String, dynamic> json) {
    final results = (json['results'] as List? ?? [])
        .map((e) => Stock.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
    return PaginatedStocks(
      count: (json['count'] as num?)?.toInt() ?? results.length,
      results: results,
    );
  }
}
