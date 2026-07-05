import 'package:fpdart/fpdart.dart';

import '../../../../services/auth_service.dart';
import '../../../../utils/failure.dart';
import '../../../../utils/typedefs.dart';
import '../../../customer/data/models/customer_model.dart';
import '../../../customer/data/repositories/customer_repository.dart';
import '../../../inventory/data/repositories/inventory_repository.dart';
import '../models/fuel_price_model.dart';
import '../models/sale_model.dart';
import '../services/payment_service.dart';
import '../services/sale_service.dart';

class SaleRepository {
  SaleRepository({
    CustomerRepository? customerRepository,
    InventoryRepository? inventoryRepository,
  })  : _customerRepository = customerRepository ?? CustomerRepository(),
        _inventoryRepository = inventoryRepository ?? InventoryRepository();

  final SaleService _saleService = SaleService.instance;
  final PaymentService _paymentService = PaymentService.instance;
  final CustomerRepository _customerRepository;
  final InventoryRepository _inventoryRepository;

  FutureEither<Customer?> getCustomerByPlate(String plateNumber) {
    return _customerRepository.findByPlate(
      plateNumber: plateNumber,
      stationId: AuthService.instance.getStationId(),
      companyId: AuthService.instance.getCompanyId(),
    );
  }

  FutureEither<List<FuelPrice>> getActiveFuelPrices() {
    return _inventoryRepository.getActiveFuelPrices(
      companyId: AuthService.instance.getCompanyId(),
      stationId: AuthService.instance.getStationId(),
    );
  }

  FutureEither<Sale> createSale(CreateSaleRequest request) async {
    final result = await _saleService.createSale(request);
    return result.map((sale) => sale);
  }

  FutureEither<Sale> getSale(String saleId) async {
    final idError = _saleIdFailure(saleId);
    if (idError != null) return left(idError);

    final result = await _saleService.getSale(saleId.trim());
    return result.map((sale) => sale);
  }

  FutureEither<Sale> verifySaleOtp(String saleId, {required String otp}) async {
    final idError = _saleIdFailure(saleId);
    if (idError != null) return left(idError);

    final result = await _saleService.verifyOtp(saleId.trim(), otp: otp);
    return result.map((sale) => sale);
  }

  FutureEither<Sale> completeCollection(String saleId) async {
    final idError = _saleIdFailure(saleId);
    if (idError != null) return left(idError);

    final result = await _saleService.completeCollection(saleId.trim());
    return result.map((sale) => sale);
  }

  FutureEither<Sale> pollPaymentStatus(String saleId) async {
    final idError = _saleIdFailure(saleId);
    if (idError != null) return left(idError);

    final result = await _saleService.pollPaymentStatus(saleId.trim());
    return result.map((sale) => sale);
  }

  FutureEither<ValidateAccountResponse> validateAccount(
    ValidateAccountRequest request,
  ) async {
    final result = await _paymentService.validateMomoAccount(request);
    return result.map((data) => data);
  }

  FutureEither<Customer> createCustomer({
    required String phone,
    required String plateNumber,
    String? name,
    String? email,
  }) async {
    final companyId = AuthService.instance.getCompanyId();
    final stationId = AuthService.instance.getStationId();
    if (companyId == null || stationId == null) {
      return left(
        const ServerFailure('Station or company context is missing'),
      );
    }

    return _customerRepository.create(
      CreateCustomerRequest(
        company: companyId,
        phoneNumber: phone,
        plateNumber: plateNumber,
        station: stationId,
        name: name,
        email: email,
      ),
    );
  }

  Failure? _saleIdFailure(String saleId) {
    final trimmed = saleId.trim();
    if (trimmed.isEmpty || trimmed == 'null') {
      return const ServerFailure(
        'Sale id is missing from the server response',
      );
    }
    return null;
  }
}
