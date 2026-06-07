import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../../../auth/data/models/pump_info_model.dart';
import '../../data/models/customer_model.dart';
import '../../data/models/fuel_price_model.dart';
import '../../data/models/sale_model.dart';
import '../providers/sale_bloc.dart';
import '../widgets/fuel_type_picker_sheet.dart';
import '../widgets/otp_verification_sheet.dart';
import '../widgets/pump_picker_sheet.dart';

class PurchaseSaleScreen extends StatefulWidget {
  const PurchaseSaleScreen({super.key});

  @override
  State<PurchaseSaleScreen> createState() => _PurchaseSaleScreenState();
}

class _PurchaseSaleScreenState extends State<PurchaseSaleScreen> {
  final _formKey = GlobalKey<FormState>();
  final _vehicleController = TextEditingController();
  final _phoneController = TextEditingController();
  final _amountController = TextEditingController();
  final _discountController = TextEditingController();

  FuelPrice? _selectedFuelPrice;
  bool _usePointsDiscount = false;
  late final List<PumpInfo> _pumps;
  PumpInfo? _selectedPump;

  @override
  void initState() {
    super.initState();
    _pumps = AuthService.instance.getPumpInfoList();
    if (_pumps.length == 1) {
      _selectedPump = _pumps.first;
    }
  }

  @override
  void dispose() {
    _vehicleController.dispose();
    _phoneController.dispose();
    _amountController.dispose();
    _discountController.dispose();
    super.dispose();
  }

  void _lookupCustomer() {
    final plate = _vehicleController.text.trim();
    if (plate.isEmpty) return;
    context.read<SaleBloc>().add(
          LookupCustomerByPlate(context: context, plateNumber: plate),
        );
  }

  void _onVehicleNumberChanged(String value) {
    final bloc = context.read<SaleBloc>();
    final customer = bloc.state.customer;
    if (customer == null) return;

    final edited = value.trim().toUpperCase();
    final lookedUp = (customer.plateNumber ?? '').trim().toUpperCase();
    if (edited != lookedUp) {
      bloc.add(const ClearCustomerLookup());
      _discountController.clear();
      setState(() => _usePointsDiscount = false);
    }
  }

  void _syncDiscountFromCustomer(Customer? customer) {
    if (customer != null && customer.hasInsurancePoints) {
      _discountController.text = _formatPoints(customer.insurancePoints);
    } else {
      _discountController.clear();
      _usePointsDiscount = false;
    }
  }

  String _formatPoints(double points) {
    if (points == points.truncateToDouble()) {
      return points.toInt().toString();
    }
    return points.toStringAsFixed(2);
  }

