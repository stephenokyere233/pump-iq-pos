import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../../data/models/sale_model.dart';
import '../providers/sale_bloc.dart';
import '../widgets/otp_verification_sheet.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  PaymentMethod _selected = PaymentMethod.momo;
  bool _useCustomerPhone = true;
  final _customPhoneController = TextEditingController();

  @override
  void dispose() {
    _customPhoneController.dispose();
    super.dispose();
  }

  String _paymentPhone(SaleState state) {
    if (_useCustomerPhone) {
      return state.customer?.phone ?? '';
    }
    return _customPhoneController.text.trim();
  }

  void _clearMomoValidation() {
    context.read<SaleBloc>().add(const ClearMomoValidation());
  }

  bool get _canContinueMomo {
    final state = context.read<SaleBloc>().state;
    return state.isAccountValidated && !state.isValidatingAccount;
  }

  bool get _canContinue {
    if (_selected == PaymentMethod.momo) {
      return _canContinueMomo;
    }
    return true;
  }

  void _handleContinue() {
    final bloc = context.read<SaleBloc>();
    switch (_selected) {
      case PaymentMethod.cash:
        bloc.add(PayWithCash(context: context));
        break;
      case PaymentMethod.momo:
        final provider = bloc.state.selectedMomoProvider;
        final phone = _paymentPhone(bloc.state);
        if (provider == null || phone.isEmpty) return;
        bloc.add(PayWithMomo(
          context: context,
          phone: phone,
          provider: provider.bankCode,
        ));
        break;
      case PaymentMethod.card:
        bloc.add(PayWithCard(context: context));
        break;
    }
  }

  void _onProviderChanged(MomoProvider? provider) {
    if (provider == null) return;
    final bloc = context.read<SaleBloc>();
    final phone = _paymentPhone(bloc.state);
    if (phone.isEmpty) {
      showToast(
        context,
        message: _useCustomerPhone
            ? 'Customer phone is required'
            : 'Please enter a MoMo phone number',
        status: 'error',
      );
      return;
    }
    bloc.add(ValidateMomoAccount(
      context: context,
      customerNumber: phone,
      provider: provider,
    ));
  }

  void _onUseCustomerPhoneChanged(bool value) {
    setState(() => _useCustomerPhone = value);
    _clearMomoValidation();
    final bloc = context.read<SaleBloc>();
    final provider = bloc.state.selectedMomoProvider;
    if (provider == null) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final phone = _paymentPhone(bloc.state);
      if (phone.isNotEmpty) _onProviderChanged(provider);
    });
  }

  void _onCustomPhoneChanged(String _) {
    _clearMomoValidation();
  }

  void _showOtpSheet() {
    final bloc = context.read<SaleBloc>();
    final phone = bloc.state.customer?.phone ?? '';
    showAppSheet<void>(
      child: OtpVerificationSheet(phone: phone),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((SaleBloc b) => b.state.isPaymentLoading);
    final otpPending = context.select((SaleBloc b) => b.state.otpPending);
    final otpVerified = context.select((SaleBloc b) => b.state.otpVerified);
    final isValidatingAccount =
        context.select((SaleBloc b) => b.state.isValidatingAccount);
    final validatedAccountName =
        context.select((SaleBloc b) => b.state.validatedAccountName);
    final selectedMomoProvider =
        context.select((SaleBloc b) => b.state.selectedMomoProvider);
    final customerPhone =
        context.select((SaleBloc b) => b.state.customer?.phone ?? '');

    final continueEnabled = _canContinue && !isLoading && !isValidatingAccount;
    final colorScheme = context.colors;

    return Scaffold(
      appBar: AppTopBar(
        actions: [
          if (otpPending && !otpVerified)
            IconButton(
              onPressed: _showOtpSheet,
              icon: Icon(
                Icons.verified_user_outlined,
                color: colorScheme.primary,
                size: 22.sp,
              ),
              tooltip: 'Verify Customer',
            ),
        ],
      ),
      body: SafeArea(
        child: StickyFooterLayout(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSpacing.md.h),
              Text(
                'Payment Method',
                style: context.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              SizedBox(height: AppSpacing.sm.h),
              Text(
                'Select how the customer would like to pay for this transaction.',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              SizedBox(height: AppSpacing.xxl.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _PaymentOption(
                    icon: Icons.payments_outlined,
                    label: 'Cash',
                    isSelected: _selected == PaymentMethod.cash,
                    onTap: () => setState(() => _selected = PaymentMethod.cash),
                  ),
                  SizedBox(width: AppSpacing.lg.w),
                  _PaymentOption(
                    icon: Icons.phone_android,
                    label: 'MOMO',
                    isSelected: _selected == PaymentMethod.momo,
                    onTap: () => setState(() => _selected = PaymentMethod.momo),
                  ),
                  SizedBox(width: AppSpacing.lg.w),
                  _PaymentOption(
                    icon: Icons.credit_card,
                    label: 'Card',
                    isSelected: _selected == PaymentMethod.card,
                    onTap: () => setState(() => _selected = PaymentMethod.card),
                  ),
                ],
              ),
              if (_selected == PaymentMethod.momo) ...[
                SizedBox(height: AppSpacing.xxl.h),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Use customer account number',
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: colorScheme.onSurface,
                        ),
                      ),
                    ),
                    Switch(
                      value: _useCustomerPhone,
                      onChanged: isValidatingAccount
                          ? null
                          : _onUseCustomerPhoneChanged,
                      activeColor: colorScheme.primary,
                    ),
                  ],
                ),
                if (_useCustomerPhone) ...[
                  if (customerPhone.isNotEmpty) ...[
                    SizedBox(height: AppSpacing.sm.h),
                    Text(
                      customerPhone,
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ] else
                    Text(
                      'No phone on customer account',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                ] else ...[
                  SizedBox(height: AppSpacing.sm.h),
                  TextField(
                    controller: _customPhoneController,
                    keyboardType: TextInputType.phone,
                    onChanged: _onCustomPhoneChanged,
                    decoration: InputDecoration(
                      hintText: 'Enter MoMo phone number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: colorScheme.outline),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide:
                            BorderSide(color: colorScheme.primary, width: 2),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.md.w,
                        vertical: AppSpacing.sm.h,
                      ),
                    ),
                  ),
                ],
                SizedBox(height: AppSpacing.lg.h),
                Text(
                  'MoMo Provider',
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: AppSpacing.sm.h),
                DropdownButtonFormField<MomoProvider>(
                  value: selectedMomoProvider,
                  decoration: InputDecoration(
                    hintText: 'Select provider',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(color: colorScheme.outline),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide:
                          BorderSide(color: colorScheme.primary, width: 2),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.md.w,
                      vertical: AppSpacing.sm.h,
                    ),
                  ),
                  items: MomoProvider.values
                      .map(
                        (p) => DropdownMenuItem(
                          value: p,
                          child: Text(p.label),
                        ),
                      )
                      .toList(),
                  onChanged: isValidatingAccount ? null : _onProviderChanged,
                ),
                if (isValidatingAccount) ...[
                  SizedBox(height: AppSpacing.md.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 18.r,
                        height: 18.r,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: colorScheme.primary,
                        ),
                      ),
                      SizedBox(width: AppSpacing.sm.w),
                      Text(
                        'Verifying account...',
                        style: context.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ],
                if (validatedAccountName != null &&
                    validatedAccountName.isNotEmpty) ...[
                  SizedBox(height: AppSpacing.md.h),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(AppSpacing.md.w),
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: colorScheme.primary.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: colorScheme.primary,
                          size: 20.sp,
                        ),
                        SizedBox(width: AppSpacing.sm.w),
                        Expanded(
                          child: Text(
                            'Account: $validatedAccountName',
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ],
          ),
          footer: AppButton(
            label: 'Continue',
            isFullWidth: true,
            isLoading: isLoading,
            onPressed: continueEnabled ? _handleContinue : null,
          ),
        ),
      ),
    );
  }
}

class _PaymentOption extends StatelessWidget {
  const _PaymentOption({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              AnimatedContainer(
                duration: AppDurations.fast,
                width: 80.w,
                height: 80.h,
                decoration: BoxDecoration(
                  color: isSelected
                      ? colorScheme.primary
                      : colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: isSelected
                        ? colorScheme.primary
                        : colorScheme.outlineVariant,
                    width: isSelected ? 2 : 1,
                  ),
                ),
                child: Icon(
                  icon,
                  size: 32.sp,
                  color: isSelected
                      ? colorScheme.onPrimary
                      : colorScheme.onSurfaceVariant,
                ),
              ),
              if (isSelected)
                Positioned(
                  top: -6.h,
                  right: -6.w,
                  child: Container(
                    width: 22.r,
                    height: 22.r,
                    decoration: BoxDecoration(
                      color: context.appColors.success,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check,
                      size: 14.sp,
                      color: context.appColors.onSuccess,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: AppSpacing.sm.h),
          Text(
            label,
            style: context.textTheme.bodySmall?.copyWith(
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.onSurfaceVariant,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
