import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../../data/models/customer_model.dart';
import '../../data/models/fuel_price_model.dart';
import '../../data/models/sale_model.dart';
import '../../data/repositories/sale_repository.dart';

// ─── Events ──────────────────────────────────────────────────────────────────

abstract class SaleEvent extends Equatable {
  const SaleEvent();
  @override
  List<Object?> get props => [];
}

class LookupCustomerByPlate extends SaleEvent {
  final BuildContext context;
  final String plateNumber;
  const LookupCustomerByPlate(
      {required this.context, required this.plateNumber});
}

class ClearCustomerLookup extends SaleEvent {
  const ClearCustomerLookup();
}

class LoadActiveFuelPrices extends SaleEvent {
  const LoadActiveFuelPrices();
}

class CreateSaleRequested extends SaleEvent {
  final BuildContext context;
  final CreateSaleRequest request;
  const CreateSaleRequested({required this.context, required this.request});
}

class CreateCustomerRequested extends SaleEvent {
  final BuildContext context;
  final String phone;
  final String plateNumber;
  final CreateSaleRequest pendingSaleRequest;
  const CreateCustomerRequested({
    required this.context,
    required this.phone,
    required this.plateNumber,
    required this.pendingSaleRequest,
  });
}

class SendCustomerOtp extends SaleEvent {
  final BuildContext context;
  const SendCustomerOtp({required this.context});
}

class VerifyCustomerOtp extends SaleEvent {
  final BuildContext context;
  final String otp;
  const VerifyCustomerOtp({required this.context, required this.otp});
}

class SkipOtpVerification extends SaleEvent {
  final BuildContext context;
  const SkipOtpVerification({required this.context});
}

class PayWithCash extends SaleEvent {
  final BuildContext context;
  const PayWithCash({required this.context});
}

class ValidateMomoAccount extends SaleEvent {
  final BuildContext context;
  final String customerNumber;
  final MomoProvider provider;
  const ValidateMomoAccount({
    required this.context,
    required this.customerNumber,
    required this.provider,
  });

  @override
  List<Object?> get props => [customerNumber, provider];
}

class PayWithMomo extends SaleEvent {
  final BuildContext context;
  final String phone;
  final String provider;
  const PayWithMomo({
    required this.context,
    required this.phone,
    required this.provider,
  });
}

class SubmitMomoOtp extends SaleEvent {
  final BuildContext context;
  final String otp;
  const SubmitMomoOtp({required this.context, required this.otp});
}

class VerifyMomoPending extends SaleEvent {
  final BuildContext context;
  const VerifyMomoPending({required this.context});
}

class PayWithCard extends SaleEvent {
  final BuildContext context;
  const PayWithCard({required this.context});
}

class VerifyCardPayment extends SaleEvent {
  final BuildContext context;
  const VerifyCardPayment({required this.context});
}

class ResendMomoCharge extends SaleEvent {
  final BuildContext context;
  const ResendMomoCharge({required this.context});
}

class ClearMomoValidation extends SaleEvent {
  const ClearMomoValidation();
}

class ResetSale extends SaleEvent {
  const ResetSale();
}

// ─── State ───────────────────────────────────────────────────────────────────

class SaleState extends Equatable {
  final bool isLoading;
  final bool isPaymentLoading;
  final bool isFuelPricesLoading;
  final Customer? customer;
  final List<FuelPrice> fuelPrices;
  final Sale? sale;
  final PaymentMethod? selectedPaymentMethod;
  final bool isTransactionComplete;
  final String? paymentReference;
  final bool isNewCustomer;
  final bool otpPending;
  final bool otpVerified;
  final CreateSaleRequest? pendingSaleRequest;
  final MomoProvider? selectedMomoProvider;
  final String? validatedAccountName;
  final bool isAccountValidated;
  final bool isValidatingAccount;
  final MomoChargeStatus? momoChargeStatus;
  final String? momoReference;
  final String? momoPhone;
  final String? momoProviderCode;
  final String? cardAuthorizationUrl;
  final String? cardReference;

