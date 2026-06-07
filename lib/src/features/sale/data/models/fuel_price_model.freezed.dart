// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fuel_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FuelPrice {
  String get id;
  String get fuelType;
  double get unitPrice;
  String get stationId;
  String get territoryId;
  String? get status;

  /// Create a copy of FuelPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FuelPriceCopyWith<FuelPrice> get copyWith =>
      _$FuelPriceCopyWithImpl<FuelPrice>(this as FuelPrice, _$identity);

  /// Serializes this FuelPrice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FuelPrice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fuelType, fuelType) ||
                other.fuelType == fuelType) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.territoryId, territoryId) ||
                other.territoryId == territoryId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fuelType, unitPrice, stationId, territoryId, status);

  @override
  String toString() {
    return 'FuelPrice(id: $id, fuelType: $fuelType, unitPrice: $unitPrice, stationId: $stationId, territoryId: $territoryId, status: $status)';
  }
}

/// @nodoc
abstract mixin class $FuelPriceCopyWith<$Res> {
  factory $FuelPriceCopyWith(FuelPrice value, $Res Function(FuelPrice) _then) =
      _$FuelPriceCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String fuelType,
      double unitPrice,
      String stationId,
      String territoryId,
      String? status});
}

/// @nodoc
class _$FuelPriceCopyWithImpl<$Res> implements $FuelPriceCopyWith<$Res> {
  _$FuelPriceCopyWithImpl(this._self, this._then);

  final FuelPrice _self;
  final $Res Function(FuelPrice) _then;

  /// Create a copy of FuelPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fuelType = null,
    Object? unitPrice = null,
    Object? stationId = null,
    Object? territoryId = null,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fuelType: null == fuelType
          ? _self.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      stationId: null == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      territoryId: null == territoryId
          ? _self.territoryId
          : territoryId // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FuelPrice].
extension FuelPricePatterns on FuelPrice {
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
    TResult Function(_FuelPrice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FuelPrice() when $default != null:
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
    TResult Function(_FuelPrice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FuelPrice():
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
    TResult? Function(_FuelPrice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FuelPrice() when $default != null:
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
    TResult Function(String id, String fuelType, double unitPrice,
            String stationId, String territoryId, String? status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FuelPrice() when $default != null:
        return $default(_that.id, _that.fuelType, _that.unitPrice,
            _that.stationId, _that.territoryId, _that.status);
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
    TResult Function(String id, String fuelType, double unitPrice,
            String stationId, String territoryId, String? status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FuelPrice():
        return $default(_that.id, _that.fuelType, _that.unitPrice,
            _that.stationId, _that.territoryId, _that.status);
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
    TResult? Function(String id, String fuelType, double unitPrice,
            String stationId, String territoryId, String? status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FuelPrice() when $default != null:
        return $default(_that.id, _that.fuelType, _that.unitPrice,
            _that.stationId, _that.territoryId, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FuelPrice implements FuelPrice {
  const _FuelPrice(
      {required this.id,
      required this.fuelType,
      required this.unitPrice,
      required this.stationId,
      required this.territoryId,
      this.status});
  factory _FuelPrice.fromJson(Map<String, dynamic> json) =>
      _$FuelPriceFromJson(json);

  @override
  final String id;
  @override
  final String fuelType;
  @override
  final double unitPrice;
  @override
  final String stationId;
  @override
  final String territoryId;
  @override
  final String? status;

  /// Create a copy of FuelPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FuelPriceCopyWith<_FuelPrice> get copyWith =>
      __$FuelPriceCopyWithImpl<_FuelPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FuelPriceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FuelPrice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fuelType, fuelType) ||
                other.fuelType == fuelType) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.territoryId, territoryId) ||
                other.territoryId == territoryId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fuelType, unitPrice, stationId, territoryId, status);

  @override
  String toString() {
    return 'FuelPrice(id: $id, fuelType: $fuelType, unitPrice: $unitPrice, stationId: $stationId, territoryId: $territoryId, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$FuelPriceCopyWith<$Res>
    implements $FuelPriceCopyWith<$Res> {
  factory _$FuelPriceCopyWith(
          _FuelPrice value, $Res Function(_FuelPrice) _then) =
      __$FuelPriceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String fuelType,
      double unitPrice,
      String stationId,
      String territoryId,
      String? status});
}

/// @nodoc
class __$FuelPriceCopyWithImpl<$Res> implements _$FuelPriceCopyWith<$Res> {
  __$FuelPriceCopyWithImpl(this._self, this._then);

  final _FuelPrice _self;
  final $Res Function(_FuelPrice) _then;

  /// Create a copy of FuelPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? fuelType = null,
    Object? unitPrice = null,
    Object? stationId = null,
    Object? territoryId = null,
    Object? status = freezed,
  }) {
    return _then(_FuelPrice(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fuelType: null == fuelType
          ? _self.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      stationId: null == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      territoryId: null == territoryId
          ? _self.territoryId
          : territoryId // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
