import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Paper width for thermal receipt PDFs.
enum ReceiptPaperWidth {
  mm58(58),
  mm80(80);

  const ReceiptPaperWidth(this.millimeters);
  final int millimeters;

  static ReceiptPaperWidth fromEnv() {
    final raw = dotenv.maybeGet('RECEIPT_WIDTH_MM')?.trim() ?? '58';
    return switch (raw) {
      '80' => ReceiptPaperWidth.mm80,
      _ => ReceiptPaperWidth.mm58,
    };
  }
}

/// Data required to render a sale receipt PDF.
class ReceiptInput {
  ReceiptInput({
    required this.saleId,
    this.fuelType,
    required this.litres,
    this.unitPrice,
    this.price,
    this.discount,
    this.netPrice,
    this.currencySymbol = 'GHS',
    this.stationName,
    this.pumpAttendantName,
    this.createdAt,
    this.pointsEarned,
    this.customerName,
    this.customerPlate,
    this.customerPhone,
    required this.paymentMethodLabel,
    this.paymentReference,
    this.momoPhone,
    this.momoProviderLabel,
    this.momoChargeStatusLabel,
    ReceiptPaperWidth? paperWidth,
  }) : paperWidth = paperWidth ?? ReceiptPaperWidth.fromEnv();

  final String saleId;
  final String? fuelType;
  final double litres;
  final double? unitPrice;
  final double? price;
  final double? discount;
  final double? netPrice;
  final String currencySymbol;
  final String? stationName;
  final String? pumpAttendantName;
  final String? createdAt;
  final int? pointsEarned;
  final String? customerName;
  final String? customerPlate;
  final String? customerPhone;
  final String paymentMethodLabel;
  final String? paymentReference;
  final String? momoPhone;
  final String? momoProviderLabel;
  final String? momoChargeStatusLabel;
  final ReceiptPaperWidth paperWidth;

  double get totalAmount => netPrice ?? price ?? 0;
}

String? truncateReceiptField(String? value, {required int maxLength}) {
  if (value == null || value.isEmpty) return null;
  if (value.length <= maxLength) return value;
  return '${value.substring(0, maxLength)}...';
}
