import '../../../../utils/typedefs.dart';
import '../models/customer_model.dart';
import '../models/fuel_price_model.dart';
import '../models/sale_model.dart';
import '../services/sale_service.dart';

class SaleRepository {
  final SaleService _service = SaleService.instance;

  FutureEither<Customer> getCustomerByPlate(String plateNumber) async {
    final result = await _service.getCustomerByPlate(plateNumber);
    return result.map((data) => Customer.fromJson(data));
  }

  FutureEither<List<FuelPrice>> getActiveFuelPrices() async {
    final result = await _service.getActiveFuelPrices();
    return result.map(
      (list) => list
          .map((item) => FuelPrice.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }

  FutureEither<Sale> createSale(CreateSaleRequest request) async {
    final result = await _service.createSale(request);
    return result.map((data) => Sale.fromJson(data));
  }

  FutureEither<void> payCash(String saleId) async {
    final result = await _service.payCash(saleId);
    return result.map((_) {});
  }

  FutureEither<CardInitializeResponse> payCardInitialize(String saleId) async {
    final result = await _service.payCardInitialize(saleId);
    return result.map((data) => CardInitializeResponse.fromJson(data));
  }

  FutureEither<void> payCardVerify(String saleId, String reference) async {
    final result = await _service.payCardVerify(saleId, reference);
    return result.map((_) {});
  }

  FutureEither<ValidateAccountResponse> validateAccount(
    ValidateAccountRequest request,
  ) async {
    final result = await _service.validateAccount(request);
    return result.map((data) => ValidateAccountResponse.fromJson(data));
  }

  FutureEither<MomoChargeResponse> payMomoCharge(
    String saleId,
    MomoChargeRequest request,
  ) async {
    final result = await _service.payMomoCharge(saleId, request);
    return result.map((data) => MomoChargeResponse.fromJson(data));
  }

  FutureEither<void> payMomoSubmitOtp(
    String saleId, {
    required String otp,
    required String reference,
  }) async {
    final result = await _service.payMomoSubmitOtp(
      saleId,
      otp: otp,
      reference: reference,
    );
    return result.map((_) {});
  }

  FutureEither<MomoCheckPendingResponse> payMomoCheckPending(
    String saleId, {
    required String reference,
  }) async {
    final result = await _service.payMomoCheckPending(
      saleId,
      reference: reference,
    );
    return result.map((data) => MomoCheckPendingResponse.fromJson(data));
  }

  FutureEither<Customer> createCustomer({
    required String phone,
    String? name,
    String? email,
    String? country,
    String? plateNumber,
  }) async {
    final result = await _service.createCustomer(
      phone: phone,
      name: name,
      email: email,
      country: country,
      plateNumber: plateNumber,
    );
    return result.map((data) => Customer.fromJson(data));
  }

  FutureEither<void> sendCustomerOtp({
    required String phone,
    String? country,
    String? name,
    String? plateNumber,
  }) async {
    final result = await _service.sendCustomerOtp(
      phone: phone,
      country: country,
      name: name,
      plateNumber: plateNumber,
    );
    return result.map((_) {});
  }

  FutureEither<void> verifyCustomerOtp({
    required String phone,
    required String otp,
    String? country,
  }) async {
    final result = await _service.verifyCustomerOtp(
      phone: phone,
      otp: otp,
      country: country,
    );
    return result.map((_) {});
  }
}
