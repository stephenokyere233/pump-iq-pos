import '../../features/auth/data/repositories/auth_repository.dart';
import '../../features/auth/presentation/providers/auth_bloc.dart';
import '../../features/auth/presentation/providers/session_bloc.dart';
import '../../features/onboarding/presentation/providers/setup_bloc.dart';
import '../../features/sale/data/repositories/sale_repository.dart';
import '../../features/sale/presentation/providers/sale_bloc.dart';
import '../../imports/imports.dart';

/// A wrapper to initialize the chosen State Management library.
class StateWrapper extends StatelessWidget {
  final Widget child;

  const StateWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepository();

    return MultiBlocProvider(
      providers: [
        BlocProvider<SessionBloc>(
          create: (_) => SessionBloc(repository: authRepository),
        ),
        BlocProvider<AuthBloc>(
          create: (_) => AuthBloc(repository: authRepository),
        ),
        BlocProvider<SetupBloc>(
          create: (_) => SetupBloc(repository: authRepository),
        ),
        BlocProvider<SaleBloc>(
          create: (_) => SaleBloc(
            repository: SaleRepository(),
            authRepository: authRepository,
          ),
        ),
      ],
      child: child,
    );
  }
}
