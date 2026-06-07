// Flutter SDK
export 'package:flutter/cupertino.dart' hide RefreshCallback;
export 'package:flutter/foundation.dart';
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';

// Project Core — everything exported through shared.dart (theme, extensions,
// utils, widgets, enums) plus routing and services.
export '../config/app_config.dart';
export '../features/auth/presentation/screens/login_screen.dart';
export '../features/onboarding/presentation/screens/onboarding_page.dart'
    show SetupPage;
export '../features/sale/presentation/screens/card_checkout_screen.dart';
export '../features/sale/presentation/screens/card_verify_screen.dart';
export '../features/sale/presentation/screens/momo_otp_screen.dart';
export '../features/sale/presentation/screens/momo_pending_approval_screen.dart';
export '../features/sale/presentation/screens/payment_method_screen.dart';
export '../features/sale/presentation/screens/purchase_sale_screen.dart';
export '../features/sale/presentation/screens/transaction_complete_screen.dart';
export '../routing/app_router.dart';
export '../routing/app_routes.dart';
export '../routing/global_navigator.dart';
export '../services/services.dart';
export '../shared/shared.dart';
