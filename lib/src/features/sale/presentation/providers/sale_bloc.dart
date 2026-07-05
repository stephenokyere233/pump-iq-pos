import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../../../auth/data/repositories/auth_repository.dart';
import '../../../customer/data/models/customer_model.dart';
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

class PrepareSaleDraft extends SaleEvent {
  final PendingSaleDraft draft;
  const PrepareSaleDraft({required this.draft});
}

class CreateCustomerRequested extends SaleEvent {
  final BuildContext context;
  final String phone;
  final String plateNumber;
  const CreateCustomerRequested({
    required this.context,
    required this.phone,
    required this.plateNumber,
  });
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
  final MomoProvider provider;
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
  final PendingSaleDraft? pendingDraft;
  final PaymentMethod? selectedPaymentMethod;
  final bool isTransactionComplete;
  final bool isNewCustomer;
  final MomoProvider? selectedMomoProvider;
  final String? validatedAccountName;
  final bool isAccountValidated;
  final bool isValidatingAccount;
  final String? momoPhone;

  const SaleState({
    this.isLoading = false,
    this.isPaymentLoading = false,
    this.isFuelPricesLoading = false,
    this.customer,
    this.fuelPrices = const [],
    this.sale,
    this.pendingDraft,
    this.selectedPaymentMethod,
    this.isTransactionComplete = false,
    this.isNewCustomer = false,
    this.selectedMomoProvider,
    this.validatedAccountName,
    this.isAccountValidated = false,
    this.isValidatingAccount = false,
    this.momoPhone,
  });

  const SaleState.initial() : this();

  SaleState copyWith({
    bool? isLoading,
    bool? isPaymentLoading,
    bool? isFuelPricesLoading,
    Customer? customer,
    List<FuelPrice>? fuelPrices,
    Sale? sale,
    PendingSaleDraft? pendingDraft,
    PaymentMethod? selectedPaymentMethod,
    bool? isTransactionComplete,
    bool? isNewCustomer,
    MomoProvider? selectedMomoProvider,
    String? validatedAccountName,
    bool? isAccountValidated,
    bool? isValidatingAccount,
    String? momoPhone,
    bool clearCustomer = false,
    bool clearSale = false,
    bool clearPendingDraft = false,
    bool clearMomoValidation = false,
  }) {
    return SaleState(
      isLoading: isLoading ?? this.isLoading,
      isPaymentLoading: isPaymentLoading ?? this.isPaymentLoading,
      isFuelPricesLoading: isFuelPricesLoading ?? this.isFuelPricesLoading,
      customer: clearCustomer ? null : (customer ?? this.customer),
      fuelPrices: fuelPrices ?? this.fuelPrices,
      sale: clearSale ? null : (sale ?? this.sale),
      pendingDraft:
          clearPendingDraft ? null : (pendingDraft ?? this.pendingDraft),
      selectedPaymentMethod:
          selectedPaymentMethod ?? this.selectedPaymentMethod,
      isTransactionComplete:
          isTransactionComplete ?? this.isTransactionComplete,
      isNewCustomer: isNewCustomer ?? this.isNewCustomer,
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
      momoPhone: momoPhone ?? this.momoPhone,
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
        pendingDraft,
        selectedPaymentMethod,
        isTransactionComplete,
        isNewCustomer,
        selectedMomoProvider,
        validatedAccountName,
        isAccountValidated,
        isValidatingAccount,
        momoPhone,
      ];
}

// ─── Bloc ────────────────────────────────────────────────────────────────────

class SaleBloc extends Bloc<SaleEvent, SaleState> {
  final SaleRepository _repository;
  final AuthRepository _authRepository;

  SaleBloc({
    required SaleRepository repository,
    AuthRepository? authRepository,
  })  : _repository = repository,
        _authRepository = authRepository ?? AuthRepository(),
        super(const SaleState.initial()) {
    on<LookupCustomerByPlate>(_onLookupCustomer);
    on<ClearCustomerLookup>(_onClearCustomerLookup);
    on<LoadActiveFuelPrices>(_onLoadFuelPrices);
    on<PrepareSaleDraft>(_onPrepareSaleDraft);
    on<CreateCustomerRequested>(_onCreateCustomer);
    on<PayWithCash>(_onPayCash);
    on<ValidateMomoAccount>(_onValidateMomoAccount);
    on<PayWithMomo>(_onPayMomo);
    on<ResendMomoCharge>(_onResendMomoCharge);
    on<SubmitMomoOtp>(_onSubmitMomoOtp);
    on<VerifyMomoPending>(_onVerifyMomoPending);
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
    emit(state.copyWith(clearCustomer: true, isNewCustomer: false));
  }

