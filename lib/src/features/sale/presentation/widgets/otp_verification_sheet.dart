import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../providers/sale_bloc.dart';
import 'otp_resend_control.dart';

class OtpVerificationSheet extends StatefulWidget {
  const OtpVerificationSheet({super.key, required this.phone});

  final String phone;

  @override
  State<OtpVerificationSheet> createState() => _OtpVerificationSheetState();
}

class _OtpVerificationSheetState extends State<OtpVerificationSheet> {
  final _pinController = TextEditingController();

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  String get _maskedPhone {
    final phone = widget.phone;
    if (phone.length > 4) {
      return '${'*' * (phone.length - 4)}${phone.substring(phone.length - 4)}';
    }
    return phone;
  }

  void _handleVerify() {
    final otp = _pinController.text.trim();
    if (otp.isEmpty) {
      showToast(context, message: 'Please enter the OTP', status: 'error');
      return;
    }
    context.read<SaleBloc>().add(VerifyCustomerOtp(context: context, otp: otp));
  }

  void _handleSkip() {
    Navigator.of(context).pop();
    context.read<SaleBloc>().add(SkipOtpVerification(context: context));
  }

  @override
  Widget build(BuildContext context) {
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

    return BlocListener<SaleBloc, SaleState>(
      listenWhen: (prev, curr) =>
          prev.otpVerified != curr.otpVerified && curr.otpVerified,
      listener: (context, state) {
        Navigator.of(context).pop();
      },
      child: Container(
        padding: EdgeInsets.only(
          left: AppSpacing.lg.w,
          right: AppSpacing.lg.w,
          top: AppSpacing.lg.h,
          bottom: MediaQuery.of(context).viewInsets.bottom + AppSpacing.xl.h,
        ),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
            ),
            SizedBox(height: AppSpacing.lg.h),
            Text(
              'Verify Phone Number',
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
            SizedBox(height: AppSpacing.xs.h),
            Text(
              'Enter the OTP sent to $_maskedPhone',
              style: context.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: AppSpacing.lg.h),
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
              child: BlocBuilder<SaleBloc, SaleState>(
                builder: (context, state) => OtpResendControl(
                  isLoading: state.isLoading,
                  onResend: () {
                    context.read<SaleBloc>().add(
                          SendCustomerOtp(context: context),
                        );
                    _pinController.clear();
                  },
                ),
              ),
            ),
            SizedBox(height: AppSpacing.sm.h),
            BlocBuilder<SaleBloc, SaleState>(
              builder: (context, state) {
                return AppButton(
                  label: 'Verify',
                  isFullWidth: true,
                  isLoading: state.isLoading,
                  onPressed: state.isLoading ? null : _handleVerify,
                );
              },
            ),
            SizedBox(height: AppSpacing.sm.h),
            Center(
              child: TextButton(
                onPressed: _handleSkip,
                child: Text(
                  'Skip & Continue',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
