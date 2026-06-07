import 'package:pump_iq/src/features/onboarding/presentation/providers/setup_bloc.dart';
import 'package:pump_iq/src/imports/imports.dart';

class SetupPage extends StatefulWidget {
  const SetupPage({super.key});

  @override
  State<SetupPage> createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (AuthService.instance.getStationId() == null) {
        context.go(AppRoutes.login);
      }
    });
  }

  void _onRegisterDevice() {
    context.read<SetupBloc>().add(RegisterDeviceRequested(context: context));
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((SetupBloc bloc) => bloc.state.isLoading);
    final theme = context.theme;
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return _SetupView(
      colorScheme: colorScheme,
      textTheme: textTheme,
      isLoading: isLoading,
      onRegisterDevice: _onRegisterDevice,
    );
  }
}

class _SetupView extends StatelessWidget {
  const _SetupView({
    required this.colorScheme,
    required this.textTheme,
    required this.isLoading,
    required this.onRegisterDevice,
  });

  final ColorScheme colorScheme;
  final TextTheme textTheme;
  final bool isLoading;
  final VoidCallback onRegisterDevice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: const AppTopBar(showBack: false),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.xl.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.local_gas_station,
                        size: 64.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: AppSpacing.xl.h),
                    Text(
                      'Register This\nTerminal',
                      textAlign: TextAlign.center,
                      style: textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: colorScheme.onSurface,
                        height: 1.2,
                        fontSize: 24.sp,
                      ),
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    Text(
                      'You are signed in. Register this device\nfor your station to start processing sales.',
                      textAlign: TextAlign.center,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.5,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppSpacing.xl.w),
              child: AppButton(
                label: 'Get Started',
                isLoading: isLoading,
                onPressed: isLoading ? null : onRegisterDevice,
                variant: ButtonVariant.primary,
                width: ButtonSize.medium,
                isFullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
