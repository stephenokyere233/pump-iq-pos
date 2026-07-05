import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/json_resolver.dart';

part 'sale_model.freezed.dart';

enum PaymentMethod { cash, momo }

enum MomoProvider { mtn, telecel, atl }

enum SalePaymentCollectionStatus {
  otpRequired,
  momoPending,
  failed,
  unknown,
}

extension MomoProviderX on MomoProvider {
  /// Moolre channel codes: 1=MTN, 6=Telecel, 7=AT.
  String get channel {
    switch (this) {
      case MomoProvider.mtn:
        return '1';
      case MomoProvider.telecel:
        return '6';
      case MomoProvider.atl:
        return '7';
    }
  }

  String get label {
    switch (this) {
      case MomoProvider.mtn:
        return 'MTN';
      case MomoProvider.telecel:
        return 'Telecel';
      case MomoProvider.atl:
        return 'AT';
    }
  }
}

SalePaymentCollectionStatus paymentCollectionStatusFromApi(String? raw) {
  switch (raw) {
    case 'otp_required':
      return SalePaymentCollectionStatus.otpRequired;
    case 'momo_pending':
      return SalePaymentCollectionStatus.momoPending;
    case 'failed':
      return SalePaymentCollectionStatus.failed;
    default:
      return SalePaymentCollectionStatus.unknown;
  }
}

@Freezed(fromJson: false, toJson: false)
abstract class ValidateAccountRequest with _$ValidateAccountRequest {
  const factory ValidateAccountRequest({
    required String phoneNumber,
    required String channel,
    @Default('GHS') String currency,
  }) = _ValidateAccountRequest;

  const ValidateAccountRequest._();

  Map<String, dynamic> toJson() => {
    'phone_number': phoneNumber,
    'channel': channel,
    'currency': currency,
    'sublistid': '',
  };
}

@Freezed(fromJson: false, toJson: false)
abstract class ValidateAccountResponse with _$ValidateAccountResponse {
  const factory ValidateAccountResponse({String? accountName}) =
      _ValidateAccountResponse;

  factory ValidateAccountResponse.fromJson(Map<String, dynamic> json) {
    final moolre = json['moolre'];
    final moolreData = moolre is Map ? moolre['data']?.toString().trim() : null;

    final accountName =
        json['account_name']?.toString().trim() ??
        (moolreData != null && moolreData.isNotEmpty ? moolreData : null);

    return ValidateAccountResponse(accountName: accountName);
  }
}

@Freezed(fromJson: false, toJson: false)
abstract class Sale with _$Sale {
  const factory Sale({
    required String id,
    required String customerId,
    required String pumpAttendantId,
    required String stockId,
    required String companyId,
    required double amount,
    double? quantity,
    double? unitPrice,
    String? paymentMethod,
    String? accountNumber,
    String? accountName,
    String? status,
    String? paymentExternalRef,
    String? moolreTransactionId,
    String? paymentLink,
    @Default(false) bool paymentOtpRequired,
    SalePaymentCollectionStatus? paymentCollectionStatus,
    String? createdAt,
  }) = _Sale;

  factory Sale.fromJson(Map<String, dynamic> json) {
    final payload = unwrapApiPayload(json);
    final id = resolveApiReferenceId(payload['id']) ?? '';

    return Sale(
      id: id,
      customerId: resolveApiReferenceId(payload['customer']) ?? '',
      pumpAttendantId: resolveApiReferenceId(payload['pump_attendant']) ?? '',
      stockId: resolveApiReferenceId(payload['stock']) ?? '',
      companyId: resolveApiReferenceId(payload['company']) ?? '',
      amount: double.tryParse(payload['amount']?.toString() ?? '') ?? 0,
      quantity: double.tryParse(payload['quantity']?.toString() ?? ''),
      unitPrice: double.tryParse(payload['unit_price']?.toString() ?? ''),
      paymentMethod: payload['payment_method']?.toString(),
      accountNumber: payload['account_number']?.toString(),
      accountName: payload['account_name']?.toString(),
      status: payload['status']?.toString(),
      paymentExternalRef: payload['payment_external_ref']?.toString(),
      moolreTransactionId: payload['moolre_transaction_id']?.toString(),
      paymentLink: payload['payment_link']?.toString(),
      paymentOtpRequired: paymentOtpRequiredFromJson(payload),
      paymentCollectionStatus: paymentCollectionStatusFromApi(
        paymentCollectionStatusFromJson(payload),
      ),
      createdAt: payload['created_at']?.toString(),
    );
  }

  const Sale._();

  bool get hasValidId => id.isNotEmpty && id != 'null';

  bool get isCompleted => status == 'completed';

  bool get requiresOtp =>
      paymentOtpRequired ||
      paymentCollectionStatus == SalePaymentCollectionStatus.otpRequired;

  bool get isMomoPending =>
      paymentCollectionStatus == SalePaymentCollectionStatus.momoPending;
}

@freezed
abstract class CreateSaleRequest with _$CreateSaleRequest {
  const factory CreateSaleRequest({
    required String customerId,
    required String pumpAttendantId,
    required String stockId,
    required String companyId,
    required double amount,
    String? paymentMethod,
    String? accountNumber,
    String? accountName,
  }) = _CreateSaleRequest;

  const CreateSaleRequest._();

  Map<String, dynamic> toJson() => {
    'customer': customerId,
    'pump_attendant': pumpAttendantId,
    'stock': stockId,
    'company': companyId,
    'amount': amount.toStringAsFixed(2),
    if (paymentMethod != null) 'payment_method': paymentMethod,
    if (accountNumber != null) 'account_number': accountNumber,
    if (accountName != null) 'account_name': accountName,
  };
}

@freezed
abstract class PendingSaleDraft with _$PendingSaleDraft {
  const factory PendingSaleDraft({
    required String stockId,
    required String companyId,
    required double amount,
    String? paymentMethod,
    String? accountNumber,
    String? accountName,
  }) = _PendingSaleDraft;
}
