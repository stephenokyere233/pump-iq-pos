import 'package:pump_iq/src/features/auth/data/repositories/auth_repository.dart';
import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;

  AuthBloc({required AuthRepository repository})
      : _repository = repository,
        super(AuthState.initial(
          lastStationId: repository.getLastLoginStationId(),
        )) {
    on<LoginRequested>(_onLoginRequested);
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.login(
      stationId: event.stationId,
      pin: event.pin,
    );

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
  final String stationId;
  final String pin;
  const LoginRequested({
    required this.context,
    required this.stationId,
    required this.pin,
  });

  @override
  List<Object> get props => [stationId, pin];
}

class AuthState extends Equatable {
  final bool isLoading;
  final String? lastStationId;

  const AuthState({required this.isLoading, this.lastStationId});

  factory AuthState.initial({String? lastStationId}) =>
      AuthState(isLoading: false, lastStationId: lastStationId);

  AuthState copyWith({bool? isLoading, String? lastStationId}) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      lastStationId: lastStationId ?? this.lastStationId,
    );
  }

  @override
  List<Object?> get props => [isLoading, lastStationId];
}
