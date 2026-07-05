/// Resolves API reference fields that may be a UUID string or `{ id: ... }`.
String? resolveApiReferenceId(dynamic value) {
  if (value == null) return null;

  if (value is Map) {
    final id = value['id'];
    if (id == null) return null;
    final trimmed = id.toString().trim();
    return trimmed.isEmpty ? null : trimmed;
  }

  final trimmed = value.toString().trim();
  if (trimmed.isEmpty || trimmed == 'null') return null;

  // Recover UUIDs from legacy values stored via Map.toString().
  if (trimmed.startsWith('{')) {
    final match = RegExp(
      r'[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}',
    ).firstMatch(trimmed);
    return match?.group(0);
  }

  return trimmed;
}

/// Unwraps `{ data: ... }` / `{ sale: ... }` envelopes from API responses.
Map<String, dynamic> unwrapApiPayload(Map<String, dynamic> json) {
  for (final key in ['data', 'sale', 'result']) {
    final nested = json[key];
    if (nested is Map<String, dynamic>) {
      if (nested.containsKey('id') || nested.containsKey('customer')) {
        return nested;
      }
    }
    if (nested is Map) {
      final map = Map<String, dynamic>.from(nested);
      if (map.containsKey('id') || map.containsKey('customer')) {
        return map;
      }
    }
  }
  return json;
}

String? paymentCollectionStatusFromJson(Map<String, dynamic> json) {
  final direct = json['payment_collection_status']?.toString().trim();
  if (direct != null && direct.isNotEmpty) return direct;

  final collection = json['payment_collection'];
  if (collection is Map) {
    final status = collection['status']?.toString().trim();
    if (status != null && status.isNotEmpty) return status;
  }

  return null;
}

bool paymentOtpRequiredFromJson(Map<String, dynamic> json) {
  if (json['payment_otp_required'] == true) return true;
  return paymentCollectionStatusFromJson(json) == 'otp_required';
}
