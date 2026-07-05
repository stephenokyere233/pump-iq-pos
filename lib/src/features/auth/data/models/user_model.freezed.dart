// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUser {
  String get id;
  String get email;
  String? get name;
  String? get phone;
  String? get photoUrl;
  String? get stationId;
  String? get stationName;
  String? get role;
  String? get pumpAttendantId;
  String? get companyId;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<AppUser> get copyWith =>
      _$AppUserCopyWithImpl<AppUser>(this as AppUser, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.pumpAttendantId, pumpAttendantId) ||
                other.pumpAttendantId == pumpAttendantId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, phone, photoUrl,
      stationId, stationName, role, pumpAttendantId, companyId);

  @override
  String toString() {
    return 'AppUser(id: $id, email: $email, name: $name, phone: $phone, photoUrl: $photoUrl, stationId: $stationId, stationName: $stationName, role: $role, pumpAttendantId: $pumpAttendantId, companyId: $companyId)';
  }
}

/// @nodoc
abstract mixin class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) _then) =
      _$AppUserCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String email,
      String? name,
      String? phone,
      String? photoUrl,
      String? stationId,
      String? stationName,
      String? role,
      String? pumpAttendantId,
      String? companyId});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._self, this._then);

  final AppUser _self;
  final $Res Function(AppUser) _then;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? stationId = freezed,
    Object? stationName = freezed,
    Object? role = freezed,
    Object? pumpAttendantId = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _self.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stationId: freezed == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String?,
      stationName: freezed == stationName
          ? _self.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      pumpAttendantId: freezed == pumpAttendantId
          ? _self.pumpAttendantId
          : pumpAttendantId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppUser].
extension AppUserPatterns on AppUser {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String email,
            String? name,
            String? phone,
            String? photoUrl,
            String? stationId,
            String? stationName,
            String? role,
            String? pumpAttendantId,
            String? companyId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
        return $default(
            _that.id,
            _that.email,
            _that.name,
            _that.phone,
            _that.photoUrl,
            _that.stationId,
            _that.stationName,
            _that.role,
            _that.pumpAttendantId,
            _that.companyId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String email,
            String? name,
            String? phone,
            String? photoUrl,
            String? stationId,
            String? stationName,
            String? role,
            String? pumpAttendantId,
            String? companyId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser():
        return $default(
            _that.id,
            _that.email,
            _that.name,
            _that.phone,
            _that.photoUrl,
            _that.stationId,
            _that.stationName,
            _that.role,
            _that.pumpAttendantId,
            _that.companyId);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String email,
            String? name,
            String? phone,
            String? photoUrl,
            String? stationId,
            String? stationName,
            String? role,
            String? pumpAttendantId,
            String? companyId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
        return $default(
            _that.id,
            _that.email,
            _that.name,
            _that.phone,
            _that.photoUrl,
            _that.stationId,
            _that.stationName,
            _that.role,
            _that.pumpAttendantId,
            _that.companyId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AppUser extends AppUser {
  const _AppUser(
      {required this.id,
      required this.email,
      this.name,
      this.phone,
      this.photoUrl,
      this.stationId,
      this.stationName,
      this.role,
      this.pumpAttendantId,
      this.companyId})
      : super._();

  @override
  final String id;
  @override
  final String email;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? photoUrl;
  @override
  final String? stationId;
  @override
  final String? stationName;
  @override
  final String? role;
  @override
  final String? pumpAttendantId;
  @override
  final String? companyId;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.pumpAttendantId, pumpAttendantId) ||
                other.pumpAttendantId == pumpAttendantId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, phone, photoUrl,
      stationId, stationName, role, pumpAttendantId, companyId);

  @override
  String toString() {
    return 'AppUser(id: $id, email: $email, name: $name, phone: $phone, photoUrl: $photoUrl, stationId: $stationId, stationName: $stationName, role: $role, pumpAttendantId: $pumpAttendantId, companyId: $companyId)';
  }
}

/// @nodoc
abstract mixin class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) _then) =
      __$AppUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String? name,
      String? phone,
      String? photoUrl,
      String? stationId,
      String? stationName,
      String? role,
      String? pumpAttendantId,
      String? companyId});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(this._self, this._then);

  final _AppUser _self;
  final $Res Function(_AppUser) _then;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? stationId = freezed,
    Object? stationName = freezed,
    Object? role = freezed,
    Object? pumpAttendantId = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_AppUser(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _self.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stationId: freezed == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String?,
      stationName: freezed == stationName
          ? _self.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      pumpAttendantId: freezed == pumpAttendantId
          ? _self.pumpAttendantId
          : pumpAttendantId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
