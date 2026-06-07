import 'package:pump_iq/src/features/auth/presentation/providers/session_bloc.dart';
import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

class SessionListenerWrapper extends StatelessWidget {
  final Widget child;
  const SessionListenerWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SessionBloc, SessionState>(
      listenWhen: (prev, next) =>
          prev.status != next.status ||
          prev.deviceRegistrationStatus != next.deviceRegistrationStatus,
      listener: (context, state) {
        if (state.status == SessionStatus.unknown) return;

        if (state.status == SessionStatus.unauthenticated) {
          FlutterNativeSplash.remove();
          appRouter.go(AppRoutes.login);
          return;
        }

        if (state.status == SessionStatus.authenticated &&
            state.isDeviceCheckComplete) {
          FlutterNativeSplash.remove();
          final registered = state.deviceRegistrationStatus ==
              DeviceRegistrationStatus.registered;
          appRouter.go(registered ? AppRoutes.purchaseSale : AppRoutes.setup);
        }
      },
      child: child,
    );
  }
}
