import 'package:dio/dio.dart';

class AppErrorHandler {
  static String format(dynamic error) {
    if (error is String) return error;

    if (error is DioException) {
      final status = error.response?.statusCode;
      final data = error.response?.data;

      String? apiMessage;
      if (data is Map<String, dynamic>) {
        apiMessage = data['message'] as String? ??
            data['title'] as String? ??
            data['error'] as String? ??
            data['detail'] as String?;

        apiMessage ??= _formatFieldErrors(data);
      } else if (data is String && data.isNotEmpty) {
        apiMessage = data;
      }

      if (apiMessage != null && apiMessage.isNotEmpty) {
        return status != null ? '[$status] $apiMessage' : apiMessage;
      }

      if (status == 401) {
        return 'You are not authorized to use this device.';
      }
      if (status == 403) {
        return 'Access denied. Check your login or permissions.';
      }
      if (status == 404) {
        return 'Not found.';
      }

      return error.message ?? 'Request failed';
    }

    try {
      if (error?.message != null) return error.message as String;
    } catch (_) {}

    return 'An unexpected error occurred';
  }

  static String? _formatFieldErrors(Map<String, dynamic> data) {
    final messages = <String>[];
    for (final entry in data.entries) {
      final value = entry.value;
      if (value is List && value.isNotEmpty) {
        messages.add('${entry.key}: ${value.first}');
      } else if (value is String && value.isNotEmpty) {
        messages.add('${entry.key}: $value');
      }
    }
    return messages.isEmpty ? null : messages.join('\n');
  }
}