  const SaleState({
    this.isLoading = false,
    this.isPaymentLoading = false,
    this.isFuelPricesLoading = false,
    this.customer,
    this.fuelPrices = const [],
    this.sale,
    this.selectedPaymentMethod,
    this.isTransactionComplete = false,
    this.paymentReference,
    this.isNewCustomer = false,
    this.otpPending = false,
    this.otpVerified = false,
    this.pendingSaleRequest,
    this.selectedMomoProvider,
    this.validatedAccountName,
    this.isAccountValidated = false,
    this.isValidatingAccount = false,
    this.momoChargeStatus,
    this.momoReference,
    this.momoPhone,
    this.momoProviderCode,
    this.cardAuthorizationUrl,
    this.cardReference,
  });

  const SaleState.initial()
      : isLoading = false,
        isPaymentLoading = false,
        isFuelPricesLoading = false,
        customer = null,
        fuelPrices = const [],
        sale = null,
        selectedPaymentMethod = null,
        isTransactionComplete = false,
        paymentReference = null,
        isNewCustomer = false,
        otpPending = false,
        otpVerified = false,
        pendingSaleRequest = null,
        selectedMomoProvider = null,
        validatedAccountName = null,
        isAccountValidated = false,
        isValidatingAccount = false,
        momoChargeStatus = null,
        momoReference = null,
        momoPhone = null,
        momoProviderCode = null,
        cardAuthorizationUrl = null,
        cardReference = null;

  SaleState copyWith({
    bool? isLoading,
    bool? isPaymentLoading,
    bool? isFuelPricesLoading,
    Customer? customer,
    List<FuelPrice>? fuelPrices,
    Sale? sale,
    PaymentMethod? selectedPaymentMethod,
    bool? isTransactionComplete,
    String? paymentReference,
    bool? isNewCustomer,
    bool? otpPending,
    bool? otpVerified,
    CreateSaleRequest? pendingSaleRequest,
    MomoProvider? selectedMomoProvider,
    String? validatedAccountName,
    bool? isAccountValidated,
    bool? isValidatingAccount,
    MomoChargeStatus? momoChargeStatus,
    String? momoReference,
    String? momoPhone,
    String? momoProviderCode,
    String? cardAuthorizationUrl,
    String? cardReference,
    bool clearCustomer = false,
    bool clearSale = false,
    bool clearPendingSaleRequest = false,
    bool clearMomoValidation = false,
  }) {
    return SaleState(
      isLoading: isLoading ?? this.isLoading,
      isPaymentLoading: isPaymentLoading ?? this.isPaymentLoading,
      isFuelPricesLoading: isFuelPricesLoading ?? this.isFuelPricesLoading,
      customer: clearCustomer ? null : (customer ?? this.customer),
      fuelPrices: fuelPrices ?? this.fuelPrices,
      sale: clearSale ? null : (sale ?? this.sale),
      selectedPaymentMethod:
          selectedPaymentMethod ?? this.selectedPaymentMethod,
      isTransactionComplete:
          isTransactionComplete ?? this.isTransactionComplete,
      paymentReference: paymentReference ?? this.paymentReference,
      isNewCustomer: isNewCustomer ?? this.isNewCustomer,
      otpPending: otpPending ?? this.otpPending,
      otpVerified: otpVerified ?? this.otpVerified,
      pendingSaleRequest: clearPendingSaleRequest
          ? null
          : (pendingSaleRequest ?? this.pendingSaleRequest),
      selectedMomoProvider: clearMomoValidation
          ? null
          : (selectedMomoProvider ?? this.selectedMomoProvider),
      validatedAccountName: clearMomoValidation
          ? null
          : (validatedAccountName ?? this.validatedAccountName),
      isAccountValidated: clearMomoValidation
          ? false
          : (isAccountValidated ?? this.isAccountValidated),
      isValidatingAccount: isValidatingAccount ?? this.isValidatingAccount,
      momoChargeStatus: momoChargeStatus ?? this.momoChargeStatus,
      momoReference: momoReference ?? this.momoReference,
      momoPhone: momoPhone ?? this.momoPhone,
      momoProviderCode: momoProviderCode ?? this.momoProviderCode,
      cardAuthorizationUrl: cardAuthorizationUrl ?? this.cardAuthorizationUrl,
      cardReference: cardReference ?? this.cardReference,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        isPaymentLoading,
        isFuelPricesLoading,
        customer,
        fuelPrices,
        sale,
        selectedPaymentMethod,
        isTransactionComplete,
        paymentReference,
        isNewCustomer,
        otpPending,
        otpVerified,
        pendingSaleRequest,
        selectedMomoProvider,
        validatedAccountName,
        isAccountValidated,
        isValidatingAccount,
        momoChargeStatus,
        momoReference,
        momoPhone,
        momoProviderCode,
        cardAuthorizationUrl,
        cardReference,
      ];
}

// ─── Bloc ────────────────────────────────────────────────────────────────────

class SaleBloc extends Bloc<SaleEvent, SaleState> {
  final SaleRepository _repository;

