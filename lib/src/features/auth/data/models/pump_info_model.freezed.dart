// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pump_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PumpInfo {
  String get id;
  String get pumpName;
  String get stationId;
  String get territoryId;

  /// Create a copy of PumpInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PumpInfoCopyWith<PumpInfo> get copyWith =>
      _$PumpInfoCopyWithImpl<PumpInfo>(this as PumpInfo, _$identity);

  /// Serializes this PumpInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PumpInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pumpName, pumpName) ||
                other.pumpName == pumpName) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.territoryId, territoryId) ||
                other.territoryId == territoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, pumpName, stationId, territoryId);

  @override
  String toString() {
    return 'PumpInfo(id: $id, pumpName: $pumpName, stationId: $stationId, territoryId: $territoryId)';
  }
}

/// @nodoc
abstract mixin class $PumpInfoCopyWith<$Res> {
  factory $PumpInfoCopyWith(PumpInfo value, $Res Function(PumpInfo) _then) =
      _$PumpInfoCopyWithImpl;
  @useResult
  $Res call({String id, String pumpName, String stationId, String territoryId});
}

/// @nodoc
class _$PumpInfoCopyWithImpl<$Res> implements $PumpInfoCopyWith<$Res> {
  _$PumpInfoCopyWithImpl(this._self, this._then);

  final PumpInfo _self;
  final $Res Function(PumpInfo) _then;

  /// Create a copy of PumpInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pumpName = null,
    Object? stationId = null,
    Object? territoryId = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pumpName: null == pumpName
          ? _self.pumpName
          : pumpName // ignore: cast_nullable_to_non_nullable
              as String,
      stationId: null == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      territoryId: null == territoryId
          ? _self.territoryId
          : territoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PumpInfo].
extension PumpInfoPatterns on PumpInfo {
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
    TResult Function(_PumpInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PumpInfo() when $default != null:
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
    TResult Function(_PumpInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PumpInfo():
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
    TResult? Function(_PumpInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PumpInfo() when $default != null:
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
            String id, String pumpName, String stationId, String territoryId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PumpInfo() when $default != null:
        return $default(
            _that.id, _that.pumpName, _that.stationId, _that.territoryId);
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
            String id, String pumpName, String stationId, String territoryId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PumpInfo():
        return $default(
            _that.id, _that.pumpName, _that.stationId, _that.territoryId);
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
            String id, String pumpName, String stationId, String territoryId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PumpInfo() when $default != null:
        return $default(
            _that.id, _that.pumpName, _that.stationId, _that.territoryId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PumpInfo extends PumpInfo {
  const _PumpInfo(
      {this.id = '',
      this.pumpName = '',
      this.stationId = '',
      this.territoryId = ''})
      : super._();
  factory _PumpInfo.fromJson(Map<String, dynamic> json) =>
      _$PumpInfoFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String pumpName;
  @override
  @JsonKey()
  final String stationId;
  @override
  @JsonKey()
  final String territoryId;

  /// Create a copy of PumpInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PumpInfoCopyWith<_PumpInfo> get copyWith =>
      __$PumpInfoCopyWithImpl<_PumpInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PumpInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PumpInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pumpName, pumpName) ||
                other.pumpName == pumpName) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.territoryId, territoryId) ||
                other.territoryId == territoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, pumpName, stationId, territoryId);

  @override
  String toString() {
    return 'PumpInfo(id: $id, pumpName: $pumpName, stationId: $stationId, territoryId: $territoryId)';
  }
}

/// @nodoc
abstract mixin class _$PumpInfoCopyWith<$Res>
    implements $PumpInfoCopyWith<$Res> {
  factory _$PumpInfoCopyWith(_PumpInfo value, $Res Function(_PumpInfo) _then) =
      __$PumpInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String pumpName, String stationId, String territoryId});
}

/// @nodoc
class __$PumpInfoCopyWithImpl<$Res> implements _$PumpInfoCopyWith<$Res> {
  __$PumpInfoCopyWithImpl(this._self, this._then);

  final _PumpInfo _self;
  final $Res Function(_PumpInfo) _then;

  /// Create a copy of PumpInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? pumpName = null,
    Object? stationId = null,
    Object? territoryId = null,
  }) {
    return _then(_PumpInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pumpName: null == pumpName
          ? _self.pumpName
          : pumpName // ignore: cast_nullable_to_non_nullable
              as String,
      stationId: null == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      territoryId: null == territoryId
          ? _self.territoryId
          : territoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
