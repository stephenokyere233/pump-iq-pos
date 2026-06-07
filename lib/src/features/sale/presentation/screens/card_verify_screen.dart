import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../providers/sale_bloc.dart';

class CardVerifyScreen extends StatelessWidget {
  const CardVerifyScreen({super.key});

  void _handleVerify(BuildContext context) {
    context.read<SaleBloc>().add(VerifyCardPayment(context: context));
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((SaleBloc b) => b.state.isPaymentLoading);
    final colorScheme = context.colors;

    return Scaffold(
      appBar: const AppTopBar(),
      body: SafeArea(
        child: StickyFooterLayout(
          centerBody: true,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.r,
                height: 100.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.primaryContainer,
                ),
                child: Center(
                  child: Icon(
                    Icons.credit_card,
                    size: 48.sp,
                    color: colorScheme.primary,
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.xl.h),
              Text(
                'Verify Card Payment',
                textAlign: TextAlign.center,
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              SizedBox(height: AppSpacing.sm.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg.w),
                child: Text(
                  'Tap the button below to confirm your card payment was processed successfully.',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
          footer: AppButton(
            label: 'Verify Payment',
            isFullWidth: true,
            isLoading: isLoading,
            onPressed: isLoading ? null : () => _handleVerify(context),
          ),
        ),
      ),
    );
  }
}
