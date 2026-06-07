import 'package:dio/dio.dart';

import '../../../../config/app_config.dart';
import '../../../../services/auth_service.dart';
import '../../../../utils/utils.dart';
import '../models/sale_model.dart';

class SaleService {
  SaleService._();
  static final SaleService instance = SaleService._();

  Dio get _dio => AppConfig.dio;

  FutureEither<Map<String, dynamic>> getCustomerByPlate(String plateNumber) {
    return runTask(() async {
      final encodedPlate = Uri.encodeComponent(plateNumber.trim());
      final response = await _dio.get<Map<String, dynamic>>(
        '/customers/plate/$encodedPlate',
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<List<dynamic>> getActiveFuelPrices() {
    return runTask(() async {
      final stationId = AuthService.instance.getStationId();
      if (stationId == null || stationId.isEmpty) {
        throw StateError('Station ID is required to load active fuel prices');
      }

      final response = await _dio.get<Map<String, dynamic>>(
        '/fuel-prices/active',
        queryParameters: {'stationId': stationId},
      );
      final data = response.data!;
      return (data['data'] as List?) ?? [data];
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> createSale(CreateSaleRequest request) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/sales',
        data: request.toJson(),
      );
      return Map<String, dynamic>.from(response.data!);
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> payCash(String saleId) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/sales/$saleId/pay/cash',
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> payCardInitialize(String saleId) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/sales/$saleId/pay/card/initialize',
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> payCardVerify(
    String saleId,
    String reference,
  ) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/sales/$saleId/pay/card/verify',
        data: {'reference': reference},
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> validateAccount(
    ValidateAccountRequest request,
  ) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/payments/validate-account',
        data: request.toJson(),
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> payMomoCharge(
    String saleId,
    MomoChargeRequest request,
  ) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/sales/$saleId/pay/momo/charge',
        data: request.toJson(),
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> payMomoSubmitOtp(
    String saleId, {
    required String otp,
    required String reference,
  }) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/sales/$saleId/pay/momo/submit-otp',
        data: {'otp': otp, 'reference': reference},
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> payMomoCheckPending(
    String saleId, {
    required String reference,
  }) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/sales/$saleId/pay/momo/check-pending',
        data: {'reference': reference},
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> createCustomer({
    required String phone,
    String? name,
    String? email,
    String? country,
    String? plateNumber,
  }) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/customers',
        data: {
          'phone': phone,
          if (name != null) 'name': name,
          if (email != null) 'email': email,
          if (country != null) 'country': country,
          if (plateNumber != null) 'plateNumber': plateNumber,
        },
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> sendCustomerOtp({
    required String phone,
    String? country,
    String? name,
    String? plateNumber,
  }) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/customers/verification/send-otp',
        data: {
          'phone': phone,
          if (country != null) 'country': country,
          if (name != null) 'name': name,
          if (plateNumber != null) 'plateNumber': plateNumber,
        },
      );
      return response.data!;
    }, requiresNetwork: true);
  }

  FutureEither<Map<String, dynamic>> verifyCustomerOtp({
    required String phone,
    required String otp,
    String? country,
  }) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/customers/verification/verify-otp',
        data: {
          'phone': phone,
          'otp': otp,
          if (country != null) 'country': country,
        },
      );
      return response.data!;
    }, requiresNetwork: true);
  }
}
