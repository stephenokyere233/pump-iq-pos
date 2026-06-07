import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../providers/sale_bloc.dart';
import '../widgets/otp_resend_control.dart';

class MomoOtpScreen extends StatefulWidget {
  const MomoOtpScreen({super.key});

  @override
  State<MomoOtpScreen> createState() => _MomoOtpScreenState();
}

class _MomoOtpScreenState extends State<MomoOtpScreen> {
  final _pinController = TextEditingController();

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  void _handleVerify() {
    final otp = _pinController.text.trim();
    if (otp.isEmpty) {
      showToast(context, message: 'Please enter the OTP', status: 'error');
      return;
    }
    context.read<SaleBloc>().add(SubmitMomoOtp(context: context, otp: otp));
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((SaleBloc b) => b.state.isPaymentLoading);
    final colorScheme = context.colors;

    final defaultPinTheme = PinTheme(
      width: 48.w,
      height: 56.h,
      textStyle: context.textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.w700,
        color: colorScheme.onSurface,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: colorScheme.primary, width: 2),
      ),
    );

    return Scaffold(
      appBar: const AppTopBar(),
      body: SafeArea(
        child: StickyFooterLayout(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSpacing.md.h),
              Text(
                'MoMo OTP Verification',
                style: context.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              SizedBox(height: AppSpacing.sm.h),
              Text(
                'Enter the OTP sent to the customer\'s phone',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              SizedBox(height: AppSpacing.xxl.h),
              Center(
                child: Pinput(
                  controller: _pinController,
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: defaultPinTheme,
                  separatorBuilder: (_) => SizedBox(width: 8.w),
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (_) => _handleVerify(),
                ),
              ),
              SizedBox(height: AppSpacing.lg.h),
              Center(
                child: OtpResendControl(
                  isLoading: isLoading,
                  onResend: () {
                    context.read<SaleBloc>().add(
                          ResendMomoCharge(context: context),
                        );
                    _pinController.clear();
                  },
                ),
              ),
            ],
          ),
          footer: AppButton(
            label: 'Verify',
            isFullWidth: true,
            isLoading: isLoading,
            onPressed: isLoading ? null : _handleVerify,
          ),
        ),
      ),
    );
  }
}
