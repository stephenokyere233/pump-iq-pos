import 'dart:async';

import 'package:pump_iq/src/imports/core_imports.dart';

Duration otpResendCooldown(int attemptIndex) {
  if (attemptIndex <= 0) return const Duration(minutes: 1);
  return Duration(minutes: 5 * attemptIndex);
}

class OtpResendControl extends StatefulWidget {
  const OtpResendControl({
    super.key,
    required this.onResend,
    this.isLoading = false,
    this.label = 'Resend OTP',
  });

  final VoidCallback onResend;
  final bool isLoading;
  final String label;

  @override
  State<OtpResendControl> createState() => _OtpResendControlState();
}

class _OtpResendControlState extends State<OtpResendControl> {
  Timer? _timer;
  int _secondsRemaining = 0;
  bool _canResend = false;
  int _attemptIndex = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _secondsRemaining = otpResendCooldown(_attemptIndex).inSeconds;
    _canResend = false;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _canResend = true;
          timer.cancel();
        }
      });
    });
  }

  void _handleResend() {
    widget.onResend();
    setState(() => _attemptIndex++);
    _startTimer();
  }

  String get _formattedTime {
    final minutes = (_secondsRemaining ~/ 60).toString().padLeft(2, '0');
    final seconds = (_secondsRemaining % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;

    if (_canResend) {
      return TextButton(
        onPressed: widget.isLoading ? null : _handleResend,
        child: Text(
          widget.label,
          style: context.textTheme.bodyMedium?.copyWith(
            color: colorScheme.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    return Text(
      '${widget.label} in $_formattedTime',
      style: context.textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
    );
  }
}
