import 'package:fpdart/fpdart.dart';

import '../../../../utils/failure.dart';
import '../../../../utils/typedefs.dart';
import '../models/customer_model.dart';
import '../services/customer_service.dart';

class CustomerRepository {
  final CustomerService _service = CustomerService.instance;

  FutureEither<Customer?> findByPlate({
    required String plateNumber,
    String? stationId,
    String? companyId,
  }) async {
    final result = await _service.list(
      plateNumber: plateNumber,
      station: stationId,
      company: companyId,
      pageSize: 1,
    );

    return result.fold(
      left,
      (page) {
        if (page.results.isEmpty) return right<Failure, Customer?>(null);
        return right(page.results.first);
      },
    );
  }

  FutureEither<Customer> create(CreateCustomerRequest request) async {
    final result = await _service.create(request);
    return result.map((customer) => customer);
  }

  FutureEither<Customer> getById(String id) async {
    final result = await _service.getById(id);
    return result.map((customer) => customer);
  }
}
