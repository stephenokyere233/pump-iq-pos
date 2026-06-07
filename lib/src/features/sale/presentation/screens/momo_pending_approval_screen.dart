import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../../data/models/sale_model.dart';
import '../providers/sale_bloc.dart';

class MomoPendingApprovalScreen extends StatelessWidget {
  const MomoPendingApprovalScreen({super.key});

  void _handleVerify(BuildContext context) {
    context.read<SaleBloc>().add(VerifyMomoPending(context: context));
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((SaleBloc b) => b.state.isPaymentLoading);
    final momoChargeStatus =
        context.select((SaleBloc b) => b.state.momoChargeStatus);
    final colorScheme = context.colors;

    final subtitle = momoChargeStatus == MomoChargeStatus.sendOtp
        ? 'OTP submitted. Waiting for payment confirmation.'
        : 'Customer is approving payment on their phone.';

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
                  child: SizedBox(
                    width: 48.r,
                    height: 48.r,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: colorScheme.primary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.xl.h),
              Text(
                'Awaiting Payment Approval',
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
                  subtitle,
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
