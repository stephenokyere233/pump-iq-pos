import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String email,
    String? name,
    String? phone,
    String? photoUrl,
    String? stationId,
    String? stationName,
    String? role,
    String? pumpAttendantId,
    String? companyId,
  }) = _AppUser;

  factory AppUser.empty() => const AppUser(id: '', email: '');

  const AppUser._();

  bool get isEmpty => id.isEmpty;

  bool get isNotEmpty => id.isNotEmpty;
}
