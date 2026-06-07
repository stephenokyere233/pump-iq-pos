// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthStation {
  String get id;
  String get stationName;
  String? get stationCode;
  String? get territoryName;
  String? get companyName;

  /// Create a copy of AuthStation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStationCopyWith<AuthStation> get copyWith =>
      _$AuthStationCopyWithImpl<AuthStation>(this as AuthStation, _$identity);

  /// Serializes this AuthStation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.stationCode, stationCode) ||
                other.stationCode == stationCode) &&
            (identical(other.territoryName, territoryName) ||
                other.territoryName == territoryName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, stationName, stationCode, territoryName, companyName);

  @override
  String toString() {
    return 'AuthStation(id: $id, stationName: $stationName, stationCode: $stationCode, territoryName: $territoryName, companyName: $companyName)';
  }
}

/// @nodoc
abstract mixin class $AuthStationCopyWith<$Res> {
  factory $AuthStationCopyWith(
          AuthStation value, $Res Function(AuthStation) _then) =
      _$AuthStationCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String stationName,
      String? stationCode,
      String? territoryName,
      String? companyName});
}

/// @nodoc
class _$AuthStationCopyWithImpl<$Res> implements $AuthStationCopyWith<$Res> {
  _$AuthStationCopyWithImpl(this._self, this._then);

  final AuthStation _self;
  final $Res Function(AuthStation) _then;

  /// Create a copy of AuthStation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stationName = null,
    Object? stationCode = freezed,
    Object? territoryName = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stationName: null == stationName
          ? _self.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      stationCode: freezed == stationCode
          ? _self.stationCode
          : stationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      territoryName: freezed == territoryName
          ? _self.territoryName
          : territoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthStation].
extension AuthStationPatterns on AuthStation {
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
    TResult Function(_AuthStation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthStation() when $default != null:
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
    TResult Function(_AuthStation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthStation():
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
    TResult? Function(_AuthStation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthStation() when $default != null:
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
    TResult Function(String id, String stationName, String? stationCode,
            String? territoryName, String? companyName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthStation() when $default != null:
        return $default(_that.id, _that.stationName, _that.stationCode,
            _that.territoryName, _that.companyName);
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
    TResult Function(String id, String stationName, String? stationCode,
            String? territoryName, String? companyName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthStation():
        return $default(_that.id, _that.stationName, _that.stationCode,
            _that.territoryName, _that.companyName);
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
    TResult? Function(String id, String stationName, String? stationCode,
            String? territoryName, String? companyName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthStation() when $default != null:
        return $default(_that.id, _that.stationName, _that.stationCode,
            _that.territoryName, _that.companyName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AuthStation implements AuthStation {
  const _AuthStation(
      {this.id = '',
      this.stationName = '',
      this.stationCode,
      this.territoryName,
      this.companyName});
  factory _AuthStation.fromJson(Map<String, dynamic> json) =>
      _$AuthStationFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String stationName;
  @override
  final String? stationCode;
  @override
  final String? territoryName;
  @override
  final String? companyName;

  /// Create a copy of AuthStation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthStationCopyWith<_AuthStation> get copyWith =>
      __$AuthStationCopyWithImpl<_AuthStation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthStationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthStation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.stationCode, stationCode) ||
                other.stationCode == stationCode) &&
            (identical(other.territoryName, territoryName) ||
                other.territoryName == territoryName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, stationName, stationCode, territoryName, companyName);

  @override
  String toString() {
    return 'AuthStation(id: $id, stationName: $stationName, stationCode: $stationCode, territoryName: $territoryName, companyName: $companyName)';
  }
}

/// @nodoc
abstract mixin class _$AuthStationCopyWith<$Res>
    implements $AuthStationCopyWith<$Res> {
  factory _$AuthStationCopyWith(
          _AuthStation value, $Res Function(_AuthStation) _then) =
      __$AuthStationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String stationName,
      String? stationCode,
      String? territoryName,
      String? companyName});
}

/// @nodoc
class __$AuthStationCopyWithImpl<$Res> implements _$AuthStationCopyWith<$Res> {
  __$AuthStationCopyWithImpl(this._self, this._then);

  final _AuthStation _self;
  final $Res Function(_AuthStation) _then;

  /// Create a copy of AuthStation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? stationName = null,
    Object? stationCode = freezed,
    Object? territoryName = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_AuthStation(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stationName: null == stationName
          ? _self.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      stationCode: freezed == stationCode
          ? _self.stationCode
          : stationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      territoryName: freezed == territoryName
          ? _self.territoryName
          : territoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
