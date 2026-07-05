import 'dart:async';

import 'package:pump_iq/src/features/auth/data/models/user_model.dart';
import 'package:pump_iq/src/features/auth/data/repositories/auth_repository.dart';
import 'package:pump_iq/src/imports/imports.dart';

/// Session events
abstract class SessionEvent extends Equatable {
  const SessionEvent();
  @override
  List<Object?> get props => [];
}

class SessionCheckRequested extends SessionEvent {
  const SessionCheckRequested();
}

class SessionUserChanged extends SessionEvent {
  final AppUser? user;
  const SessionUserChanged(this.user);
  @override
  List<Object?> get props => [user];
}

class SessionLogoutRequested extends SessionEvent {
  const SessionLogoutRequested();
}

class SessionDeviceRegistered extends SessionEvent {
  const SessionDeviceRegistered();
}

/// Session states
enum SessionStatus { unknown, authenticated, unauthenticated }

enum DeviceRegistrationStatus { unknown, checking, registered, notRegistered }

class SessionState extends Equatable {
  final SessionStatus status;
  final AppUser? user;
  final DeviceRegistrationStatus deviceRegistrationStatus;

  const SessionState({
    this.status = SessionStatus.unknown,
    this.user,
    this.deviceRegistrationStatus = DeviceRegistrationStatus.unknown,
  });

  const SessionState.unknown() : this();
  const SessionState.unauthenticated()
      : this(status: SessionStatus.unauthenticated);

  const SessionState.authenticated(
    AppUser user, {
    DeviceRegistrationStatus deviceRegistrationStatus =
        DeviceRegistrationStatus.unknown,
  }) : this(
          status: SessionStatus.authenticated,
          user: user,
          deviceRegistrationStatus: deviceRegistrationStatus,
        );

  bool get isDeviceCheckComplete =>
      deviceRegistrationStatus == DeviceRegistrationStatus.registered ||
      deviceRegistrationStatus == DeviceRegistrationStatus.notRegistered;

  @override
  List<Object?> get props => [status, user, deviceRegistrationStatus];
}

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final AuthRepository _repository;
  StreamSubscription<AppUser?>? _authSub;

  SessionBloc({required AuthRepository repository})
      : _repository = repository,
        super(const SessionState.unknown()) {
    on<SessionCheckRequested>(_onCheckRequested);
    on<SessionUserChanged>(_onUserChanged);
    on<SessionLogoutRequested>(_onLogoutRequested);
    on<SessionDeviceRegistered>(_onDeviceRegistered);

    add(const SessionCheckRequested());
  }

  Future<void> _onCheckRequested(
    SessionCheckRequested event,
    Emitter<SessionState> emit,
  ) async {
    final result = await _repository.checkAuthState();
    await result.fold(
      (_) async => emit(const SessionState.unauthenticated()),
      (user) async {
        if (user != null) {
          await _emitAuthenticatedWithDeviceCheck(user, emit);
        } else {
          emit(const SessionState.unauthenticated());
        }
      },
    );

    await _authSub?.cancel();
    _authSub = _repository.onAuthStateChanged.listen((user) {
      add(SessionUserChanged(user));
    });
  }

  Future<void> _onUserChanged(
    SessionUserChanged event,
    Emitter<SessionState> emit,
  ) async {
    if (event.user != null) {
      await _emitAuthenticatedWithDeviceCheck(event.user!, emit);
    } else {
      emit(const SessionState.unauthenticated());
    }
  }

  Future<void> _emitAuthenticatedWithDeviceCheck(
    AppUser user,
    Emitter<SessionState> emit,
  ) async {
    emit(
      SessionState.authenticated(
        user,
        deviceRegistrationStatus: DeviceRegistrationStatus.checking,
      ),
    );

    final checkResult = await _repository.checkDeviceRegistration();
    final deviceStatus = checkResult.fold(
      (_) => DeviceRegistrationStatus.notRegistered,
      (registered) => registered
          ? DeviceRegistrationStatus.registered
          : DeviceRegistrationStatus.notRegistered,
    );

    emit(
      SessionState.authenticated(user, deviceRegistrationStatus: deviceStatus),
    );
  }

  Future<void> _onLogoutRequested(
    SessionLogoutRequested event,
    Emitter<SessionState> emit,
  ) async {
    await _repository.logout();
    emit(const SessionState.unauthenticated());
  }

  void _onDeviceRegistered(
    SessionDeviceRegistered event,
    Emitter<SessionState> emit,
  ) {
    final user = state.user;
    if (user == null || state.status != SessionStatus.authenticated) return;

    emit(
      SessionState.authenticated(
        user,
        deviceRegistrationStatus: DeviceRegistrationStatus.registered,
      ),
    );
  }

  @override
  Future<void> close() {
    _authSub?.cancel();
    return super.close();
  }
}
