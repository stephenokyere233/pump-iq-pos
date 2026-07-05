import 'package:dio/dio.dart';

import '../../../../config/api_paths.dart';
import '../../../../config/app_config.dart';
import '../../../../utils/utils.dart';
import '../models/stock_model.dart';

class InventoryService {
  InventoryService._();
  static final InventoryService instance = InventoryService._();

  Dio get _dio => AppConfig.dio;

  FutureEither<PaginatedStocks> listStocks({
    String? company,
    int page = 1,
    int pageSize = 50,
  }) {
    return runTask(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        ApiPaths.inventoryStocks,
        queryParameters: {
          'company': ?company,
          'page': page,
          'page_size': pageSize,
        },
      );
      return PaginatedStocks.fromJson(response.data!);
    }, requiresNetwork: true);
  }
}
