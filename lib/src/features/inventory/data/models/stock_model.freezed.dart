// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Stock {
  String get id;
  String get company;
  String get name;
  String get currentUnitPrice;
  String? get currentPriceUpdatedAt;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockCopyWith<Stock> get copyWith =>
      _$StockCopyWithImpl<Stock>(this as Stock, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Stock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentUnitPrice, currentUnitPrice) ||
                other.currentUnitPrice == currentUnitPrice) &&
            (identical(other.currentPriceUpdatedAt, currentPriceUpdatedAt) ||
                other.currentPriceUpdatedAt == currentPriceUpdatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, company, name, currentUnitPrice, currentPriceUpdatedAt);

  @override
  String toString() {
    return 'Stock(id: $id, company: $company, name: $name, currentUnitPrice: $currentUnitPrice, currentPriceUpdatedAt: $currentPriceUpdatedAt)';
  }
}

/// @nodoc
abstract mixin class $StockCopyWith<$Res> {
  factory $StockCopyWith(Stock value, $Res Function(Stock) _then) =
      _$StockCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String company,
      String name,
      String currentUnitPrice,
      String? currentPriceUpdatedAt});
}

/// @nodoc
class _$StockCopyWithImpl<$Res> implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._self, this._then);

  final Stock _self;
  final $Res Function(Stock) _then;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? name = null,
    Object? currentUnitPrice = null,
    Object? currentPriceUpdatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _self.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currentUnitPrice: null == currentUnitPrice
          ? _self.currentUnitPrice
          : currentUnitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      currentPriceUpdatedAt: freezed == currentPriceUpdatedAt
          ? _self.currentPriceUpdatedAt
          : currentPriceUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Stock].
extension StockPatterns on Stock {
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
    TResult Function(_Stock value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Stock() when $default != null:
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
    TResult Function(_Stock value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stock():
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
    TResult? Function(_Stock value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stock() when $default != null:
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
    TResult Function(String id, String company, String name,
            String currentUnitPrice, String? currentPriceUpdatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Stock() when $default != null:
        return $default(_that.id, _that.company, _that.name,
            _that.currentUnitPrice, _that.currentPriceUpdatedAt);
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
    TResult Function(String id, String company, String name,
            String currentUnitPrice, String? currentPriceUpdatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stock():
        return $default(_that.id, _that.company, _that.name,
            _that.currentUnitPrice, _that.currentPriceUpdatedAt);
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
    TResult? Function(String id, String company, String name,
            String currentUnitPrice, String? currentPriceUpdatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stock() when $default != null:
        return $default(_that.id, _that.company, _that.name,
            _that.currentUnitPrice, _that.currentPriceUpdatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Stock extends Stock {
  const _Stock(
      {required this.id,
      required this.company,
      required this.name,
      this.currentUnitPrice = '0',
      this.currentPriceUpdatedAt})
      : super._();

  @override
  final String id;
  @override
  final String company;
  @override
  final String name;
  @override
  @JsonKey()
  final String currentUnitPrice;
  @override
  final String? currentPriceUpdatedAt;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockCopyWith<_Stock> get copyWith =>
      __$StockCopyWithImpl<_Stock>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Stock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentUnitPrice, currentUnitPrice) ||
                other.currentUnitPrice == currentUnitPrice) &&
            (identical(other.currentPriceUpdatedAt, currentPriceUpdatedAt) ||
                other.currentPriceUpdatedAt == currentPriceUpdatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, company, name, currentUnitPrice, currentPriceUpdatedAt);

  @override
  String toString() {
    return 'Stock(id: $id, company: $company, name: $name, currentUnitPrice: $currentUnitPrice, currentPriceUpdatedAt: $currentPriceUpdatedAt)';
  }
}

/// @nodoc
abstract mixin class _$StockCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$StockCopyWith(_Stock value, $Res Function(_Stock) _then) =
      __$StockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String company,
      String name,
      String currentUnitPrice,
      String? currentPriceUpdatedAt});
}

/// @nodoc
class __$StockCopyWithImpl<$Res> implements _$StockCopyWith<$Res> {
  __$StockCopyWithImpl(this._self, this._then);

  final _Stock _self;
  final $Res Function(_Stock) _then;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? name = null,
    Object? currentUnitPrice = null,
    Object? currentPriceUpdatedAt = freezed,
  }) {
    return _then(_Stock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _self.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currentUnitPrice: null == currentUnitPrice
          ? _self.currentUnitPrice
          : currentUnitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      currentPriceUpdatedAt: freezed == currentPriceUpdatedAt
          ? _self.currentPriceUpdatedAt
          : currentPriceUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PaginatedStocks {
  int get count;
  List<Stock> get results;

  /// Create a copy of PaginatedStocks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginatedStocksCopyWith<PaginatedStocks> get copyWith =>
      _$PaginatedStocksCopyWithImpl<PaginatedStocks>(
          this as PaginatedStocks, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginatedStocks &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'PaginatedStocks(count: $count, results: $results)';
  }
}

/// @nodoc
abstract mixin class $PaginatedStocksCopyWith<$Res> {
  factory $PaginatedStocksCopyWith(
          PaginatedStocks value, $Res Function(PaginatedStocks) _then) =
      _$PaginatedStocksCopyWithImpl;
  @useResult
  $Res call({int count, List<Stock> results});
}

/// @nodoc
class _$PaginatedStocksCopyWithImpl<$Res>
    implements $PaginatedStocksCopyWith<$Res> {
  _$PaginatedStocksCopyWithImpl(this._self, this._then);

  final PaginatedStocks _self;
  final $Res Function(PaginatedStocks) _then;

  /// Create a copy of PaginatedStocks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_self.copyWith(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaginatedStocks].
extension PaginatedStocksPatterns on PaginatedStocks {
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
    TResult Function(_PaginatedStocks value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatedStocks() when $default != null:
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
    TResult Function(_PaginatedStocks value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedStocks():
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
    TResult? Function(_PaginatedStocks value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedStocks() when $default != null:
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
    TResult Function(int count, List<Stock> results)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatedStocks() when $default != null:
        return $default(_that.count, _that.results);
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
    TResult Function(int count, List<Stock> results) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedStocks():
        return $default(_that.count, _that.results);
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
    TResult? Function(int count, List<Stock> results)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedStocks() when $default != null:
        return $default(_that.count, _that.results);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PaginatedStocks implements PaginatedStocks {
  const _PaginatedStocks(
      {required this.count, required final List<Stock> results})
      : _results = results;

  @override
  final int count;
  final List<Stock> _results;
  @override
  List<Stock> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of PaginatedStocks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginatedStocksCopyWith<_PaginatedStocks> get copyWith =>
      __$PaginatedStocksCopyWithImpl<_PaginatedStocks>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatedStocks &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'PaginatedStocks(count: $count, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$PaginatedStocksCopyWith<$Res>
    implements $PaginatedStocksCopyWith<$Res> {
  factory _$PaginatedStocksCopyWith(
          _PaginatedStocks value, $Res Function(_PaginatedStocks) _then) =
      __$PaginatedStocksCopyWithImpl;
  @override
  @useResult
  $Res call({int count, List<Stock> results});
}

/// @nodoc
class __$PaginatedStocksCopyWithImpl<$Res>
    implements _$PaginatedStocksCopyWith<$Res> {
  __$PaginatedStocksCopyWithImpl(this._self, this._then);

  final _PaginatedStocks _self;
  final $Res Function(_PaginatedStocks) _then;

  /// Create a copy of PaginatedStocks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_PaginatedStocks(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

// dart format on