  SaleBloc({required SaleRepository repository})
      : _repository = repository,
        super(const SaleState.initial()) {
    on<LookupCustomerByPlate>(_onLookupCustomer);
    on<ClearCustomerLookup>(_onClearCustomerLookup);
    on<LoadActiveFuelPrices>(_onLoadFuelPrices);
    on<CreateSaleRequested>(_onCreateSale);
    on<CreateCustomerRequested>(_onCreateCustomer);
    on<SendCustomerOtp>(_onSendOtp);
    on<VerifyCustomerOtp>(_onVerifyOtp);
    on<SkipOtpVerification>(_onSkipOtp);
    on<PayWithCash>(_onPayCash);
    on<ValidateMomoAccount>(_onValidateMomoAccount);
    on<PayWithMomo>(_onPayMomo);
    on<ResendMomoCharge>(_onResendMomoCharge);
    on<SubmitMomoOtp>(_onSubmitMomoOtp);
    on<VerifyMomoPending>(_onVerifyMomoPending);
    on<PayWithCard>(_onPayCard);
    on<VerifyCardPayment>(_onVerifyCardPayment);
    on<ClearMomoValidation>(_onClearMomoValidation);
    on<ResetSale>(_onReset);
  }

  void _onClearMomoValidation(
    ClearMomoValidation event,
    Emitter<SaleState> emit,
  ) {
    emit(state.copyWith(clearMomoValidation: true));
  }

  bool _is404(dynamic error) {
    if (error is DioException) {
      return error.response?.statusCode == 404;
    }
    return false;
  }

  void _onClearCustomerLookup(
    ClearCustomerLookup event,
    Emitter<SaleState> emit,
  ) {
    emit(state.copyWith(
      clearCustomer: true,
      isNewCustomer: false,
      otpPending: false,
      otpVerified: false,
    ));
  }