  void _handleContinue() {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final bloc = context.read<SaleBloc>();
    final state = bloc.state;

    if (_selectedFuelPrice == null) {
      showToast(context, message: 'Please select a fuel type', status: 'error');
      return;
    }

    if (_pumps.isEmpty) {
      showToast(
        context,
        message:
            'No pumps assigned to this attendant. Contact your supervisor.',
        status: 'error',
      );
      return;
    }

    if (_selectedPump == null) {
      showToast(context, message: 'Please select a pump', status: 'error');
      return;
    }

    final amount = double.tryParse(_amountController.text.trim()) ?? 0;
    if (amount <= 0) {
      showToast(context, message: 'Please enter an amount', status: 'error');
      return;
    }

    final customer = state.customer;
    final discount =
        customer != null && customer.hasInsurancePoints && _usePointsDiscount
            ? customer.insurancePoints
            : 0.0;

    final pumpId = _selectedPump!.id;

    if (state.sale != null) {
      context.push(AppRoutes.paymentMethod);
      return;
    }

    if (state.isNewCustomer) {
      final phone = _phoneController.text.trim();
      if (phone.isEmpty) {
        showToast(context,
            message: 'Please enter customer phone number', status: 'error');
        return;
      }
      final plate = _vehicleController.text.trim();

      if (state.customer != null) {
        if (state.otpPending && !state.otpVerified) {
          _showOtpSheet();
        } else {
          bloc.add(
            CreateSaleRequested(
              context: context,
              request: CreateSaleRequest(
                fuelPriceId: _selectedFuelPrice!.id,
                customerId: state.customer!.id,
                pumpId: pumpId,
                amount: amount,
                usePointsDiscount: _usePointsDiscount,
                discount: discount,
              ),
            ),
          );
        }
        return;
      }

      bloc.add(
        CreateCustomerRequested(
          context: context,
          phone: phone,
          plateNumber: plate,
          pendingSaleRequest: CreateSaleRequest(
            fuelPriceId: _selectedFuelPrice!.id,
            customerId: '',
            pumpId: pumpId,
            amount: amount,
            usePointsDiscount: _usePointsDiscount,
            discount: discount,
          ),
        ),
      );
    } else {
      if (customer == null) {
        showToast(context,
            message: 'Please enter a valid vehicle number', status: 'error');
        return;
      }

      if (!customer.isVerified) {
        final pendingSaleRequest = CreateSaleRequest(
          fuelPriceId: _selectedFuelPrice!.id,
          customerId: customer.id,
          pumpId: pumpId,
          amount: amount,
          usePointsDiscount: _usePointsDiscount,
          discount: discount,
        );

        if (state.otpPending && !state.otpVerified) {
          bloc.add(
            CreateCustomerRequested(
              context: context,
              phone: customer.phone,
              plateNumber:
                  customer.plateNumber ?? _vehicleController.text.trim(),
              pendingSaleRequest: pendingSaleRequest,
            ),
          );
          _showOtpSheet();
        } else if (!state.otpVerified) {
          bloc.add(
            CreateCustomerRequested(
              context: context,
              phone: customer.phone,
              plateNumber:
                  customer.plateNumber ?? _vehicleController.text.trim(),
              pendingSaleRequest: pendingSaleRequest,
            ),
          );
        } else {
          bloc.add(
            CreateSaleRequested(
              context: context,
              request: pendingSaleRequest,
            ),
          );
        }
        return;
      }

      bloc.add(
        CreateSaleRequested(
          context: context,
          request: CreateSaleRequest(
            fuelPriceId: _selectedFuelPrice!.id,
            customerId: customer.id,
            pumpId: pumpId,
            amount: amount,
            usePointsDiscount: _usePointsDiscount,
            discount: discount,
          ),
        ),
      );
    }
  }

  void _showOtpSheet() {
    final bloc = context.read<SaleBloc>();
    final phone = bloc.state.customer?.phone ?? _phoneController.text.trim();
    showAppSheet<void>(
      child: OtpVerificationSheet(phone: phone),
    );
  }

  Future<void> _showFuelTypePicker() async {
    final selected = await showAppSheet<FuelPrice>(
      child: FuelTypePickerSheet(selected: _selectedFuelPrice),
    );
    if (selected != null) {
      setState(() => _selectedFuelPrice = selected);
    }
  }

