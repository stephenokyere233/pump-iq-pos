/// v1 API paths (relative to Dio baseUrl ending in `/api`).
abstract final class ApiPaths {
  static const authDeviceCheck = '/v1/auth/device-check/';
  static const authRegisterDevice = '/v1/auth/register-device/';
  static const staffTokenPin = '/v1/staff/token/pin/';
  static const usersTokenRefresh = '/v1/users/token/refresh/';

  static const customers = '/v1/customers/';
  static String customerById(String id) => '/v1/customers/$id/';

  static const inventoryStocks = '/v1/inventory/stocks/';

  static const sales = '/v1/sales/sales/';
  static String saleById(String id) => '/v1/sales/sales/$id/';
  static String saleVerifyOtp(String id) => '/v1/sales/sales/$id/verify-otp/';
  static String saleCompleteCollection(String id) =>
      '/v1/sales/sales/$id/complete-collection/';
  static String salePaymentStatus(String id) =>
      '/v1/sales/sales/$id/payment-status/';

  static const moolreValidateName = '/v1/integrations/moolre/validate-name/';
}