  Future<void> _onLookupCustomer(
    LookupCustomerByPlate event,
    Emitter<SaleState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      isNewCustomer: false,
      otpPending: false,
      otpVerified: false,
    ));
    final result = await _repository.getCustomerByPlate(event.plateNumber);
    result.fold(
      (failure) {
        if (_is404(failure.error)) {
          AppLogger.info(
            'Customer not found for plate "${event.plateNumber}" — new customer flow',
          );
          emit(state.copyWith(
            isLoading: false,
            clearCustomer: true,
            isNewCustomer: true,
            otpPending: false,
            otpVerified: false,
          ));
        } else {
          AppLogger.warning(
            'Customer lookup failed for plate "${event.plateNumber}": ${failure.message}',
          );
          emit(state.copyWith(
            isLoading: false,
            clearCustomer: true,
            otpPending: false,
            otpVerified: false,
          ));
          if (event.context.mounted) {
            showToast(event.context, message: failure.message, status: 'error');
          }
        }
      },
      (customer) {
        emit(state.copyWith(
          isLoading: false,
          customer: customer,
          isNewCustomer: false,
          otpPending: false,
          otpVerified: false,
        ));
        if (!customer.isVerified && event.context.mounted) {
          add(SendCustomerOtp(context: event.context));
        }
      },
    );
  }

  Future<void> _onLoadFuelPrices(
    LoadActiveFuelPrices event,
    Emitter<SaleState> emit,
  ) async {
    emit(state.copyWith(isFuelPricesLoading: true));
    final result = await _repository.getActiveFuelPrices();
    result.fold(
      (failure) {
        emit(state.copyWith(isFuelPricesLoading: false));
        AppLogger.warning(
          'Failed to load active fuel prices: ${failure.message}',
        );
      },
      (prices) => emit(
        state.copyWith(
          fuelPrices: prices,
          isFuelPricesLoading: false,
        ),
      ),
    );
  }

  Future<void> _onCreateSale(
    CreateSaleRequested event,
    Emitter<SaleState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _repository.createSale(event.request);
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (sale) {
        emit(state.copyWith(isLoading: false, sale: sale));
      },
    );
  }

  Future<void> _onCreateCustomer(
    CreateCustomerRequested event,
    Emitter<SaleState> emit,
  ) async {
    // Guard: if a customer is already set, skip creation and proceed to OTP.
    if (state.customer != null) {
      emit(state.copyWith(pendingSaleRequest: event.pendingSaleRequest));
      if (event.context.mounted && !state.otpPending) {
        add(SendCustomerOtp(context: event.context));
      }
      return;
    }

    emit(state.copyWith(
      isLoading: true,
      pendingSaleRequest: event.pendingSaleRequest,
    ));

    final result = await _repository.createCustomer(
      phone: event.phone,
      plateNumber: event.plateNumber,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (customer) {
        emit(state.copyWith(isLoading: false, customer: customer));
        if (event.context.mounted) {
          add(SendCustomerOtp(context: event.context));
        }
      },
    );
  }

  Future<void> _onSendOtp(
    SendCustomerOtp event,
    Emitter<SaleState> emit,
  ) async {
    if (state.customer == null) return;
    emit(state.copyWith(isLoading: true));

    final result = await _repository.sendCustomerOtp(
      phone: state.customer!.phone,
      plateNumber: state.customer!.plateNumber,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (_) {
        emit(state.copyWith(isLoading: false, otpPending: true));
      },
    );
  }

  Future<void> _onVerifyOtp(
    VerifyCustomerOtp event,
    Emitter<SaleState> emit,
  ) async {
    if (state.customer == null) return;
    emit(state.copyWith(isLoading: true));

    final result = await _repository.verifyCustomerOtp(
      phone: state.customer!.phone,
      otp: event.otp,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (_) {
        emit(state.copyWith(
          isLoading: false,
          otpPending: false,
          otpVerified: true,
        ));
        if (state.sale == null && state.pendingSaleRequest != null) {
          _createSaleFromPending(event.context, emit);
        }
      },
    );
  }

  Future<void> _onSkipOtp(
    SkipOtpVerification event,
    Emitter<SaleState> emit,
  ) async {
    if (state.sale == null && state.pendingSaleRequest != null) {
      await _createSaleFromPending(event.context, emit);
    }
  }

  Future<void> _createSaleFromPending(
    BuildContext context,
    Emitter<SaleState> emit,
  ) async {
    if (state.customer == null || state.pendingSaleRequest == null) return;

    final request = CreateSaleRequest(
      fuelPriceId: state.pendingSaleRequest!.fuelPriceId,
      customerId: state.customer!.id,
      pumpId: state.pendingSaleRequest!.pumpId,
      amount: state.pendingSaleRequest!.amount,
      usePointsDiscount: state.pendingSaleRequest!.usePointsDiscount,
      discount: state.pendingSaleRequest!.discount,
    );

    emit(state.copyWith(isLoading: true));
    final result = await _repository.createSale(request);
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false));
        if (context.mounted) {
          showToast(context, message: failure.message, status: 'error');
        }
      },
      (sale) {
        emit(state.copyWith(
          isLoading: false,
          sale: sale,
          clearPendingSaleRequest: true,
        ));
      },
    );
  }

  Future<void> _onPayCash(PayWithCash event, Emitter<SaleState> emit) async {
    if (state.sale == null) return;
    emit(state.copyWith(isPaymentLoading: true));
    final result = await _repository.payCash(state.sale!.id);
    result.fold(
      (failure) {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (_) {
        emit(state.copyWith(
          isPaymentLoading: false,
          isTransactionComplete: true,
          selectedPaymentMethod: PaymentMethod.cash,
        ));
        if (event.context.mounted) {
          event.context.push(AppRoutes.transactionComplete);
        }
      },
    );
  }

  Future<void> _onValidateMomoAccount(
    ValidateMomoAccount event,
    Emitter<SaleState> emit,
  ) async {
    emit(state.copyWith(
      isValidatingAccount: true,
      isAccountValidated: false,
      validatedAccountName: null,
      selectedMomoProvider: event.provider,
    ));

    final request = ValidateAccountRequest(
      customerNumber: event.customerNumber,
      bankCode: event.provider.bankCode,
    );

    final result = await _repository.validateAccount(request);
    result.fold(
      (failure) {
        emit(state.copyWith(
          isValidatingAccount: false,
          isAccountValidated: false,
        ));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (response) {
        final name = response.name?.trim();
        if (name == null || name.isEmpty) {
          emit(state.copyWith(
            isValidatingAccount: false,
            isAccountValidated: false,
          ));
          if (event.context.mounted) {
            showToast(
              event.context,
              message: 'Could not verify account name',
              status: 'error',
            );
          }
          return;
        }
        emit(state.copyWith(
          isValidatingAccount: false,
          isAccountValidated: true,
          validatedAccountName: name,
          selectedMomoProvider: event.provider,
        ));
      },
    );
  }

  Future<void> _onPayMomo(PayWithMomo event, Emitter<SaleState> emit) async {
    if (state.sale == null) return;
    if (!state.isAccountValidated) {
      if (event.context.mounted) {
        showToast(
          event.context,
          message: 'Please validate the MoMo account first',
          status: 'error',
        );
      }
      return;
    }

    emit(state.copyWith(
      isPaymentLoading: true,
      momoPhone: event.phone,
      momoProviderCode: event.provider,
    ));
    final request = MomoChargeRequest(
      phone: event.phone,
      provider: event.provider,
    );
    final result = await _repository.payMomoCharge(state.sale!.id, request);
    result.fold(
      (failure) {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (chargeResponse) {
        emit(state.copyWith(
          isPaymentLoading: false,
          selectedPaymentMethod: PaymentMethod.momo,
          paymentReference: chargeResponse.reference,
          momoChargeStatus: chargeResponse.status,
          momoReference: chargeResponse.reference,
        ));
        if (!event.context.mounted) return;

        if (chargeResponse.requiresOtp) {
          event.context.push(AppRoutes.momoOtp);
        } else if (chargeResponse.isPayOffline) {
          event.context.push(AppRoutes.momoPendingApproval);
        } else {
          showToast(
            event.context,
            message: 'Unexpected payment status: ${chargeResponse.statusLabel}',
            status: 'error',
          );
        }
      },
    );
  }

  Future<void> _onResendMomoCharge(
    ResendMomoCharge event,
    Emitter<SaleState> emit,
  ) async {
    if (state.sale == null ||
        state.momoPhone == null ||
        state.momoProviderCode == null) return;

    emit(state.copyWith(isPaymentLoading: true));
    final request = MomoChargeRequest(
      phone: state.momoPhone!,
      provider: state.momoProviderCode!,
    );
    final result = await _repository.payMomoCharge(state.sale!.id, request);
    result.fold(
      (failure) {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (chargeResponse) {
        emit(state.copyWith(
          isPaymentLoading: false,
          paymentReference: chargeResponse.reference,
          momoChargeStatus: chargeResponse.status,
          momoReference: chargeResponse.reference,
        ));
        if (!event.context.mounted) return;

        if (chargeResponse.requiresOtp) {
          showToast(
            event.context,
            message: 'OTP resent successfully',
            status: 'success',
          );
        } else if (chargeResponse.isPayOffline) {
          event.context.push(AppRoutes.momoPendingApproval);
        } else {
          showToast(
            event.context,
            message: 'Unexpected payment status: ${chargeResponse.statusLabel}',
            status: 'error',
          );
        }
      },
    );
  }

  Future<void> _onSubmitMomoOtp(
    SubmitMomoOtp event,
    Emitter<SaleState> emit,
  ) async {
    if (state.sale == null || state.momoReference == null) return;

    emit(state.copyWith(isPaymentLoading: true));
    final result = await _repository.payMomoSubmitOtp(
      state.sale!.id,
      otp: event.otp,
      reference: state.momoReference!,
    );
    result.fold(
      (failure) {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (_) {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          event.context.push(AppRoutes.momoPendingApproval);
        }
      },
    );
  }

  Future<void> _onVerifyMomoPending(
    VerifyMomoPending event,
    Emitter<SaleState> emit,
  ) async {
    if (state.sale == null || state.momoReference == null) return;

    emit(state.copyWith(isPaymentLoading: true));
    final result = await _repository.payMomoCheckPending(
      state.sale!.id,
      reference: state.momoReference!,
    );
    result.fold(
      (failure) {
        final message = failure.message.toLowerCase();
        if (message.contains('already paid') ||
            message.contains('not payable')) {
          emit(state.copyWith(
            isPaymentLoading: false,
            isTransactionComplete: true,
          ));
          if (event.context.mounted) {
            event.context.push(AppRoutes.transactionComplete);
          }
          return;
        }
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (response) {
        if (response.isSuccess || response.isAlreadyPaid) {
          emit(state.copyWith(
            isPaymentLoading: false,
            isTransactionComplete: true,
          ));
          if (event.context.mounted) {
            event.context.push(AppRoutes.transactionComplete);
          }
        } else {
          emit(state.copyWith(isPaymentLoading: false));
          if (event.context.mounted) {
            showToast(
              event.context,
              message: response.message ?? 'Payment not confirmed yet',
              status: 'error',
            );
          }
        }
      },
    );
  }

  Future<void> _onPayCard(PayWithCard event, Emitter<SaleState> emit) async {
    if (state.sale == null) return;
    emit(state.copyWith(isPaymentLoading: true));
    final result = await _repository.payCardInitialize(state.sale!.id);
    result.fold(
      (failure) {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (response) {
        emit(state.copyWith(
          isPaymentLoading: false,
          selectedPaymentMethod: PaymentMethod.card,
          cardAuthorizationUrl: response.authorizationUrl,
          cardReference: response.reference,
          paymentReference: response.reference,
        ));
        if (event.context.mounted) {
          event.context.push(AppRoutes.cardCheckout);
        }
      },
    );
  }

  Future<void> _onVerifyCardPayment(
    VerifyCardPayment event,
    Emitter<SaleState> emit,
  ) async {
    if (state.sale == null || state.cardReference == null) return;

    emit(state.copyWith(isPaymentLoading: true));
    final result = await _repository.payCardVerify(
      state.sale!.id,
      state.cardReference!,
    );
    result.fold(
      (failure) {
        final message = failure.message.toLowerCase();
        if (message.contains('already paid') ||
            message.contains('not payable')) {
          emit(state.copyWith(
            isPaymentLoading: false,
            isTransactionComplete: true,
          ));
          if (event.context.mounted) {
            event.context.push(AppRoutes.transactionComplete);
          }
          return;
        }
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (_) {
        emit(state.copyWith(
          isPaymentLoading: false,
          isTransactionComplete: true,
        ));
        if (event.context.mounted) {
          event.context.push(AppRoutes.transactionComplete);
        }
      },
    );
  }

  void _onReset(ResetSale event, Emitter<SaleState> emit) {
    emit(const SaleState.initial());
  }
}