  Future<void> _showPumpPicker() async {
    if (_pumps.length <= 1) return;
    final selected = await showAppSheet<PumpInfo>(
      child: PumpPickerSheet(pumps: _pumps, selected: _selectedPump),
    );
    if (selected != null) {
      setState(() => _selectedPump = selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SaleBloc, SaleState>(
          listenWhen: (prev, curr) => !prev.otpPending && curr.otpPending,
          listener: (context, state) => _showOtpSheet(),
        ),
        BlocListener<SaleBloc, SaleState>(
          listenWhen: (prev, curr) => prev.customer != curr.customer,
          listener: (context, state) {
            _syncDiscountFromCustomer(state.customer);
            final plate = state.customer?.plateNumber;
            if (plate != null && plate.isNotEmpty) {
              _vehicleController.text = plate;
            }
          },
        ),
        BlocListener<SaleBloc, SaleState>(
          listenWhen: (prev, curr) => prev.sale == null && curr.sale != null,
          listener: (context, state) {
            context.push(AppRoutes.paymentMethod);
          },
        ),
      ],
      child: BlocBuilder<SaleBloc, SaleState>(
        builder: (context, state) {
          final colorScheme = context.colors;

          return Scaffold(
            appBar: AppTopBar(
              showBack: false,
              actions: [
                if (state.otpPending && !state.otpVerified)
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
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
                body: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: AppSpacing.md.h),
                      _VehicleNumberField(
                        controller: _vehicleController,
                        customer: state.customer,
                        onLookup: _lookupCustomer,
                        onChanged: _onVehicleNumberChanged,
                        isLoading: state.isLoading,
                      ),
                      SizedBox(height: AppSpacing.md.h),
                      _PhoneField(
                        controller: _phoneController,
                        customer: state.customer,
                        isNewCustomer: state.isNewCustomer,
                      ),
                      SizedBox(height: AppSpacing.md.h),
                      _FuelTypeField(
                        selectedFuelPrice: _selectedFuelPrice,
                        onTap: _showFuelTypePicker,
                      ),
                      if (_pumps.isNotEmpty) ...[
                        SizedBox(height: AppSpacing.md.h),
                        _PumpField(
                          pumps: _pumps,
                          selectedPump: _selectedPump,
                          onTap: _pumps.length > 1 ? _showPumpPicker : null,
                        ),
                      ],
                      SizedBox(height: AppSpacing.md.h),
                      _AmountField(controller: _amountController),
                      if (state.customer?.hasInsurancePoints ?? false) ...[
                        SizedBox(height: AppSpacing.md.h),
                        _DiscountSection(
                          insurancePoints: state.customer!.insurancePoints,
                          usePoints: _usePointsDiscount,
                          onTogglePoints: (val) {
                            setState(() => _usePointsDiscount = val);
                          },
                        ),
                      ],
                    ],
                  ),
                ),
                footer: AppButton(
                  label: 'Continue',
                  isFullWidth: true,
                  isLoading: state.isLoading,
                  onPressed: state.isLoading ? null : _handleContinue,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

String _maskPhoneForDisplay(String phone) {
  final digits = phone.replaceAll(RegExp(r'\D'), '');
  if (digits.isEmpty) return '---';
  if (digits.length <= 4) return digits;
  final last4 = digits.substring(digits.length - 4);
  return '**** **** **** $last4';
}

/// Flat inline fields: no border at rest; primary underline when focused.
InputDecoration _saleInlineInputDecoration(
  ColorScheme colorScheme, {
  String? hintText,
  TextStyle? hintStyle,
}) {
  const none = InputBorder.none;
  final focused = UnderlineInputBorder(
    borderSide: BorderSide(color: colorScheme.primary, width: 2),
  );
  final error = UnderlineInputBorder(
    borderSide: BorderSide(color: colorScheme.error, width: 2),
  );

  return InputDecoration(
    filled: false,
    isDense: true,
    contentPadding: EdgeInsets.only(bottom: AppSpacing.xs.h),
    border: none,
    enabledBorder: none,
    disabledBorder: none,
    focusedBorder: focused,
    errorBorder: error,
    focusedErrorBorder: error,
    hintText: hintText,
    hintStyle: hintStyle,
  );
}

/// Hallmark · component: purchase-sale form field · genre: utilitarian · theme: project tokens
class _SaleFormCard extends StatelessWidget {
  const _SaleFormCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: child,
    );
  }
}

class _SaleFieldLabel extends StatelessWidget {
  const _SaleFieldLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;
    return Padding(
      padding: EdgeInsets.only(left: AppSpacing.xs.w, bottom: AppSpacing.xs.h),
      child: Text(
        text,
        style: context.textTheme.bodySmall?.copyWith(
          color: colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _VehicleNumberField extends StatelessWidget {
  const _VehicleNumberField({
    required this.controller,
    required this.customer,
    required this.onLookup,
    required this.onChanged,
    required this.isLoading,
  });

  final TextEditingController controller;
  final Customer? customer;
  final VoidCallback onLookup;
  final ValueChanged<String> onChanged;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;
    final valueStyle = context.textTheme.headlineSmall?.copyWith(
      fontWeight: FontWeight.w700,
      color: colorScheme.onSurface,
      height: 1.2,
    );

    final fieldColumn = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vehicle Number',
          style: context.textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: AppSpacing.xs.h),
        TextField(
          controller: controller,
          style: valueStyle,
          textCapitalization: TextCapitalization.characters,
          decoration: _saleInlineInputDecoration(
            colorScheme,
            hintText: 'GS-000-00',
            hintStyle: valueStyle?.copyWith(
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.45),
              fontWeight: FontWeight.w600,
            ),
          ),
          onChanged: onChanged,
          onSubmitted: (_) => onLookup(),
        ),
      ],
    );

    if (customer != null) {
      return _SaleFormCard(child: fieldColumn);
    }

    return _SaleFormCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: fieldColumn),
          if (isLoading)
            SizedBox(
              width: 36.r,
              height: 36.r,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: colorScheme.primary,
              ),
            )
          else
            Semantics(
              button: true,
              label: 'Look up vehicle',
              child: GestureDetector(
                onTap: onLookup,
                child: CircleAvatar(
                  radius: 18.r,
                  backgroundColor: colorScheme.surfaceContainerHighest,
                  child: Icon(
                    Icons.search,
                    size: 18.sp,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _PhoneField extends StatelessWidget {
  const _PhoneField({
    required this.controller,
    required this.customer,
    required this.isNewCustomer,
  });

  final TextEditingController controller;
  final Customer? customer;
  final bool isNewCustomer;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;
    final labelStyle = context.textTheme.bodySmall?.copyWith(
      color: colorScheme.onSurfaceVariant,
      fontWeight: FontWeight.w500,
    );
    final valueStyle = context.textTheme.headlineSmall?.copyWith(
      fontWeight: FontWeight.w700,
      color: colorScheme.onSurface,
      height: 1.2,
    );

    final fieldColumn = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone Number', style: labelStyle),
        SizedBox(height: AppSpacing.xs.h),
        if (isNewCustomer && customer == null)
          TextField(
            controller: controller,
            keyboardType: TextInputType.phone,
            style: valueStyle,
            decoration: _saleInlineInputDecoration(
              colorScheme,
              hintText: '+233...',
              hintStyle: valueStyle?.copyWith(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.45),
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        else
          Text(
            _maskPhoneForDisplay(customer?.phone ?? ''),
            style: valueStyle,
          ),
      ],
    );

    return _SaleFormCard(child: fieldColumn);
  }
}

class _FuelTypeField extends StatelessWidget {
  const _FuelTypeField({
    required this.selectedFuelPrice,
    required this.onTap,
  });

  final FuelPrice? selectedFuelPrice;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;
    final hasSelection = selectedFuelPrice != null;
    final label = selectedFuelPrice?.fuelType ?? 'Select fuel type';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SaleFieldLabel('Fuel Type'),
        Material(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(12.r),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12.r),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.md.w,
                vertical: AppSpacing.md.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: colorScheme.outlineVariant),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      label,
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: hasSelection
                            ? colorScheme.onSurface
                            : colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  if (!hasSelection)
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: colorScheme.onSurfaceVariant,
                      size: 22.sp,
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PumpField extends StatelessWidget {
  const _PumpField({
    required this.pumps,
    required this.selectedPump,
    required this.onTap,
  });

  final List<PumpInfo> pumps;
  final PumpInfo? selectedPump;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;
    final hasMultiple = pumps.length > 1;
    final label =
        selectedPump?.displayLabel ?? (hasMultiple ? 'Select pump' : 'Pump');
    final canSelect = hasMultiple && onTap != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SaleFieldLabel('Pump'),
        Material(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(12.r),
          child: InkWell(
            onTap: canSelect ? onTap : null,
            borderRadius: BorderRadius.circular(12.r),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.md.w,
                vertical: AppSpacing.md.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: colorScheme.outlineVariant),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      label,
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: selectedPump != null
                            ? colorScheme.onSurface
                            : colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  if (canSelect)
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: colorScheme.onSurfaceVariant,
                      size: 22.sp,
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _AmountField extends StatelessWidget {
  const _AmountField({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SaleFieldLabel('Amount (GHC)'),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.md.w,
            vertical: AppSpacing.md.h,
          ),
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: colorScheme.outlineVariant),
          ),
          child: TextField(
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface,
            ),
            decoration: _saleInlineInputDecoration(
              colorScheme,
              hintText: '0.00',
              hintStyle: context.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.45),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DiscountSection extends StatelessWidget {
  const _DiscountSection({
    required this.insurancePoints,
    required this.usePoints,
    required this.onTogglePoints,
  });

  final double insurancePoints;
  final bool usePoints;
  final ValueChanged<bool> onTogglePoints;

  String get _formattedPoints {
    if (insurancePoints == insurancePoints.truncateToDouble()) {
      return insurancePoints.toInt().toString();
    }
    return insurancePoints.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;
    final actionLabel = usePoints ? 'Applied' : 'Apply';

    return _SaleFormCard(
      child: Row(
        children: [
          Container(
            width: 40.r,
            height: 40.r,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.card_giftcard_outlined,
              size: 22.sp,
              color: colorScheme.onSurface,
            ),
          ),
          SizedBox(width: AppSpacing.ms.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discount',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: colorScheme.onSurface,
                  ),
                ),
                Text(
                  'GHC$_formattedPoints',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Semantics(
            button: true,
            label: usePoints ? 'Discount applied' : 'Apply discount',
            child: GestureDetector(
              onTap: () => onTogglePoints(!usePoints),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.xs.w,
                  vertical: AppSpacing.xs.h,
                ),
                child: Text(
                  actionLabel,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
