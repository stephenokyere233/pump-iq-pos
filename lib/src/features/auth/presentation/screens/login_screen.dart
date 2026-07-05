import 'package:pump_iq/src/features/auth/presentation/providers/auth_bloc.dart';
import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _stationIdController = TextEditingController();
  final _pinController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final lastStationId = context.read<AuthBloc>().state.lastStationId;
      if (lastStationId != null &&
          lastStationId.isNotEmpty &&
          _stationIdController.text.isEmpty) {
        _stationIdController.text = lastStationId;
      }
    });
  }

  @override
  void dispose() {
    _stationIdController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((AuthBloc bloc) => bloc.state.isLoading);

    Future<void> handleLogin() async {
      if (!(_formKey.currentState?.validate() ?? false)) return;

      context.read<AuthBloc>().add(
        LoginRequested(
          context: context,
          stationId: _stationIdController.text.trim(),
          pin: _pinController.text,
        ),
      );
    }

    return _LoginView(
      formKey: _formKey,
      stationIdController: _stationIdController,
      pinController: _pinController,
      isLoading: isLoading,
      onLogin: handleLogin,
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView({
    required this.formKey,
    required this.stationIdController,
    required this.pinController,
    required this.isLoading,
    required this.onLogin,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController stationIdController;
  final TextEditingController pinController;
  final bool isLoading;
  final VoidCallback onLogin;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: AppSpacing.xl.h),
                Container(
                  width: 80.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.local_gas_station,
                    size: 40.sp,
                    color: colorScheme.onPrimary,
                  ),
                ),
                SizedBox(height: AppSpacing.lg.h),
                Text(
                  'Pump IQ POS',
                  style: context.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary,
                  ),
                ),
                SizedBox(height: AppSpacing.sm.h),
                Text(
                  'Enter your station ID and PIN to sign in',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: AppSpacing.xxxl.h),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextField(
                        controller: stationIdController,
                        enabled: !isLoading,
                        label: 'Station ID',
                        hint: 'Station UUID',
                        keyboardType: TextInputType.text,
                        prefixIcon: Icon(
                          Icons.store,
                          color: colorScheme.primary,
                        ),
                        textInputAction: TextInputAction.next,
                        validator: (v) {
                          if (AppUtils.isBlank(v)) {
                            return 'Station ID is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: AppSpacing.md.h),
                      AppTextField(
                        controller: pinController,
                        enabled: !isLoading,
                        label: 'PIN',
                        hint: 'Enter your PIN',
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        prefixIcon: Icon(Icons.pin, color: colorScheme.primary),
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_) => onLogin(),
                        validator: (v) {
                          if (AppUtils.isBlank(v)) {
                            return 'PIN is required';
                          }
                          final trimmed = v!.replaceAll(RegExp(r'\s'), '');
                          if (trimmed.length < 4) {
                            return 'PIN is too short';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: AppSpacing.xl.h),
                      AppButton(
                        label: 'Sign In',
                        isLoading: isLoading,
                        onPressed: isLoading ? null : onLogin,
                        isFullWidth: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppSpacing.xxxl.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
