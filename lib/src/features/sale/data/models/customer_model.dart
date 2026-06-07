import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class Customer with _$Customer {
  const factory Customer({
    required String id,
    required String phone,
    String? name,
    String? email,
    String? plateNumber,
    String? verificationStatus,
    @Default(0) double insurancePoints,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'] as String,
      phone: json['phone'] as String,
      name: _nonEmptyString(json['name']),
      email: _nonEmptyString(json['email']),
      plateNumber: _nonEmptyString(json['plateNumber']),
      verificationStatus: json['verificationStatus'] as String?,
      insurancePoints: (json['insurancePoints'] as num?)?.toDouble() ?? 0,
    );
  }

  const Customer._();

  bool get isVerified => verificationStatus == 'Verified';

  bool get hasInsurancePoints => insurancePoints > 0;

  /// First character for avatar badges; never throws on empty name.
  String get displayInitial {
    final trimmedName = name?.trim();
    if (trimmedName != null && trimmedName.isNotEmpty) {
      return trimmedName[0].toUpperCase();
    }
    final trimmedPlate = plateNumber?.trim();
    if (trimmedPlate != null && trimmedPlate.isNotEmpty) {
      return trimmedPlate[0].toUpperCase();
    }
    return 'U';
  }

  static String? _nonEmptyString(dynamic value) {
    if (value == null) return null;
    final trimmed = value.toString().trim();
    return trimmed.isEmpty ? null : trimmed;
  }
}
