// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_attendant_pin_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StationAttendantPinLoginRequest {
  String get stationId;
  String? get stationPin;
  String? get attendantPin;
  String? get pin;

  /// Create a copy of StationAttendantPinLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StationAttendantPinLoginRequestCopyWith<StationAttendantPinLoginRequest>
      get copyWith => _$StationAttendantPinLoginRequestCopyWithImpl<
              StationAttendantPinLoginRequest>(
          this as StationAttendantPinLoginRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StationAttendantPinLoginRequest &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.stationPin, stationPin) ||
                other.stationPin == stationPin) &&
            (identical(other.attendantPin, attendantPin) ||
                other.attendantPin == attendantPin) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stationId, stationPin, attendantPin, pin);

  @override
  String toString() {
    return 'StationAttendantPinLoginRequest(stationId: $stationId, stationPin: $stationPin, attendantPin: $attendantPin, pin: $pin)';
  }
}

/// @nodoc
abstract mixin class $StationAttendantPinLoginRequestCopyWith<$Res> {
  factory $StationAttendantPinLoginRequestCopyWith(
          StationAttendantPinLoginRequest value,
          $Res Function(StationAttendantPinLoginRequest) _then) =
      _$StationAttendantPinLoginRequestCopyWithImpl;
  @useResult
  $Res call(
      {String stationId,
      String? stationPin,
      String? attendantPin,
      String? pin});
}

