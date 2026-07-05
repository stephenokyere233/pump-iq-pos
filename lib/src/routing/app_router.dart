import 'package:go_router/go_router.dart';
import 'package:pump_iq/src/features/auth/presentation/screens/login_screen.dart';
import 'package:pump_iq/src/features/onboarding/presentation/screens/onboarding_page.dart'
    show SetupPage;
import 'package:pump_iq/src/features/sale/presentation/screens/momo_otp_screen.dart';
import 'package:pump_iq/src/features/sale/presentation/screens/momo_pending_approval_screen.dart';
import 'package:pump_iq/src/features/sale/presentation/screens/payment_method_screen.dart';
import 'package:pump_iq/src/features/sale/presentation/screens/purchase_sale_screen.dart';
import 'package:pump_iq/src/features/sale/presentation/screens/transaction_complete_screen.dart';
import 'package:pump_iq/src/routing/app_routes.dart';
import 'package:pump_iq/src/routing/global_navigator.dart';

final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: AppRoutes.login,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.setup,
      name: 'setup',
      builder: (context, state) => const SetupPage(),
    ),
    GoRoute(
      path: AppRoutes.login,
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.purchaseSale,
      name: 'purchaseSale',
      builder: (context, state) => const PurchaseSaleScreen(),
    ),
    GoRoute(
      path: AppRoutes.paymentMethod,
      name: 'paymentMethod',
      builder: (context, state) => const PaymentMethodScreen(),
    ),
    GoRoute(
      path: AppRoutes.momoOtp,
      name: 'momoOtp',
      builder: (context, state) => const MomoOtpScreen(),
    ),
    GoRoute(
      path: AppRoutes.momoPendingApproval,
      name: 'momoPendingApproval',
      builder: (context, state) => const MomoPendingApprovalScreen(),
    ),
    GoRoute(
      path: AppRoutes.transactionComplete,
      name: 'transactionComplete',
      builder: (context, state) => const TransactionCompleteScreen(),
    ),
  ],
);
