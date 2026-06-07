import 'package:pump_iq/src/features/auth/data/models/user_model.dart';
import 'package:pump_iq/src/features/auth/presentation/providers/session_bloc.dart';
import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../../data/models/sale_model.dart';
import '../providers/sale_bloc.dart';
import '../widgets/otp_verification_sheet.dart';

class TransactionCompleteScreen extends StatefulWidget {
  const TransactionCompleteScreen({super.key});

  @override
  State<TransactionCompleteScreen> createState() =>
      _TransactionCompleteScreenState();
}

class _TransactionCompleteScreenState extends State<TransactionCompleteScreen> {
  final _printReceiptKey = GlobalKey();
  bool _isPrinting = false;

  void _handleComplete(BuildContext context) {
    context.read<SaleBloc>().add(const ResetSale());
    context.read<SessionBloc>().add(const SessionLogoutRequested());
  }

  void _showOtpSheet(BuildContext context) {
    final bloc = context.read<SaleBloc>();
    final phone = bloc.state.customer?.phone ?? '';
    showAppSheet<void>(
      child: OtpVerificationSheet(phone: phone),
    );
  }

  Future<void> _handlePrintReceipt(BuildContext context) async {
    final saleState = context.read<SaleBloc>().state;
    final sale = saleState.sale;
    if (sale == null) {
      showToast(
        context,
        message: 'Sale details are not available for this receipt',
        status: 'error',
      );
      return;
    }

    final shareOrigin = ShareService.sharePositionOriginFor(
      context,
      anchorContext: _printReceiptKey.currentContext,
    );

    setState(() => _isPrinting = true);

    final sessionUser = context.read<SessionBloc>().state.user;
    final input = _buildReceiptInput(saleState, sessionUser);

    final generateResult =
        await ReceiptService.instance.generateReceiptPdfFile(input);

    if (!context.mounted) return;

    await generateResult.fold(
      (failure) async {
        showToast(context, message: failure.message, status: 'error');
      },
      (filePath) async {
        final preview =
            'Receipt for sale ${sale.id} — ${input.currencySymbol} ${input.totalAmount.toStringAsFixed(2)}';
        final shareResult = await ShareService.instance.shareReceiptFile(
          filePath,
          previewText: preview,
          sharePositionOrigin: shareOrigin,
        );

        if (!context.mounted) return;

        shareResult.fold(
          (failure) => showToast(
            context,
            message: failure.message,
            status: 'error',
          ),
          (_) {},
        );
      },
    );

    if (mounted) {
      setState(() => _isPrinting = false);
    }
  }

  ReceiptInput _buildReceiptInput(SaleState saleState, AppUser? user) {
    final sale = saleState.sale!;
    final customer = saleState.customer;

    return ReceiptInput(
      saleId: sale.id,
      fuelType: sale.fuelType,
      litres: sale.litres,
      unitPrice: sale.unitPrice,
      price: sale.price,
      discount: sale.discount,
      netPrice: sale.netPrice,
      currencySymbol: sale.currencySymbol ?? 'GHS',
      stationName: sale.stationName ?? user?.stationName,
      pumpAttendantName: sale.pumpAttendantName ?? user?.name,
      createdAt: sale.createdAt,
      pointsEarned: sale.pointsEarned,
      customerName: sale.customerName ?? customer?.name,
      customerPlate: customer?.plateNumber,
      customerPhone: customer?.phone,
      paymentMethodLabel: _paymentMethodLabel(saleState),
      paymentReference: _paymentReference(saleState),
      momoPhone: saleState.momoPhone,
      momoProviderLabel: _momoProviderLabel(saleState),
      momoChargeStatusLabel: saleState.momoChargeStatus?.apiValue,
      cardReference: saleState.cardReference,
      cardAuthorizationUrl: saleState.cardAuthorizationUrl,
    );
  }

  String _paymentMethodLabel(SaleState state) {
    return switch (state.selectedPaymentMethod) {
      PaymentMethod.cash => 'Cash',
      PaymentMethod.momo => 'MoMo',
      PaymentMethod.card => 'Card',
      null => state.sale?.paymentMethod ?? 'Unknown',
    };
  }

  String? _paymentReference(SaleState state) {
    return state.paymentReference ?? state.momoReference ?? state.cardReference;
  }

  String? _momoProviderLabel(SaleState state) {
    return state.selectedMomoProvider?.label ?? state.momoProviderCode;
  }

  @override
  Widget build(BuildContext context) {
    final otpPending = context.select((SaleBloc b) => b.state.otpPending);
    final otpVerified = context.select((SaleBloc b) => b.state.otpVerified);
    final sale = context.select((SaleBloc b) => b.state.sale);
    final colorScheme = context.colors;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppTopBar(
        showBack: false,
        isTransparent: true,
        foregroundColor: colorScheme.onPrimary,
        actions: [
          if (otpPending && !otpVerified)
            IconButton(
              onPressed: () => _showOtpSheet(context),
              icon: Icon(
                Icons.verified_user_outlined,
                color: colorScheme.onPrimary,
                size: 22.sp,
              ),
              tooltip: 'Verify Customer',
            ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: AppSpacing.xl.h,
                  horizontal: AppSpacing.lg.w,
                ),
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _SuccessIcon(colorScheme: colorScheme),
                    SizedBox(height: AppSpacing.xl.h),
                    Text(
                      'Transaction Complete',
                      textAlign: TextAlign.center,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: AppSpacing.xl.h),
                    AppButton(
                      key: _printReceiptKey,
                      label: 'Print Receipt',
                      variant: ButtonVariant.outline,
                      isFullWidth: true,
                      isLoading: _isPrinting,
                      prefixIcon: Icon(
                        Icons.print_outlined,
                        size: 20.sp,
                        color: colorScheme.primary,
                      ),
                      onPressed: sale == null || _isPrinting
                          ? null
                          : () => _handlePrintReceipt(context),
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    AppButton(
                      label: 'Complete',
                      isFullWidth: true,
                      onPressed:
                          _isPrinting ? null : () => _handleComplete(context),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class _SuccessIcon extends StatelessWidget {
  const _SuccessIcon({required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.r,
      height: 120.r,
      child: Center(
        child: Image.asset(
          'assets/images/gift.png',
          width: 120.r,
          height: 120.r,
        ),
      ),
    );
  }
}
