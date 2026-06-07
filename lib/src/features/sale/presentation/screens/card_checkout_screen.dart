import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../providers/sale_bloc.dart';

class CardCheckoutScreen extends StatefulWidget {
  const CardCheckoutScreen({super.key});

  @override
  State<CardCheckoutScreen> createState() => _CardCheckoutScreenState();
}

class _CardCheckoutScreenState extends State<CardCheckoutScreen> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    final url = context.read<SaleBloc>().state.cardAuthorizationUrl ?? '';

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) {
            if (mounted) setState(() => _isLoading = true);
          },
          onPageFinished: (_) {
            if (mounted) setState(() => _isLoading = false);
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
  }

  void _handleContinueToVerify() {
    context.push(AppRoutes.cardVerify);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;

    return Scaffold(
      appBar: const AppTopBar(),
      body: SafeArea(
        child: Column(
          children: [
            if (_isLoading)
              LinearProgressIndicator(
                color: colorScheme.primary,
                backgroundColor: colorScheme.primaryContainer,
              ),
            Expanded(
              child: WebViewWidget(controller: _controller),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.lg.w,
                vertical: AppSpacing.md.h,
              ),
              child: AppButton(
                label: 'I\'ve Completed Payment',
                isFullWidth: true,
                onPressed: _handleContinueToVerify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
