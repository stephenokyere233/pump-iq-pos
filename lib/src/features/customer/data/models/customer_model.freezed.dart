// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Customer {
  String get id;
  String get phone;
  String? get name;
  String? get email;
  String? get plateNumber;
  String? get companyId;
  String? get stationId;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<Customer> get copyWith =>
      _$CustomerCopyWithImpl<Customer>(this as Customer, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Customer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, phone, name, email, plateNumber, companyId, stationId);

  @override
  String toString() {
    return 'Customer(id: $id, phone: $phone, name: $name, email: $email, plateNumber: $plateNumber, companyId: $companyId, stationId: $stationId)';
  }
}

/// @nodoc
abstract mixin class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) _then) =
      _$CustomerCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String phone,
      String? name,
      String? email,
      String? plateNumber,
      String? companyId,
      String? stationId});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._self, this._then);

  final Customer _self;
  final $Res Function(Customer) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? plateNumber = freezed,
    Object? companyId = freezed,
    Object? stationId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      plateNumber: freezed == plateNumber
          ? _self.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      stationId: freezed == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Customer].
extension CustomerPatterns on Customer {
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
    TResult Function(_Customer value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Customer() when $default != null:
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
    TResult Function(_Customer value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Customer():
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
    TResult? Function(_Customer value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Customer() when $default != null:
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
    TResult Function(String id, String phone, String? name, String? email,
            String? plateNumber, String? companyId, String? stationId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Customer() when $default != null:
        return $default(_that.id, _that.phone, _that.name, _that.email,
            _that.plateNumber, _that.companyId, _that.stationId);
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
    TResult Function(String id, String phone, String? name, String? email,
            String? plateNumber, String? companyId, String? stationId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Customer():
        return $default(_that.id, _that.phone, _that.name, _that.email,
            _that.plateNumber, _that.companyId, _that.stationId);
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
    TResult? Function(String id, String phone, String? name, String? email,
            String? plateNumber, String? companyId, String? stationId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Customer() when $default != null:
        return $default(_that.id, _that.phone, _that.name, _that.email,
            _that.plateNumber, _that.companyId, _that.stationId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Customer extends Customer {
  const _Customer(
      {required this.id,
      required this.phone,
      this.name,
      this.email,
      this.plateNumber,
      this.companyId,
      this.stationId})
      : super._();

  @override
  final String id;
  @override
  final String phone;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? plateNumber;
  @override
  final String? companyId;
  @override
  final String? stationId;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerCopyWith<_Customer> get copyWith =>
      __$CustomerCopyWithImpl<_Customer>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Customer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, phone, name, email, plateNumber, companyId, stationId);

  @override
  String toString() {
    return 'Customer(id: $id, phone: $phone, name: $name, email: $email, plateNumber: $plateNumber, companyId: $companyId, stationId: $stationId)';
  }
}

/// @nodoc
abstract mixin class _$CustomerCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) _then) =
      __$CustomerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String phone,
      String? name,
      String? email,
      String? plateNumber,
      String? companyId,
      String? stationId});
}

/// @nodoc
class __$CustomerCopyWithImpl<$Res> implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(this._self, this._then);

  final _Customer _self;
  final $Res Function(_Customer) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? plateNumber = freezed,
    Object? companyId = freezed,
    Object? stationId = freezed,
  }) {
    return _then(_Customer(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      plateNumber: freezed == plateNumber
          ? _self.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      stationId: freezed == stationId
          ? _self.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CreateCustomerRequest {
  String get company;
  String get phoneNumber;
  String get plateNumber;
  String get station;
  String? get name;
  String? get email;

  /// Create a copy of CreateCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateCustomerRequestCopyWith<CreateCustomerRequest> get copyWith =>
      _$CreateCustomerRequestCopyWithImpl<CreateCustomerRequest>(
          this as CreateCustomerRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCustomerRequest &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, company, phoneNumber, plateNumber, station, name, email);

  @override
  String toString() {
    return 'CreateCustomerRequest(company: $company, phoneNumber: $phoneNumber, plateNumber: $plateNumber, station: $station, name: $name, email: $email)';
  }
}

/// @nodoc
abstract mixin class $CreateCustomerRequestCopyWith<$Res> {
  factory $CreateCustomerRequestCopyWith(CreateCustomerRequest value,
          $Res Function(CreateCustomerRequest) _then) =
      _$CreateCustomerRequestCopyWithImpl;
  @useResult
  $Res call(
      {String company,
      String phoneNumber,
      String plateNumber,
      String station,
      String? name,
      String? email});
}

/// @nodoc
class _$CreateCustomerRequestCopyWithImpl<$Res>
    implements $CreateCustomerRequestCopyWith<$Res> {
  _$CreateCustomerRequestCopyWithImpl(this._self, this._then);

  final CreateCustomerRequest _self;
  final $Res Function(CreateCustomerRequest) _then;

  /// Create a copy of CreateCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? phoneNumber = null,
    Object? plateNumber = null,
    Object? station = null,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_self.copyWith(
      company: null == company
          ? _self.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _self.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      station: null == station
          ? _self.station
          : station // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateCustomerRequest].
extension CreateCustomerRequestPatterns on CreateCustomerRequest {
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
    TResult Function(_CreateCustomerRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerRequest() when $default != null:
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
    TResult Function(_CreateCustomerRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerRequest():
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
    TResult? Function(_CreateCustomerRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerRequest() when $default != null:
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
    TResult Function(String company, String phoneNumber, String plateNumber,
            String station, String? name, String? email)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerRequest() when $default != null:
        return $default(_that.company, _that.phoneNumber, _that.plateNumber,
            _that.station, _that.name, _that.email);
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
    TResult Function(String company, String phoneNumber, String plateNumber,
            String station, String? name, String? email)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerRequest():
        return $default(_that.company, _that.phoneNumber, _that.plateNumber,
            _that.station, _that.name, _that.email);
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
    TResult? Function(String company, String phoneNumber, String plateNumber,
            String station, String? name, String? email)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerRequest() when $default != null:
        return $default(_that.company, _that.phoneNumber, _that.plateNumber,
            _that.station, _that.name, _that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CreateCustomerRequest extends CreateCustomerRequest {
  const _CreateCustomerRequest(
      {required this.company,
      required this.phoneNumber,
      required this.plateNumber,
      required this.station,
      this.name,
      this.email})
      : super._();

  @override
  final String company;
  @override
  final String phoneNumber;
  @override
  final String plateNumber;
  @override
  final String station;
  @override
  final String? name;
  @override
  final String? email;

  /// Create a copy of CreateCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCustomerRequestCopyWith<_CreateCustomerRequest> get copyWith =>
      __$CreateCustomerRequestCopyWithImpl<_CreateCustomerRequest>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCustomerRequest &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, company, phoneNumber, plateNumber, station, name, email);

  @override
  String toString() {
    return 'CreateCustomerRequest(company: $company, phoneNumber: $phoneNumber, plateNumber: $plateNumber, station: $station, name: $name, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$CreateCustomerRequestCopyWith<$Res>
    implements $CreateCustomerRequestCopyWith<$Res> {
  factory _$CreateCustomerRequestCopyWith(_CreateCustomerRequest value,
          $Res Function(_CreateCustomerRequest) _then) =
      __$CreateCustomerRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String company,
      String phoneNumber,
      String plateNumber,
      String station,
      String? name,
      String? email});
}

/// @nodoc
class __$CreateCustomerRequestCopyWithImpl<$Res>
    implements _$CreateCustomerRequestCopyWith<$Res> {
  __$CreateCustomerRequestCopyWithImpl(this._self, this._then);

  final _CreateCustomerRequest _self;
  final $Res Function(_CreateCustomerRequest) _then;

  /// Create a copy of CreateCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? company = null,
    Object? phoneNumber = null,
    Object? plateNumber = null,
    Object? station = null,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_CreateCustomerRequest(
      company: null == company
          ? _self.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _self.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      station: null == station
          ? _self.station
          : station // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PaginatedCustomers {
  int get count;
  List<Customer> get results;
  String? get next;
  String? get previous;

  /// Create a copy of PaginatedCustomers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginatedCustomersCopyWith<PaginatedCustomers> get copyWith =>
      _$PaginatedCustomersCopyWithImpl<PaginatedCustomers>(
          this as PaginatedCustomers, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginatedCustomers &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count,
      const DeepCollectionEquality().hash(results), next, previous);

  @override
  String toString() {
    return 'PaginatedCustomers(count: $count, results: $results, next: $next, previous: $previous)';
  }
}

/// @nodoc
abstract mixin class $PaginatedCustomersCopyWith<$Res> {
  factory $PaginatedCustomersCopyWith(
          PaginatedCustomers value, $Res Function(PaginatedCustomers) _then) =
      _$PaginatedCustomersCopyWithImpl;
  @useResult
  $Res call(
      {int count, List<Customer> results, String? next, String? previous});
}

/// @nodoc
class _$PaginatedCustomersCopyWithImpl<$Res>
    implements $PaginatedCustomersCopyWith<$Res> {
  _$PaginatedCustomersCopyWithImpl(this._self, this._then);

  final PaginatedCustomers _self;
  final $Res Function(PaginatedCustomers) _then;

  /// Create a copy of PaginatedCustomers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? results = null,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_self.copyWith(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      next: freezed == next
          ? _self.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _self.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaginatedCustomers].
extension PaginatedCustomersPatterns on PaginatedCustomers {
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
    TResult Function(_PaginatedCustomers value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatedCustomers() when $default != null:
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
    TResult Function(_PaginatedCustomers value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedCustomers():
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
    TResult? Function(_PaginatedCustomers value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedCustomers() when $default != null:
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
            int count, List<Customer> results, String? next, String? previous)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatedCustomers() when $default != null:
        return $default(_that.count, _that.results, _that.next, _that.previous);
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
            int count, List<Customer> results, String? next, String? previous)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedCustomers():
        return $default(_that.count, _that.results, _that.next, _that.previous);
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
            int count, List<Customer> results, String? next, String? previous)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedCustomers() when $default != null:
        return $default(_that.count, _that.results, _that.next, _that.previous);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PaginatedCustomers implements PaginatedCustomers {
  const _PaginatedCustomers(
      {required this.count,
      required final List<Customer> results,
      this.next,
      this.previous})
      : _results = results;

  @override
  final int count;
  final List<Customer> _results;
  @override
  List<Customer> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String? next;
  @override
  final String? previous;

  /// Create a copy of PaginatedCustomers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginatedCustomersCopyWith<_PaginatedCustomers> get copyWith =>
      __$PaginatedCustomersCopyWithImpl<_PaginatedCustomers>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatedCustomers &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count,
      const DeepCollectionEquality().hash(_results), next, previous);

  @override
  String toString() {
    return 'PaginatedCustomers(count: $count, results: $results, next: $next, previous: $previous)';
  }
}

/// @nodoc
abstract mixin class _$PaginatedCustomersCopyWith<$Res>
    implements $PaginatedCustomersCopyWith<$Res> {
  factory _$PaginatedCustomersCopyWith(
          _PaginatedCustomers value, $Res Function(_PaginatedCustomers) _then) =
      __$PaginatedCustomersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int count, List<Customer> results, String? next, String? previous});
}

/// @nodoc
class __$PaginatedCustomersCopyWithImpl<$Res>
    implements _$PaginatedCustomersCopyWith<$Res> {
  __$PaginatedCustomersCopyWithImpl(this._self, this._then);

  final _PaginatedCustomers _self;
  final $Res Function(_PaginatedCustomers) _then;

  /// Create a copy of PaginatedCustomers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
    Object? results = null,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_PaginatedCustomers(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      next: freezed == next
          ? _self.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _self.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
