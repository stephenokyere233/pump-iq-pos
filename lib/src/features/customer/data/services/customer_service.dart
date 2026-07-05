import 'package:dio/dio.dart';

import '../../../../config/api_paths.dart';
import '../../../../config/app_config.dart';
import '../../../../utils/utils.dart';
import '../models/customer_model.dart';

class CustomerService {
  CustomerService._();
  static final CustomerService instance = CustomerService._();

  Dio get _dio => AppConfig.dio;

  FutureEither<PaginatedCustomers> list({
    String? company,
    String? station,
    String? plateNumber,
    int page = 1,
    int pageSize = 20,
  }) {
    return runTask(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        ApiPaths.customers,
        queryParameters: {
          if (company != null) 'company': company,
          if (station != null) 'station': station,
          if (plateNumber != null) 'plate_number': plateNumber,
          'page': page,
          'page_size': pageSize,
        },
      );
      return PaginatedCustomers.fromJson(response.data!);
    }, requiresNetwork: true);
  }

  FutureEither<Customer> create(CreateCustomerRequest request) {
    return runTask(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        ApiPaths.customers,
        data: request.toJson(),
      );
      return Customer.fromJson(response.data!);
    }, requiresNetwork: true);
  }

  FutureEither<Customer> getById(String id) {
    return runTask(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        ApiPaths.customerById(id),
      );
      return Customer.fromJson(response.data!);
    }, requiresNetwork: true);
  }
}
