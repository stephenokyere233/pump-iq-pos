import 'package:dio/dio.dart';

import '../../../../config/api_paths.dart';
import '../../../../config/app_config.dart';
import '../../../../utils/utils.dart';
import '../models/sale_model.dart';

class SaleService {
  SaleService._();
  static final SaleService instance = SaleService._();

  Dio get _dio => AppConfig.dio;

  Sale _parseSaleResponse(Map<String, dynamic> data) {
    final sale = Sale.fromJson(data);
    if (!sale.hasValidId) {
      throw const FormatException('Sale response is missing a valid id');
    }
    return sale;
  }

  FutureEither<Sale> createSale(CreateSaleRequest request) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        ApiPaths.sales,
        data: request.toJson(),
      );
      return _parseSaleResponse(response.data!);
    }, requiresNetwork: true);
  }

  FutureEither<Sale> getSale(String saleId) {
    return runTask(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        ApiPaths.saleById(saleId),
      );
      return _parseSaleResponse(response.data!);
    }, requiresNetwork: true);
  }

  FutureEither<Sale> verifyOtp(String saleId, {required String otp}) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        ApiPaths.saleVerifyOtp(saleId),
        data: {'otp': otp},
      );
      return _parseSaleResponse(response.data!);
    }, requiresNetwork: true);
  }

  FutureEither<Sale> completeCollection(String saleId) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        ApiPaths.saleCompleteCollection(saleId),
      );
      return _parseSaleResponse(response.data!);
    }, requiresNetwork: true);
  }

  FutureEither<Sale> pollPaymentStatus(String saleId) {
    return runTask(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        ApiPaths.salePaymentStatus(saleId),
      );
      return _parseSaleResponse(response.data!);
    }, requiresNetwork: true);
  }
}
