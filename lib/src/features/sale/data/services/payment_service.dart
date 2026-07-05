import 'package:dio/dio.dart';

import '../../../../config/api_paths.dart';
import '../../../../config/app_config.dart';
import '../../../../utils/utils.dart';
import '../models/sale_model.dart';

class PaymentService {
  PaymentService._();
  static final PaymentService instance = PaymentService._();

  Dio get _dio => AppConfig.dio;

  FutureEither<ValidateAccountResponse> validateMomoAccount(
    ValidateAccountRequest request,
  ) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        ApiPaths.moolreValidateName,
        data: request.toJson(),
      );
      return ValidateAccountResponse.fromJson(response.data!);
    }, requiresNetwork: true);
  }
}
