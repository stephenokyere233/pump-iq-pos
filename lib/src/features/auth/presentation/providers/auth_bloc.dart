import 'package:pump_iq/src/features/auth/data/repositories/auth_repository.dart';
import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;

  AuthBloc({required AuthRepository repository})
      : _repository = repository,
        super(const AuthState.initial()) {
    on<LoginRequested>(_onLoginRequested);
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.login(pin: event.pin);

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false));
        if (event.context.mounted) {
          showToast(event.context, message: failure.message, status: 'error');
        }
      },
      (user) {
        emit(state.copyWith(isLoading: false));
        if (!event.context.mounted) return;

        if (user.stationId == null) {
          showToast(
            event.context,
            message: 'No station assigned to this account',
            status: 'error',
          );
        }
      },
    );
  }
}

abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object> get props => [];
}

class LoginRequested extends AuthEvent {
  final BuildContext context;
  final String pin;
  const LoginRequested({required this.context, required this.pin});
}

class AuthState extends Equatable {
  final bool isLoading;
  const AuthState({required this.isLoading});
  const AuthState.initial() : isLoading = false;
  AuthState copyWith({bool? isLoading}) {
    return AuthState(isLoading: isLoading ?? this.isLoading);
  }

  @override
  List<Object?> get props => [isLoading];
}