  Future<void> _onLookupCustomer(
    LookupCustomerByPlate event,
    Emitter<SaleState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isNewCustomer: false));
    final result = await _repository.getCustomerByPlate(event.plateNumber);
    result.fold(
      (failure) {
        if (_is404(failure.error)) {
          emit(state.copyWith(
            isLoading: false,
            clearCustomer: true,
            isNewCustomer: true,
          ));
        } else {
          emit(state.copyWith(isLoading: false, clearCustomer: true));
          if (event.context.mounted) {
            showToast(event.context, message: failure.message, status: 'error');
          }
        }
      },
      (customer) {
        if (customer == null) {
          emit(state.copyWith(
            isLoading: false,
            clearCustomer: true,
            isNewCustomer: true,
          ));
        } else {
          emit(state.copyWith(
            isLoading: false,
            customer: customer,
            isNewCustomer: false,
          ));
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
      (failure) => emit(state.copyWith(isFuelPricesLoading: false)),
      (prices) => emit(
        state.copyWith(fuelPrices: prices, isFuelPricesLoading: false),
      ),
    );
  }

  void _onPrepareSaleDraft(PrepareSaleDraft event, Emitter<SaleState> emit) {
    emit(state.copyWith(pendingDraft: event.draft, clearSale: true));
  }

  Future<void> _onCreateCustomer(
    CreateCustomerRequested event,
    Emitter<SaleState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
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
        emit(state.copyWith(
          isLoading: false,
          customer: customer,
          isNewCustomer: false,
        ));
      },
    );
  }

  CreateSaleRequest? _buildSaleRequest({
    String? paymentMethod,
    String? accountNumber,
    String? accountName,
  }) {
    final draft = state.pendingDraft;
    final customer = state.customer;
    final pumpAttendantId = _authRepository.getPumpAttendantId();
    final companyId =
        draft?.companyId ?? customer?.companyId ?? _authRepository.getCompanyId();

    if (draft == null ||
        customer == null ||
        pumpAttendantId == null ||
        companyId == null) {
      return null;
    }

    return CreateSaleRequest(
      customerId: customer.id,
      pumpAttendantId: pumpAttendantId,
      stockId: draft.stockId,
      companyId: companyId,
      amount: draft.amount,
      paymentMethod: paymentMethod,
      accountNumber: accountNumber,
      accountName: accountName,
    );
  }

  Future<void> _onPayCash(PayWithCash event, Emitter<SaleState> emit) async {
    final request = _buildSaleRequest();
    if (request == null) {
      if (event.context.mounted) {
        showToast(event.context,
            message: 'Sale details are incomplete', status: 'error');
      }
      return;
    }

    emit(state.copyWith(isPaymentLoading: true));
    final result = await _repository.createSale(request);
    result.fold(
      (failure) {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (sale) {
        emit(state.copyWith(
          isPaymentLoading: false,
          sale: sale,
          selectedPaymentMethod: PaymentMethod.cash,
          isTransactionComplete: sale.isCompleted,
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
      phoneNumber: event.customerNumber,
      channel: event.provider.channel,
    );

    final result = await _repository.validateAccount(request);
    result.fold(
      (failure) {
        emit(state.copyWith(isValidatingAccount: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (response) {
        final name = response.accountName?.trim();
        if (name == null || name.isEmpty) {
          emit(state.copyWith(isValidatingAccount: false));
          if (event.context.mounted) {
            showToast(event.context,
                message: 'Could not verify account name', status: 'error');
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
    if (!state.isAccountValidated) {
      if (event.context.mounted) {
        showToast(event.context,
            message: 'Please validate the MoMo account first', status: 'error');
      }
      return;
    }

    final request = _buildSaleRequest(
      paymentMethod: 'mobile_money',
      accountNumber: event.phone,
      accountName: state.validatedAccountName,
    );
    if (request == null) {
      if (event.context.mounted) {
        showToast(event.context,
            message: 'Sale details are incomplete', status: 'error');
      }
      return;
    }

    emit(state.copyWith(
      isPaymentLoading: true,
      momoPhone: event.phone,
      selectedMomoProvider: event.provider,
    ));

    final result = await _repository.createSale(request);
    await result.fold(
      (failure) async {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (sale) async {
        emit(state.copyWith(
          isPaymentLoading: false,
          sale: sale,
          selectedPaymentMethod: PaymentMethod.momo,
        ));
        await _handleMomoSaleState(event.context, emit, sale);
      },
    );
  }

  Future<void> _handleMomoSaleState(
    BuildContext context,
    Emitter<SaleState> emit,
    Sale sale,
  ) async {
    if (!context.mounted) return;

    if (sale.requiresOtp) {
      context.push(AppRoutes.momoOtp);
      return;
    }

    if (sale.isMomoPending) {
      context.push(AppRoutes.momoPendingApproval);
      return;
    }

    if (sale.isCompleted) {
      emit(state.copyWith(isTransactionComplete: true));
      context.push(AppRoutes.transactionComplete);
      return;
    }

    if (!sale.hasValidId) {
      showToast(
        context,
        message: 'Sale was created but no sale id was returned',
        status: 'error',
      );
      return;
    }

    final collectionResult = await _repository.completeCollection(sale.id);
    await collectionResult.fold(
      (failure) async {
        if (context.mounted) {
          showToast(context, message: failure.message, status: 'error');
        }
      },
      (updated) async {
        emit(state.copyWith(sale: updated));
        if (!context.mounted) return;
        if (updated.isMomoPending) {
          context.push(AppRoutes.momoPendingApproval);
        } else if (updated.isCompleted) {
          emit(state.copyWith(isTransactionComplete: true));
          context.push(AppRoutes.transactionComplete);
        }
      },
    );
  }

  Future<void> _onResendMomoCharge(
    ResendMomoCharge event,
    Emitter<SaleState> emit,
  ) async {
    final sale = state.sale;
    if (sale == null) return;

    emit(state.copyWith(isPaymentLoading: true));
    final result = await _repository.completeCollection(sale.id);
    result.fold(
      (failure) {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (updated) {
        emit(state.copyWith(isPaymentLoading: false, sale: updated));
        if (event.context.mounted && updated.isMomoPending) {
          showToast(event.context,
              message: 'Payment prompt resent', status: 'success');
        }
      },
    );
  }

  Future<void> _onSubmitMomoOtp(
    SubmitMomoOtp event,
    Emitter<SaleState> emit,
  ) async {
    final sale = state.sale;
    if (sale == null) return;

    emit(state.copyWith(isPaymentLoading: true));
    final result = await _repository.verifySaleOtp(sale.id, otp: event.otp);
    await result.fold(
      (failure) async {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (updated) async {
        emit(state.copyWith(isPaymentLoading: false, sale: updated));
        if (!event.context.mounted) return;

        if (updated.isMomoPending || updated.isCompleted) {
          if (updated.isCompleted) {
            emit(state.copyWith(isTransactionComplete: true));
            event.context.push(AppRoutes.transactionComplete);
          } else {
            event.context.push(AppRoutes.momoPendingApproval);
          }
          return;
        }

        final collection = await _repository.completeCollection(updated.id);
        collection.fold(
          (failure) {
            if (event.context.mounted) {
              showToast(event.context,
                  message: failure.message, status: 'error');
            }
          },
          (afterCollection) {
            emit(state.copyWith(sale: afterCollection));
            if (event.context.mounted) {
              event.context.push(AppRoutes.momoPendingApproval);
            }
          },
        );
      },
    );
  }

  Future<void> _onVerifyMomoPending(
    VerifyMomoPending event,
    Emitter<SaleState> emit,
  ) async {
    final sale = state.sale;
    if (sale == null) return;

    emit(state.copyWith(isPaymentLoading: true));
    final result = await _repository.pollPaymentStatus(sale.id);
    result.fold(
      (failure) {
        emit(state.copyWith(isPaymentLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (updated) {
        emit(state.copyWith(isPaymentLoading: false, sale: updated));
        if (updated.isCompleted) {
          emit(state.copyWith(isTransactionComplete: true));
          if (event.context.mounted) {
            event.context.push(AppRoutes.transactionComplete);
          }
        } else if (event.context.mounted) {
          showToast(event.context,
              message: 'Payment not confirmed yet', status: 'error');
        }
      },
    );
  }

  void _onReset(ResetSale event, Emitter<SaleState> emit) {
    emit(const SaleState.initial());
  }
}
