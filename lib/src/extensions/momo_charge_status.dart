/// API status values from `POST /sales/:id/pay/momo/charge`.
enum MomoChargeStatus {
  sendOtp,
  payOffline,
}

extension MomoChargeStatusX on MomoChargeStatus {
  String get apiValue => switch (this) {
        MomoChargeStatus.sendOtp => 'send_otp',
        MomoChargeStatus.payOffline => 'pay_offline',
      };

  bool get requiresOtp => this == MomoChargeStatus.sendOtp;

  bool get isPayOffline => this == MomoChargeStatus.payOffline;
}

MomoChargeStatus? momoChargeStatusFromApi(String? value) {
  if (value == null || value.isEmpty) return null;
  for (final status in MomoChargeStatus.values) {
    if (status.apiValue == value) return status;
  }
  return null;
}
