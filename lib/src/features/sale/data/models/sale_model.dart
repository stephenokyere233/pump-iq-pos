import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../extensions/momo_charge_status.dart';

export '../../../../extensions/momo_charge_status.dart';

part 'sale_model.freezed.dart';
part 'sale_model.g.dart';

enum PaymentMethod { cash, momo, card }

enum MomoProvider { mtn, vod, atl }

extension MomoProviderX on MomoProvider {
  String get bankCode {
    switch (this) {
      case MomoProvider.mtn:
        return 'MTN';
      case MomoProvider.vod:
        return 'VOD';
      case MomoProvider.atl:
        return 'ATL';
    }
  }

  String get label {
    switch (this) {
      case MomoProvider.mtn:
        return 'MTN';
      case MomoProvider.vod:
        return 'Vodafone';
      case MomoProvider.atl:
        return 'AirtelTigo';
    }
  }
}

/// `POST /payments/validate-account` request body.
@Freezed(fromJson: false, toJson: false)
abstract class ValidateAccountRequest with _$ValidateAccountRequest {
  const factory ValidateAccountRequest({
    required String customerNumber,
    required String bankCode,
    String? type,
  }) = _ValidateAccountRequest;

  const ValidateAccountRequest._();

  Map<String, dynamic> toJson() => {
        'customerNumber': customerNumber,
        'bankCode': bankCode,
        if (type != null) 'type': type,
      };
}

/// `POST /payments/validate-account` response body.
@Freezed(fromJson: false, toJson: false)
abstract class ValidateAccountResponse with _$ValidateAccountResponse {
  const factory ValidateAccountResponse({
    String? name,
    String? customerNumber,
  }) = _ValidateAccountResponse;

  factory ValidateAccountResponse.fromJson(Map<String, dynamic> json) {
    return ValidateAccountResponse(
      name: json['name']?.toString() ??
          json['accountName']?.toString() ??
          json['customerName']?.toString(),
      customerNumber: json['customerNumber']?.toString(),
    );
  }
}

/// `POST /sales/:id/pay/momo/charge` response body.
@Freezed(fromJson: false, toJson: false)
abstract class MomoChargeResponse with _$MomoChargeResponse {
  const factory MomoChargeResponse({
    required MomoChargeStatus? status,
    required String reference,
    String? nextAction,
  }) = _MomoChargeResponse;

  factory MomoChargeResponse.fromJson(Map<String, dynamic> json) {
    final rawStatus = json['status']?.toString();
    return MomoChargeResponse(
      status: momoChargeStatusFromApi(rawStatus),
      reference: json['reference']?.toString() ?? '',
      nextAction: json['nextAction']?.toString(),
    );
  }

  const MomoChargeResponse._();

  bool get requiresOtp => status?.requiresOtp ?? false;

  bool get isPayOffline => status?.isPayOffline ?? false;

  String get statusLabel => status?.apiValue ?? 'unknown';
}

/// `POST /sales/:id/pay/momo/check-pending` response body.
@Freezed(fromJson: false, toJson: false)
abstract class MomoCheckPendingResponse with _$MomoCheckPendingResponse {
  const factory MomoCheckPendingResponse({
    String? status,
    String? reference,
    String? message,
  }) = _MomoCheckPendingResponse;

  factory MomoCheckPendingResponse.fromJson(Map<String, dynamic> json) {
    return MomoCheckPendingResponse(
      status: json['status']?.toString(),
      reference: json['reference']?.toString(),
      message: json['message']?.toString(),
    );
  }

  const MomoCheckPendingResponse._();

  bool get isSuccess => status == 'success';

  bool get isAlreadyPaid =>
      message != null && message!.toLowerCase().contains('already paid');
}

/// `POST /sales` response body.
@Freezed(fromJson: false, toJson: false)
abstract class Sale with _$Sale {
  const factory Sale({
    required String id,
    String? fuelType,
    required double litres,
    double? unitPrice,
    double? price,
    double? discount,
    double? netPrice,
    String? currencyCode,
    String? currencySymbol,
    String? status,
    String? paymentMethod,
    int? pointsEarned,
    String? customerName,
    String? pumpAttendantName,
    String? stationName,
    String? createdAt,
  }) = _Sale;

  factory Sale.fromJson(Map<String, dynamic> json) {
    return Sale(
      id: json['id'].toString(),
      fuelType: json['fuelType']?.toString(),
      litres: (json['litres'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      netPrice: (json['netPrice'] as num?)?.toDouble(),
      currencyCode: json['currencyCode']?.toString(),
      currencySymbol: json['currencySymbol']?.toString(),
      status: json['status']?.toString(),
      paymentMethod: json['paymentMethod']?.toString(),
      pointsEarned: (json['pointsEarned'] as num?)?.toInt(),
      customerName: json['customerName']?.toString(),
      pumpAttendantName: json['pumpAttendantName']?.toString(),
      stationName: json['stationName']?.toString(),
      createdAt: json['createdAt']?.toString(),
    );
  }

  const Sale._();

  double? get totalAmount => netPrice ?? price;
}

/// `POST /sales` request body (`CreateSaleDTO`).
@freezed
abstract class CreateSaleRequest with _$CreateSaleRequest {
  const factory CreateSaleRequest({
    required String fuelPriceId,
    required String customerId,
    required String pumpId,
    required double amount,
    @Default(false) bool usePointsDiscount,
    @Default(0) double discount,
  }) = _CreateSaleRequest;

  factory CreateSaleRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSaleRequestFromJson(json);
}

/// `POST /sales/:id/pay/card/initialize` response body.
@freezed
abstract class CardInitializeResponse with _$CardInitializeResponse {
  const factory CardInitializeResponse({
    @Default('') String authorizationUrl,
    @Default('') String accessCode,
    @Default('') String reference,
  }) = _CardInitializeResponse;

  factory CardInitializeResponse.fromJson(Map<String, dynamic> json) =>
      _$CardInitializeResponseFromJson(json);
}

@freezed
abstract class MomoChargeRequest with _$MomoChargeRequest {
  const factory MomoChargeRequest({
    required String phone,
    required String provider,
  }) = _MomoChargeRequest;

  factory MomoChargeRequest.fromJson(Map<String, dynamic> json) =>
      _$MomoChargeRequestFromJson(json);
}