/// @nodoc
class _$StationAttendantPinLoginRequestCopyWithImpl<$Res>
    implements $StationAttendantPinLoginRequestCopyWith<$Res> {
  _$StationAttendantPinLoginRequestCopyWithImpl(this._self, this._then);

  final StationAttendantPinLoginRequest _self;
  final $Res Function(StationAttendantPinLoginRequest) _then;

  /// Create a copy of StationAttendantPinLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationId = null,
    Object? stationPin = freezed,
    Object? attendantPin = freezed,
    Object? pin = freezed,
  }) {
    return _then(_self.copyWith(
      stationId: null == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      stationPin: freezed == stationPin
          ? _self.stationPin
          : stationPin // ignore: cast_nullable_to_non_nullable
              as String?,
      attendantPin: freezed == attendantPin
          ? _self.attendantPin
          : attendantPin // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StationAttendantPinLoginRequest].
extension StationAttendantPinLoginRequestPatterns
    on StationAttendantPinLoginRequest {
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
    TResult Function(_StationAttendantPinLoginRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginRequest() when $default != null:
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
    TResult Function(_StationAttendantPinLoginRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginRequest():
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
    TResult? Function(_StationAttendantPinLoginRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginRequest() when $default != null:
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
    TResult Function(String stationId, String? stationPin, String? attendantPin,
            String? pin)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginRequest() when $default != null:
        return $default(
            _that.stationId, _that.stationPin, _that.attendantPin, _that.pin);
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
    TResult Function(String stationId, String? stationPin, String? attendantPin,
            String? pin)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginRequest():
        return $default(
            _that.stationId, _that.stationPin, _that.attendantPin, _that.pin);
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
    TResult? Function(String stationId, String? stationPin,
            String? attendantPin, String? pin)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginRequest() when $default != null:
        return $default(
            _that.stationId, _that.stationPin, _that.attendantPin, _that.pin);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StationAttendantPinLoginRequest extends StationAttendantPinLoginRequest {
  const _StationAttendantPinLoginRequest(
      {required this.stationId, this.stationPin, this.attendantPin, this.pin})
      : super._();

  @override
  final String stationId;
  @override
  final String? stationPin;
  @override
  final String? attendantPin;
  @override
  final String? pin;

  /// Create a copy of StationAttendantPinLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StationAttendantPinLoginRequestCopyWith<_StationAttendantPinLoginRequest>
      get copyWith => __$StationAttendantPinLoginRequestCopyWithImpl<
          _StationAttendantPinLoginRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StationAttendantPinLoginRequest &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.stationPin, stationPin) ||
                other.stationPin == stationPin) &&
            (identical(other.attendantPin, attendantPin) ||
                other.attendantPin == attendantPin) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stationId, stationPin, attendantPin, pin);

  @override
  String toString() {
    return 'StationAttendantPinLoginRequest(stationId: $stationId, stationPin: $stationPin, attendantPin: $attendantPin, pin: $pin)';
  }
}

/// @nodoc
abstract mixin class _$StationAttendantPinLoginRequestCopyWith<$Res>
    implements $StationAttendantPinLoginRequestCopyWith<$Res> {
  factory _$StationAttendantPinLoginRequestCopyWith(
          _StationAttendantPinLoginRequest value,
          $Res Function(_StationAttendantPinLoginRequest) _then) =
      __$StationAttendantPinLoginRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String stationId,
      String? stationPin,
      String? attendantPin,
      String? pin});
}

/// @nodoc
class __$StationAttendantPinLoginRequestCopyWithImpl<$Res>
    implements _$StationAttendantPinLoginRequestCopyWith<$Res> {
  __$StationAttendantPinLoginRequestCopyWithImpl(this._self, this._then);

  final _StationAttendantPinLoginRequest _self;
  final $Res Function(_StationAttendantPinLoginRequest) _then;

  /// Create a copy of StationAttendantPinLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stationId = null,
    Object? stationPin = freezed,
    Object? attendantPin = freezed,
    Object? pin = freezed,
  }) {
    return _then(_StationAttendantPinLoginRequest(
      stationId: null == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      stationPin: freezed == stationPin
          ? _self.stationPin
          : stationPin // ignore: cast_nullable_to_non_nullable
              as String?,
      attendantPin: freezed == attendantPin
          ? _self.attendantPin
          : attendantPin // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$StationAttendantPinLoginResponse {
  String get access;
  String get refresh;
  Map<String, dynamic> get user;
  String get stationId;
  String get pumpAttendantId;
  List<dynamic> get roles;
  List<String> get permissions;

  /// Create a copy of StationAttendantPinLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StationAttendantPinLoginResponseCopyWith<StationAttendantPinLoginResponse>
      get copyWith => _$StationAttendantPinLoginResponseCopyWithImpl<
              StationAttendantPinLoginResponse>(
          this as StationAttendantPinLoginResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StationAttendantPinLoginResponse &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.pumpAttendantId, pumpAttendantId) ||
                other.pumpAttendantId == pumpAttendantId) &&
            const DeepCollectionEquality().equals(other.roles, roles) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      access,
      refresh,
      const DeepCollectionEquality().hash(user),
      stationId,
      pumpAttendantId,
      const DeepCollectionEquality().hash(roles),
      const DeepCollectionEquality().hash(permissions));

  @override
  String toString() {
    return 'StationAttendantPinLoginResponse(access: $access, refresh: $refresh, user: $user, stationId: $stationId, pumpAttendantId: $pumpAttendantId, roles: $roles, permissions: $permissions)';
  }
}

/// @nodoc
abstract mixin class $StationAttendantPinLoginResponseCopyWith<$Res> {
  factory $StationAttendantPinLoginResponseCopyWith(
          StationAttendantPinLoginResponse value,
          $Res Function(StationAttendantPinLoginResponse) _then) =
      _$StationAttendantPinLoginResponseCopyWithImpl;
  @useResult
  $Res call(
      {String access,
      String refresh,
      Map<String, dynamic> user,
      String stationId,
      String pumpAttendantId,
      List<dynamic> roles,
      List<String> permissions});
}

/// @nodoc
class _$StationAttendantPinLoginResponseCopyWithImpl<$Res>
    implements $StationAttendantPinLoginResponseCopyWith<$Res> {
  _$StationAttendantPinLoginResponseCopyWithImpl(this._self, this._then);

  final StationAttendantPinLoginResponse _self;
  final $Res Function(StationAttendantPinLoginResponse) _then;

  /// Create a copy of StationAttendantPinLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
    Object? user = null,
    Object? stationId = null,
    Object? pumpAttendantId = null,
    Object? roles = null,
    Object? permissions = null,
  }) {
    return _then(_self.copyWith(
      access: null == access
          ? _self.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _self.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      stationId: null == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      pumpAttendantId: null == pumpAttendantId
          ? _self.pumpAttendantId
          : pumpAttendantId // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      permissions: null == permissions
          ? _self.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [StationAttendantPinLoginResponse].
extension StationAttendantPinLoginResponsePatterns
    on StationAttendantPinLoginResponse {
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
    TResult Function(_StationAttendantPinLoginResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginResponse() when $default != null:
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
    TResult Function(_StationAttendantPinLoginResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginResponse():
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
    TResult? Function(_StationAttendantPinLoginResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginResponse() when $default != null:
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
            String access,
            String refresh,
            Map<String, dynamic> user,
            String stationId,
            String pumpAttendantId,
            List<dynamic> roles,
            List<String> permissions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginResponse() when $default != null:
        return $default(
            _that.access,
            _that.refresh,
            _that.user,
            _that.stationId,
            _that.pumpAttendantId,
            _that.roles,
            _that.permissions);
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
            String access,
            String refresh,
            Map<String, dynamic> user,
            String stationId,
            String pumpAttendantId,
            List<dynamic> roles,
            List<String> permissions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginResponse():
        return $default(
            _that.access,
            _that.refresh,
            _that.user,
            _that.stationId,
            _that.pumpAttendantId,
            _that.roles,
            _that.permissions);
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
            String access,
            String refresh,
            Map<String, dynamic> user,
            String stationId,
            String pumpAttendantId,
            List<dynamic> roles,
            List<String> permissions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StationAttendantPinLoginResponse() when $default != null:
        return $default(
            _that.access,
            _that.refresh,
            _that.user,
            _that.stationId,
            _that.pumpAttendantId,
            _that.roles,
            _that.permissions);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StationAttendantPinLoginResponse
    implements StationAttendantPinLoginResponse {
  const _StationAttendantPinLoginResponse(
      {required this.access,
      required this.refresh,
      required final Map<String, dynamic> user,
      required this.stationId,
      required this.pumpAttendantId,
      final List<dynamic> roles = const [],
      final List<String> permissions = const []})
      : _user = user,
        _roles = roles,
        _permissions = permissions;

  @override
  final String access;
  @override
  final String refresh;
  final Map<String, dynamic> _user;
  @override
  Map<String, dynamic> get user {
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  final String stationId;
  @override
  final String pumpAttendantId;
  final List<dynamic> _roles;
  @override
  @JsonKey()
  List<dynamic> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  final List<String> _permissions;
  @override
  @JsonKey()
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  /// Create a copy of StationAttendantPinLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StationAttendantPinLoginResponseCopyWith<_StationAttendantPinLoginResponse>
      get copyWith => __$StationAttendantPinLoginResponseCopyWithImpl<
          _StationAttendantPinLoginResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StationAttendantPinLoginResponse &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.pumpAttendantId, pumpAttendantId) ||
                other.pumpAttendantId == pumpAttendantId) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      access,
      refresh,
      const DeepCollectionEquality().hash(_user),
      stationId,
      pumpAttendantId,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_permissions));

  @override
  String toString() {
    return 'StationAttendantPinLoginResponse(access: $access, refresh: $refresh, user: $user, stationId: $stationId, pumpAttendantId: $pumpAttendantId, roles: $roles, permissions: $permissions)';
  }
}

/// @nodoc
abstract mixin class _$StationAttendantPinLoginResponseCopyWith<$Res>
    implements $StationAttendantPinLoginResponseCopyWith<$Res> {
  factory _$StationAttendantPinLoginResponseCopyWith(
          _StationAttendantPinLoginResponse value,
          $Res Function(_StationAttendantPinLoginResponse) _then) =
      __$StationAttendantPinLoginResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String access,
      String refresh,
      Map<String, dynamic> user,
      String stationId,
      String pumpAttendantId,
      List<dynamic> roles,
      List<String> permissions});
}

/// @nodoc
class __$StationAttendantPinLoginResponseCopyWithImpl<$Res>
    implements _$StationAttendantPinLoginResponseCopyWith<$Res> {
  __$StationAttendantPinLoginResponseCopyWithImpl(this._self, this._then);

  final _StationAttendantPinLoginResponse _self;
  final $Res Function(_StationAttendantPinLoginResponse) _then;

  /// Create a copy of StationAttendantPinLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? access = null,
    Object? refresh = null,
    Object? user = null,
    Object? stationId = null,
    Object? pumpAttendantId = null,
    Object? roles = null,
    Object? permissions = null,
  }) {
    return _then(_StationAttendantPinLoginResponse(
      access: null == access
          ? _self.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _self.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      stationId: null == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      pumpAttendantId: null == pumpAttendantId
          ? _self.pumpAttendantId
          : pumpAttendantId // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      permissions: null == permissions
          ? _self._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
