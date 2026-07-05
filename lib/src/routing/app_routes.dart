/// Centralized route path constants for GoRouter.
///
/// Use these variables instead of raw strings throughout the app.
/// Example: `context.go(AppRoutes.setup)` instead of `context.go('/')`.
abstract final class AppRoutes {
  AppRoutes._();

  static const String splash = '/splash';
  static const String setup = '/setup';
  static const String login = '/login';
  static const String purchaseSale = '/';
  static const String paymentMethod = '/payment-method';
  static const String momoOtp = '/momo-otp';
  static const String momoPendingApproval = '/momo-pending-approval';
  static const String transactionComplete = '/transaction-complete';
}
