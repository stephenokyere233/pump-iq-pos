import 'package:pump_iq/src/features/auth/data/repositories/auth_repository.dart';
import 'package:pump_iq/src/features/auth/presentation/providers/session_bloc.dart';
import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

// ---------------------------------------------------------------------------
// Events
// ---------------------------------------------------------------------------

abstract class SetupEvent extends Equatable {
  const SetupEvent();
  @override
  List<Object?> get props => [];
}

class RegisterDeviceRequested extends SetupEvent {
  final BuildContext context;
  const RegisterDeviceRequested({required this.context});
}

// ---------------------------------------------------------------------------
// State
// ---------------------------------------------------------------------------

class SetupState extends Equatable {
  final bool isLoading;

  const SetupState({required this.isLoading});
  const SetupState.initial() : isLoading = false;

  SetupState copyWith({bool? isLoading}) {
    return SetupState(isLoading: isLoading ?? this.isLoading);
  }

  @override
  List<Object?> get props => [isLoading];
}

// ---------------------------------------------------------------------------
// Bloc
// ---------------------------------------------------------------------------

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  final AuthRepository _repository;

  SetupBloc({required AuthRepository repository})
    : _repository = repository,
      super(const SetupState.initial()) {
    on<RegisterDeviceRequested>(_onRegisterDevice);
  }

  Future<void> _onRegisterDevice(
    RegisterDeviceRequested event,
    Emitter<SetupState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final payloadResult = await DeviceInfoService.instance
        .getRegisterDevicePayload();

    await payloadResult.fold(
      (failure) async {
        emit(state.copyWith(isLoading: false));
        showGlobalToast(message: failure.message, status: 'error');
      },
      (payload) async {
        final result = await _repository.registerDevice(payload: payload);

        result.fold(
          (failure) {
            emit(state.copyWith(isLoading: false));
            showGlobalToast(message: failure.message, status: 'error');
          },
          (_) {
            emit(state.copyWith(isLoading: false));
            if (event.context.mounted) {
              event.context.read<SessionBloc>().add(
                const SessionDeviceRegistered(),
              );
            }
          },
        );
      },
    );
  }
}
