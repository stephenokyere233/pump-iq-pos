import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/json_resolver.dart';

part 'customer_model.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class Customer with _$Customer {
  const factory Customer({
    required String id,
    required String phone,
    String? name,
    String? email,
    String? plateNumber,
    String? companyId,
    String? stationId,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'].toString(),
      phone: (json['phone_number'] ?? json['phone'])?.toString() ?? '',
      name: _nonEmptyString(json['name']),
      email: _nonEmptyString(json['email']),
      plateNumber: _nonEmptyString(json['plate_number'] ?? json['plateNumber']),
      companyId: resolveApiReferenceId(json['company']),
      stationId: resolveApiReferenceId(json['station']),
    );
  }

  const Customer._();

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

@Freezed(fromJson: false, toJson: false)
abstract class CreateCustomerRequest with _$CreateCustomerRequest {
  const factory CreateCustomerRequest({
    required String company,
    required String phoneNumber,
    required String plateNumber,
    required String station,
    String? name,
    String? email,
  }) = _CreateCustomerRequest;

  const CreateCustomerRequest._();

  Map<String, dynamic> toJson() {
    final trimmedName = name?.trim();
    final trimmedEmail = email?.trim();

    return {
      'company': company,
      'phone_number': phoneNumber,
      'plate_number': plateNumber,
      'station': station,
      if (trimmedName != null && trimmedName.isNotEmpty) 'name': trimmedName,
      if (trimmedEmail != null && trimmedEmail.isNotEmpty)
        'email': trimmedEmail,
    };
  }
}

@Freezed(fromJson: false, toJson: false)
abstract class PaginatedCustomers with _$PaginatedCustomers {
  const factory PaginatedCustomers({
    required int count,
    required List<Customer> results,
    String? next,
    String? previous,
  }) = _PaginatedCustomers;

  factory PaginatedCustomers.fromJson(Map<String, dynamic> json) {
    final results = (json['results'] as List? ?? [])
        .map((e) => Customer.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
    return PaginatedCustomers(
      count: (json['count'] as num?)?.toInt() ?? results.length,
      results: results,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );
  }
}
