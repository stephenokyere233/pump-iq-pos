// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResponse {
  String? get accessToken;
  String? get refreshToken;
  String? get expiresAt;
  AuthUserPayload get user;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      _$AuthResponseCopyWithImpl<AuthResponse>(
          this as AuthResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthResponse &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expiresAt, user);

  @override
  String toString() {
    return 'AuthResponse(accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt, user: $user)';
  }
}

/// @nodoc
abstract mixin class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) _then) =
      _$AuthResponseCopyWithImpl;
  @useResult
  $Res call(
      {String? accessToken,
      String? refreshToken,
      String? expiresAt,
      AuthUserPayload user});

  $AuthUserPayloadCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res> implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._self, this._then);

  final AuthResponse _self;
  final $Res Function(AuthResponse) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresAt = freezed,
    Object? user = null,
  }) {
    return _then(_self.copyWith(
      accessToken: freezed == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUserPayload,
    ));
  }

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthUserPayloadCopyWith<$Res> get user {
    return $AuthUserPayloadCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AuthResponse].
extension AuthResponsePatterns on AuthResponse {
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
    TResult Function(_AuthResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
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
    TResult Function(_AuthResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse():
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
    TResult? Function(_AuthResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
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
    TResult Function(String? accessToken, String? refreshToken,
            String? expiresAt, AuthUserPayload user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
        return $default(
            _that.accessToken, _that.refreshToken, _that.expiresAt, _that.user);
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
    TResult Function(String? accessToken, String? refreshToken,
            String? expiresAt, AuthUserPayload user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse():
        return $default(
            _that.accessToken, _that.refreshToken, _that.expiresAt, _that.user);
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
    TResult? Function(String? accessToken, String? refreshToken,
            String? expiresAt, AuthUserPayload user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
        return $default(
            _that.accessToken, _that.refreshToken, _that.expiresAt, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AuthResponse implements AuthResponse {
  const _AuthResponse(
      {this.accessToken,
      this.refreshToken,
      this.expiresAt,
      required this.user});

  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? expiresAt;
  @override
  final AuthUserPayload user;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthResponseCopyWith<_AuthResponse> get copyWith =>
      __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthResponse &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expiresAt, user);

  @override
  String toString() {
    return 'AuthResponse(accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(
          _AuthResponse value, $Res Function(_AuthResponse) _then) =
      __$AuthResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? accessToken,
      String? refreshToken,
      String? expiresAt,
      AuthUserPayload user});

  @override
  $AuthUserPayloadCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(this._self, this._then);

  final _AuthResponse _self;
  final $Res Function(_AuthResponse) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresAt = freezed,
    Object? user = null,
  }) {
    return _then(_AuthResponse(
      accessToken: freezed == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUserPayload,
    ));
  }

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthUserPayloadCopyWith<$Res> get user {
    return $AuthUserPayloadCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$AuthUserPayload {
  String get userId;
  String get phone;
  String? get username;
  String? get userRole;
  String? get name;
  String? get email;
  String? get country;
  String? get stationId;
  AuthStation? get station;
  List<PumpInfo> get pumpInfo;

  /// Create a copy of AuthUserPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthUserPayloadCopyWith<AuthUserPayload> get copyWith =>
      _$AuthUserPayloadCopyWithImpl<AuthUserPayload>(
          this as AuthUserPayload, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthUserPayload &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.station, station) || other.station == station) &&
            const DeepCollectionEquality().equals(other.pumpInfo, pumpInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      phone,
      username,
      userRole,
      name,
      email,
      country,
      stationId,
      station,
      const DeepCollectionEquality().hash(pumpInfo));

  @override
  String toString() {
    return 'AuthUserPayload(userId: $userId, phone: $phone, username: $username, userRole: $userRole, name: $name, email: $email, country: $country, stationId: $stationId, station: $station, pumpInfo: $pumpInfo)';
  }
}

/// @nodoc
abstract mixin class $AuthUserPayloadCopyWith<$Res> {
  factory $AuthUserPayloadCopyWith(
          AuthUserPayload value, $Res Function(AuthUserPayload) _then) =
      _$AuthUserPayloadCopyWithImpl;
  @useResult
  $Res call(
      {String userId,
      String phone,
      String? username,
      String? userRole,
      String? name,
      String? email,
      String? country,
      String? stationId,
      AuthStation? station,
      List<PumpInfo> pumpInfo});

  $AuthStationCopyWith<$Res>? get station;
}

/// @nodoc
class _$AuthUserPayloadCopyWithImpl<$Res>
    implements $AuthUserPayloadCopyWith<$Res> {
  _$AuthUserPayloadCopyWithImpl(this._self, this._then);

  final AuthUserPayload _self;
  final $Res Function(AuthUserPayload) _then;

  /// Create a copy of AuthUserPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? phone = null,
    Object? username = freezed,
    Object? userRole = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? country = freezed,
    Object? stationId = freezed,
    Object? station = freezed,
    Object? pumpInfo = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _self.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      stationId: freezed == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String?,
      station: freezed == station
          ? _self.station
          : station // ignore: cast_nullable_to_non_nullable
              as AuthStation?,
      pumpInfo: null == pumpInfo
          ? _self.pumpInfo
          : pumpInfo // ignore: cast_nullable_to_non_nullable
              as List<PumpInfo>,
    ));
  }

  /// Create a copy of AuthUserPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthStationCopyWith<$Res>? get station {
    if (_self.station == null) {
      return null;
    }

    return $AuthStationCopyWith<$Res>(_self.station!, (value) {
      return _then(_self.copyWith(station: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AuthUserPayload].
extension AuthUserPayloadPatterns on AuthUserPayload {
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
    TResult Function(_AuthUserPayload value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthUserPayload() when $default != null:
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
    TResult Function(_AuthUserPayload value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthUserPayload():
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
    TResult? Function(_AuthUserPayload value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthUserPayload() when $default != null:
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
            String userId,
            String phone,
            String? username,
            String? userRole,
            String? name,
            String? email,
            String? country,
            String? stationId,
            AuthStation? station,
            List<PumpInfo> pumpInfo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthUserPayload() when $default != null:
        return $default(
            _that.userId,
            _that.phone,
            _that.username,
            _that.userRole,
            _that.name,
            _that.email,
            _that.country,
            _that.stationId,
            _that.station,
            _that.pumpInfo);
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
            String userId,
            String phone,
            String? username,
            String? userRole,
            String? name,
            String? email,
            String? country,
            String? stationId,
            AuthStation? station,
            List<PumpInfo> pumpInfo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthUserPayload():
        return $default(
            _that.userId,
            _that.phone,
            _that.username,
            _that.userRole,
            _that.name,
            _that.email,
            _that.country,
            _that.stationId,
            _that.station,
            _that.pumpInfo);
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
            String userId,
            String phone,
            String? username,
            String? userRole,
            String? name,
            String? email,
            String? country,
            String? stationId,
            AuthStation? station,
            List<PumpInfo> pumpInfo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthUserPayload() when $default != null:
        return $default(
            _that.userId,
            _that.phone,
            _that.username,
            _that.userRole,
            _that.name,
            _that.email,
            _that.country,
            _that.stationId,
            _that.station,
            _that.pumpInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AuthUserPayload extends AuthUserPayload {
  const _AuthUserPayload(
      {required this.userId,
      required this.phone,
      this.username,
      this.userRole,
      this.name,
      this.email,
      this.country,
      this.stationId,
      this.station,
      final List<PumpInfo> pumpInfo = const []})
      : _pumpInfo = pumpInfo,
        super._();

  @override
  final String userId;
  @override
  final String phone;
  @override
  final String? username;
  @override
  final String? userRole;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? country;
  @override
  final String? stationId;
  @override
  final AuthStation? station;
  final List<PumpInfo> _pumpInfo;
  @override
  @JsonKey()
  List<PumpInfo> get pumpInfo {
    if (_pumpInfo is EqualUnmodifiableListView) return _pumpInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pumpInfo);
  }

  /// Create a copy of AuthUserPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthUserPayloadCopyWith<_AuthUserPayload> get copyWith =>
      __$AuthUserPayloadCopyWithImpl<_AuthUserPayload>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthUserPayload &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.station, station) || other.station == station) &&
            const DeepCollectionEquality().equals(other._pumpInfo, _pumpInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      phone,
      username,
      userRole,
      name,
      email,
      country,
      stationId,
      station,
      const DeepCollectionEquality().hash(_pumpInfo));

  @override
  String toString() {
    return 'AuthUserPayload(userId: $userId, phone: $phone, username: $username, userRole: $userRole, name: $name, email: $email, country: $country, stationId: $stationId, station: $station, pumpInfo: $pumpInfo)';
  }
}

/// @nodoc
abstract mixin class _$AuthUserPayloadCopyWith<$Res>
    implements $AuthUserPayloadCopyWith<$Res> {
  factory _$AuthUserPayloadCopyWith(
          _AuthUserPayload value, $Res Function(_AuthUserPayload) _then) =
      __$AuthUserPayloadCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String userId,
      String phone,
      String? username,
      String? userRole,
      String? name,
      String? email,
      String? country,
      String? stationId,
      AuthStation? station,
      List<PumpInfo> pumpInfo});

  @override
  $AuthStationCopyWith<$Res>? get station;
}

/// @nodoc
class __$AuthUserPayloadCopyWithImpl<$Res>
    implements _$AuthUserPayloadCopyWith<$Res> {
  __$AuthUserPayloadCopyWithImpl(this._self, this._then);

  final _AuthUserPayload _self;
  final $Res Function(_AuthUserPayload) _then;

  /// Create a copy of AuthUserPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? phone = null,
    Object? username = freezed,
    Object? userRole = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? country = freezed,
    Object? stationId = freezed,
    Object? station = freezed,
    Object? pumpInfo = null,
  }) {
    return _then(_AuthUserPayload(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _self.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      stationId: freezed == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String?,
      station: freezed == station
          ? _self.station
          : station // ignore: cast_nullable_to_non_nullable
              as AuthStation?,
      pumpInfo: null == pumpInfo
          ? _self._pumpInfo
          : pumpInfo // ignore: cast_nullable_to_non_nullable
              as List<PumpInfo>,
    ));
  }

  /// Create a copy of AuthUserPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthStationCopyWith<$Res>? get station {
    if (_self.station == null) {
      return null;
    }

    return $AuthStationCopyWith<$Res>(_self.station!, (value) {
      return _then(_self.copyWith(station: value));
    });
  }
}

// dart format on
