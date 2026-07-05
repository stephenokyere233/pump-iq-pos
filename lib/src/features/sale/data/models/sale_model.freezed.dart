// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidateAccountRequest {
  String get phoneNumber;
  String get channel;
  String get currency;

  /// Create a copy of ValidateAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidateAccountRequestCopyWith<ValidateAccountRequest> get copyWith =>
      _$ValidateAccountRequestCopyWithImpl<ValidateAccountRequest>(
          this as ValidateAccountRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidateAccountRequest &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, channel, currency);

  @override
  String toString() {
    return 'ValidateAccountRequest(phoneNumber: $phoneNumber, channel: $channel, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $ValidateAccountRequestCopyWith<$Res> {
  factory $ValidateAccountRequestCopyWith(ValidateAccountRequest value,
          $Res Function(ValidateAccountRequest) _then) =
      _$ValidateAccountRequestCopyWithImpl;
  @useResult
  $Res call({String phoneNumber, String channel, String currency});
}

/// @nodoc
class _$ValidateAccountRequestCopyWithImpl<$Res>
    implements $ValidateAccountRequestCopyWith<$Res> {
  _$ValidateAccountRequestCopyWithImpl(this._self, this._then);

  final ValidateAccountRequest _self;
  final $Res Function(ValidateAccountRequest) _then;

  /// Create a copy of ValidateAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? channel = null,
    Object? currency = null,
  }) {
    return _then(_self.copyWith(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ValidateAccountRequest].
extension ValidateAccountRequestPatterns on ValidateAccountRequest {
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
    TResult Function(_ValidateAccountRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountRequest() when $default != null:
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
    TResult Function(_ValidateAccountRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountRequest():
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
    TResult? Function(_ValidateAccountRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountRequest() when $default != null:
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
    TResult Function(String phoneNumber, String channel, String currency)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountRequest() when $default != null:
        return $default(_that.phoneNumber, _that.channel, _that.currency);
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
    TResult Function(String phoneNumber, String channel, String currency)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountRequest():
        return $default(_that.phoneNumber, _that.channel, _that.currency);
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
    TResult? Function(String phoneNumber, String channel, String currency)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountRequest() when $default != null:
        return $default(_that.phoneNumber, _that.channel, _that.currency);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ValidateAccountRequest extends ValidateAccountRequest {
  const _ValidateAccountRequest(
      {required this.phoneNumber, required this.channel, this.currency = 'GHS'})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String channel;
  @override
  @JsonKey()
  final String currency;

  /// Create a copy of ValidateAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidateAccountRequestCopyWith<_ValidateAccountRequest> get copyWith =>
      __$ValidateAccountRequestCopyWithImpl<_ValidateAccountRequest>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidateAccountRequest &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, channel, currency);

  @override
  String toString() {
    return 'ValidateAccountRequest(phoneNumber: $phoneNumber, channel: $channel, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$ValidateAccountRequestCopyWith<$Res>
    implements $ValidateAccountRequestCopyWith<$Res> {
  factory _$ValidateAccountRequestCopyWith(_ValidateAccountRequest value,
          $Res Function(_ValidateAccountRequest) _then) =
      __$ValidateAccountRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String phoneNumber, String channel, String currency});
}

/// @nodoc
class __$ValidateAccountRequestCopyWithImpl<$Res>
    implements _$ValidateAccountRequestCopyWith<$Res> {
  __$ValidateAccountRequestCopyWithImpl(this._self, this._then);

  final _ValidateAccountRequest _self;
  final $Res Function(_ValidateAccountRequest) _then;

  /// Create a copy of ValidateAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? channel = null,
    Object? currency = null,
  }) {
    return _then(_ValidateAccountRequest(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ValidateAccountResponse {
  String? get accountName;

  /// Create a copy of ValidateAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidateAccountResponseCopyWith<ValidateAccountResponse> get copyWith =>
      _$ValidateAccountResponseCopyWithImpl<ValidateAccountResponse>(
          this as ValidateAccountResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidateAccountResponse &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountName);

  @override
  String toString() {
    return 'ValidateAccountResponse(accountName: $accountName)';
  }
}

/// @nodoc
abstract mixin class $ValidateAccountResponseCopyWith<$Res> {
  factory $ValidateAccountResponseCopyWith(ValidateAccountResponse value,
          $Res Function(ValidateAccountResponse) _then) =
      _$ValidateAccountResponseCopyWithImpl;
  @useResult
  $Res call({String? accountName});
}

/// @nodoc
class _$ValidateAccountResponseCopyWithImpl<$Res>
    implements $ValidateAccountResponseCopyWith<$Res> {
  _$ValidateAccountResponseCopyWithImpl(this._self, this._then);

  final ValidateAccountResponse _self;
  final $Res Function(ValidateAccountResponse) _then;

  /// Create a copy of ValidateAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = freezed,
  }) {
    return _then(_self.copyWith(
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ValidateAccountResponse].
extension ValidateAccountResponsePatterns on ValidateAccountResponse {
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
    TResult Function(_ValidateAccountResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountResponse() when $default != null:
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
    TResult Function(_ValidateAccountResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountResponse():
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
    TResult? Function(_ValidateAccountResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountResponse() when $default != null:
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
    TResult Function(String? accountName)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountResponse() when $default != null:
        return $default(_that.accountName);
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
    TResult Function(String? accountName) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountResponse():
        return $default(_that.accountName);
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
    TResult? Function(String? accountName)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountResponse() when $default != null:
        return $default(_that.accountName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ValidateAccountResponse implements ValidateAccountResponse {
  const _ValidateAccountResponse({this.accountName});

  @override
  final String? accountName;

  /// Create a copy of ValidateAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidateAccountResponseCopyWith<_ValidateAccountResponse> get copyWith =>
      __$ValidateAccountResponseCopyWithImpl<_ValidateAccountResponse>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidateAccountResponse &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountName);

  @override
  String toString() {
    return 'ValidateAccountResponse(accountName: $accountName)';
  }
}

/// @nodoc
abstract mixin class _$ValidateAccountResponseCopyWith<$Res>
    implements $ValidateAccountResponseCopyWith<$Res> {
  factory _$ValidateAccountResponseCopyWith(_ValidateAccountResponse value,
          $Res Function(_ValidateAccountResponse) _then) =
      __$ValidateAccountResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String? accountName});
}

/// @nodoc
class __$ValidateAccountResponseCopyWithImpl<$Res>
    implements _$ValidateAccountResponseCopyWith<$Res> {
  __$ValidateAccountResponseCopyWithImpl(this._self, this._then);

  final _ValidateAccountResponse _self;
  final $Res Function(_ValidateAccountResponse) _then;

  /// Create a copy of ValidateAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accountName = freezed,
  }) {
    return _then(_ValidateAccountResponse(
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Sale {
  String get id;
  String get customerId;
  String get pumpAttendantId;
  String get stockId;
  String get companyId;
  double get amount;
  double? get quantity;
  double? get unitPrice;
  String? get paymentMethod;
  String? get accountNumber;
  String? get accountName;
  String? get status;
  String? get paymentExternalRef;
  String? get moolreTransactionId;
  String? get paymentLink;
  bool get paymentOtpRequired;
  SalePaymentCollectionStatus? get paymentCollectionStatus;
  String? get createdAt;

  /// Create a copy of Sale
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaleCopyWith<Sale> get copyWith =>
      _$SaleCopyWithImpl<Sale>(this as Sale, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Sale &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pumpAttendantId, pumpAttendantId) ||
                other.pumpAttendantId == pumpAttendantId) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentExternalRef, paymentExternalRef) ||
                other.paymentExternalRef == paymentExternalRef) &&
            (identical(other.moolreTransactionId, moolreTransactionId) ||
                other.moolreTransactionId == moolreTransactionId) &&
            (identical(other.paymentLink, paymentLink) ||
                other.paymentLink == paymentLink) &&
            (identical(other.paymentOtpRequired, paymentOtpRequired) ||
                other.paymentOtpRequired == paymentOtpRequired) &&
            (identical(
                    other.paymentCollectionStatus, paymentCollectionStatus) ||
                other.paymentCollectionStatus == paymentCollectionStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customerId,
      pumpAttendantId,
      stockId,
      companyId,
      amount,
      quantity,
      unitPrice,
      paymentMethod,
      accountNumber,
      accountName,
      status,
      paymentExternalRef,
      moolreTransactionId,
      paymentLink,
      paymentOtpRequired,
      paymentCollectionStatus,
      createdAt);

  @override
  String toString() {
    return 'Sale(id: $id, customerId: $customerId, pumpAttendantId: $pumpAttendantId, stockId: $stockId, companyId: $companyId, amount: $amount, quantity: $quantity, unitPrice: $unitPrice, paymentMethod: $paymentMethod, accountNumber: $accountNumber, accountName: $accountName, status: $status, paymentExternalRef: $paymentExternalRef, moolreTransactionId: $moolreTransactionId, paymentLink: $paymentLink, paymentOtpRequired: $paymentOtpRequired, paymentCollectionStatus: $paymentCollectionStatus, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $SaleCopyWith<$Res> {
  factory $SaleCopyWith(Sale value, $Res Function(Sale) _then) =
      _$SaleCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String customerId,
      String pumpAttendantId,
      String stockId,
      String companyId,
      double amount,
      double? quantity,
      double? unitPrice,
      String? paymentMethod,
      String? accountNumber,
      String? accountName,
      String? status,
      String? paymentExternalRef,
      String? moolreTransactionId,
      String? paymentLink,
      bool paymentOtpRequired,
      SalePaymentCollectionStatus? paymentCollectionStatus,
      String? createdAt});
}

/// @nodoc
class _$SaleCopyWithImpl<$Res> implements $SaleCopyWith<$Res> {
  _$SaleCopyWithImpl(this._self, this._then);

  final Sale _self;
  final $Res Function(Sale) _then;

  /// Create a copy of Sale
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? pumpAttendantId = null,
    Object? stockId = null,
    Object? companyId = null,
    Object? amount = null,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? paymentMethod = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
    Object? status = freezed,
    Object? paymentExternalRef = freezed,
    Object? moolreTransactionId = freezed,
    Object? paymentLink = freezed,
    Object? paymentOtpRequired = null,
    Object? paymentCollectionStatus = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      pumpAttendantId: null == pumpAttendantId
          ? _self.pumpAttendantId
          : pumpAttendantId // ignore: cast_nullable_to_non_nullable
              as String,
      stockId: null == stockId
          ? _self.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unitPrice: freezed == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentExternalRef: freezed == paymentExternalRef
          ? _self.paymentExternalRef
          : paymentExternalRef // ignore: cast_nullable_to_non_nullable
              as String?,
      moolreTransactionId: freezed == moolreTransactionId
          ? _self.moolreTransactionId
          : moolreTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLink: freezed == paymentLink
          ? _self.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOtpRequired: null == paymentOtpRequired
          ? _self.paymentOtpRequired
          : paymentOtpRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentCollectionStatus: freezed == paymentCollectionStatus
          ? _self.paymentCollectionStatus
          : paymentCollectionStatus // ignore: cast_nullable_to_non_nullable
              as SalePaymentCollectionStatus?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Sale].
extension SalePatterns on Sale {
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
    TResult Function(_Sale value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Sale() when $default != null:
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
    TResult Function(_Sale value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sale():
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
    TResult? Function(_Sale value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sale() when $default != null:
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
            String customerId,
            String pumpAttendantId,
            String stockId,
            String companyId,
            double amount,
            double? quantity,
            double? unitPrice,
            String? paymentMethod,
            String? accountNumber,
            String? accountName,
            String? status,
            String? paymentExternalRef,
            String? moolreTransactionId,
            String? paymentLink,
            bool paymentOtpRequired,
            SalePaymentCollectionStatus? paymentCollectionStatus,
            String? createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Sale() when $default != null:
        return $default(
            _that.id,
            _that.customerId,
            _that.pumpAttendantId,
            _that.stockId,
            _that.companyId,
            _that.amount,
            _that.quantity,
            _that.unitPrice,
            _that.paymentMethod,
            _that.accountNumber,
            _that.accountName,
            _that.status,
            _that.paymentExternalRef,
            _that.moolreTransactionId,
            _that.paymentLink,
            _that.paymentOtpRequired,
            _that.paymentCollectionStatus,
            _that.createdAt);
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
            String customerId,
            String pumpAttendantId,
            String stockId,
            String companyId,
            double amount,
            double? quantity,
            double? unitPrice,
            String? paymentMethod,
            String? accountNumber,
            String? accountName,
            String? status,
            String? paymentExternalRef,
            String? moolreTransactionId,
            String? paymentLink,
            bool paymentOtpRequired,
            SalePaymentCollectionStatus? paymentCollectionStatus,
            String? createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sale():
        return $default(
            _that.id,
            _that.customerId,
            _that.pumpAttendantId,
            _that.stockId,
            _that.companyId,
            _that.amount,
            _that.quantity,
            _that.unitPrice,
            _that.paymentMethod,
            _that.accountNumber,
            _that.accountName,
            _that.status,
            _that.paymentExternalRef,
            _that.moolreTransactionId,
            _that.paymentLink,
            _that.paymentOtpRequired,
            _that.paymentCollectionStatus,
            _that.createdAt);
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
            String customerId,
            String pumpAttendantId,
            String stockId,
            String companyId,
            double amount,
            double? quantity,
            double? unitPrice,
            String? paymentMethod,
            String? accountNumber,
            String? accountName,
            String? status,
            String? paymentExternalRef,
            String? moolreTransactionId,
            String? paymentLink,
            bool paymentOtpRequired,
            SalePaymentCollectionStatus? paymentCollectionStatus,
            String? createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sale() when $default != null:
        return $default(
            _that.id,
            _that.customerId,
            _that.pumpAttendantId,
            _that.stockId,
            _that.companyId,
            _that.amount,
            _that.quantity,
            _that.unitPrice,
            _that.paymentMethod,
            _that.accountNumber,
            _that.accountName,
            _that.status,
            _that.paymentExternalRef,
            _that.moolreTransactionId,
            _that.paymentLink,
            _that.paymentOtpRequired,
            _that.paymentCollectionStatus,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Sale extends Sale {
  const _Sale(
      {required this.id,
      required this.customerId,
      required this.pumpAttendantId,
      required this.stockId,
      required this.companyId,
      required this.amount,
      this.quantity,
      this.unitPrice,
      this.paymentMethod,
      this.accountNumber,
      this.accountName,
      this.status,
      this.paymentExternalRef,
      this.moolreTransactionId,
      this.paymentLink,
      this.paymentOtpRequired = false,
      this.paymentCollectionStatus,
      this.createdAt})
      : super._();

  @override
  final String id;
  @override
  final String customerId;
  @override
  final String pumpAttendantId;
  @override
  final String stockId;
  @override
  final String companyId;
  @override
  final double amount;
  @override
  final double? quantity;
  @override
  final double? unitPrice;
  @override
  final String? paymentMethod;
  @override
  final String? accountNumber;
  @override
  final String? accountName;
  @override
  final String? status;
  @override
  final String? paymentExternalRef;
  @override
  final String? moolreTransactionId;
  @override
  final String? paymentLink;
  @override
  @JsonKey()
  final bool paymentOtpRequired;
  @override
  final SalePaymentCollectionStatus? paymentCollectionStatus;
  @override
  final String? createdAt;

  /// Create a copy of Sale
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaleCopyWith<_Sale> get copyWith =>
      __$SaleCopyWithImpl<_Sale>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sale &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pumpAttendantId, pumpAttendantId) ||
                other.pumpAttendantId == pumpAttendantId) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentExternalRef, paymentExternalRef) ||
                other.paymentExternalRef == paymentExternalRef) &&
            (identical(other.moolreTransactionId, moolreTransactionId) ||
                other.moolreTransactionId == moolreTransactionId) &&
            (identical(other.paymentLink, paymentLink) ||
                other.paymentLink == paymentLink) &&
            (identical(other.paymentOtpRequired, paymentOtpRequired) ||
                other.paymentOtpRequired == paymentOtpRequired) &&
            (identical(
                    other.paymentCollectionStatus, paymentCollectionStatus) ||
                other.paymentCollectionStatus == paymentCollectionStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customerId,
      pumpAttendantId,
      stockId,
      companyId,
      amount,
      quantity,
      unitPrice,
      paymentMethod,
      accountNumber,
      accountName,
      status,
      paymentExternalRef,
      moolreTransactionId,
      paymentLink,
      paymentOtpRequired,
      paymentCollectionStatus,
      createdAt);

  @override
  String toString() {
    return 'Sale(id: $id, customerId: $customerId, pumpAttendantId: $pumpAttendantId, stockId: $stockId, companyId: $companyId, amount: $amount, quantity: $quantity, unitPrice: $unitPrice, paymentMethod: $paymentMethod, accountNumber: $accountNumber, accountName: $accountName, status: $status, paymentExternalRef: $paymentExternalRef, moolreTransactionId: $moolreTransactionId, paymentLink: $paymentLink, paymentOtpRequired: $paymentOtpRequired, paymentCollectionStatus: $paymentCollectionStatus, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$SaleCopyWith<$Res> implements $SaleCopyWith<$Res> {
  factory _$SaleCopyWith(_Sale value, $Res Function(_Sale) _then) =
      __$SaleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String customerId,
      String pumpAttendantId,
      String stockId,
      String companyId,
      double amount,
      double? quantity,
      double? unitPrice,
      String? paymentMethod,
      String? accountNumber,
      String? accountName,
      String? status,
      String? paymentExternalRef,
      String? moolreTransactionId,
      String? paymentLink,
      bool paymentOtpRequired,
      SalePaymentCollectionStatus? paymentCollectionStatus,
      String? createdAt});
}

/// @nodoc
class __$SaleCopyWithImpl<$Res> implements _$SaleCopyWith<$Res> {
  __$SaleCopyWithImpl(this._self, this._then);

  final _Sale _self;
  final $Res Function(_Sale) _then;

  /// Create a copy of Sale
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? pumpAttendantId = null,
    Object? stockId = null,
    Object? companyId = null,
    Object? amount = null,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? paymentMethod = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
    Object? status = freezed,
    Object? paymentExternalRef = freezed,
    Object? moolreTransactionId = freezed,
    Object? paymentLink = freezed,
    Object? paymentOtpRequired = null,
    Object? paymentCollectionStatus = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Sale(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      pumpAttendantId: null == pumpAttendantId
          ? _self.pumpAttendantId
          : pumpAttendantId // ignore: cast_nullable_to_non_nullable
              as String,
      stockId: null == stockId
          ? _self.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unitPrice: freezed == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentExternalRef: freezed == paymentExternalRef
          ? _self.paymentExternalRef
          : paymentExternalRef // ignore: cast_nullable_to_non_nullable
              as String?,
      moolreTransactionId: freezed == moolreTransactionId
          ? _self.moolreTransactionId
          : moolreTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLink: freezed == paymentLink
          ? _self.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOtpRequired: null == paymentOtpRequired
          ? _self.paymentOtpRequired
          : paymentOtpRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentCollectionStatus: freezed == paymentCollectionStatus
          ? _self.paymentCollectionStatus
          : paymentCollectionStatus // ignore: cast_nullable_to_non_nullable
              as SalePaymentCollectionStatus?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CreateSaleRequest {
  String get customerId;
  String get pumpAttendantId;
  String get stockId;
  String get companyId;
  double get amount;
  String? get paymentMethod;
  String? get accountNumber;
  String? get accountName;

  /// Create a copy of CreateSaleRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSaleRequestCopyWith<CreateSaleRequest> get copyWith =>
      _$CreateSaleRequestCopyWithImpl<CreateSaleRequest>(
          this as CreateSaleRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSaleRequest &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pumpAttendantId, pumpAttendantId) ||
                other.pumpAttendantId == pumpAttendantId) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId, pumpAttendantId,
      stockId, companyId, amount, paymentMethod, accountNumber, accountName);

  @override
  String toString() {
    return 'CreateSaleRequest(customerId: $customerId, pumpAttendantId: $pumpAttendantId, stockId: $stockId, companyId: $companyId, amount: $amount, paymentMethod: $paymentMethod, accountNumber: $accountNumber, accountName: $accountName)';
  }
}

/// @nodoc
abstract mixin class $CreateSaleRequestCopyWith<$Res> {
  factory $CreateSaleRequestCopyWith(
          CreateSaleRequest value, $Res Function(CreateSaleRequest) _then) =
      _$CreateSaleRequestCopyWithImpl;
  @useResult
  $Res call(
      {String customerId,
      String pumpAttendantId,
      String stockId,
      String companyId,
      double amount,
      String? paymentMethod,
      String? accountNumber,
      String? accountName});
}

/// @nodoc
class _$CreateSaleRequestCopyWithImpl<$Res>
    implements $CreateSaleRequestCopyWith<$Res> {
  _$CreateSaleRequestCopyWithImpl(this._self, this._then);

  final CreateSaleRequest _self;
  final $Res Function(CreateSaleRequest) _then;

  /// Create a copy of CreateSaleRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? pumpAttendantId = null,
    Object? stockId = null,
    Object? companyId = null,
    Object? amount = null,
    Object? paymentMethod = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
  }) {
    return _then(_self.copyWith(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      pumpAttendantId: null == pumpAttendantId
          ? _self.pumpAttendantId
          : pumpAttendantId // ignore: cast_nullable_to_non_nullable
              as String,
      stockId: null == stockId
          ? _self.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateSaleRequest].
extension CreateSaleRequestPatterns on CreateSaleRequest {
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
    TResult Function(_CreateSaleRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSaleRequest() when $default != null:
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
    TResult Function(_CreateSaleRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSaleRequest():
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
    TResult? Function(_CreateSaleRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSaleRequest() when $default != null:
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
            String customerId,
            String pumpAttendantId,
            String stockId,
            String companyId,
            double amount,
            String? paymentMethod,
            String? accountNumber,
            String? accountName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSaleRequest() when $default != null:
        return $default(
            _that.customerId,
            _that.pumpAttendantId,
            _that.stockId,
            _that.companyId,
            _that.amount,
            _that.paymentMethod,
            _that.accountNumber,
            _that.accountName);
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
            String customerId,
            String pumpAttendantId,
            String stockId,
            String companyId,
            double amount,
            String? paymentMethod,
            String? accountNumber,
            String? accountName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSaleRequest():
        return $default(
            _that.customerId,
            _that.pumpAttendantId,
            _that.stockId,
            _that.companyId,
            _that.amount,
            _that.paymentMethod,
            _that.accountNumber,
            _that.accountName);
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
            String customerId,
            String pumpAttendantId,
            String stockId,
            String companyId,
            double amount,
            String? paymentMethod,
            String? accountNumber,
            String? accountName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSaleRequest() when $default != null:
        return $default(
            _that.customerId,
            _that.pumpAttendantId,
            _that.stockId,
            _that.companyId,
            _that.amount,
            _that.paymentMethod,
            _that.accountNumber,
            _that.accountName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CreateSaleRequest extends CreateSaleRequest {
  const _CreateSaleRequest(
      {required this.customerId,
      required this.pumpAttendantId,
      required this.stockId,
      required this.companyId,
      required this.amount,
      this.paymentMethod,
      this.accountNumber,
      this.accountName})
      : super._();

  @override
  final String customerId;
  @override
  final String pumpAttendantId;
  @override
  final String stockId;
  @override
  final String companyId;
  @override
  final double amount;
  @override
  final String? paymentMethod;
  @override
  final String? accountNumber;
  @override
  final String? accountName;

  /// Create a copy of CreateSaleRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSaleRequestCopyWith<_CreateSaleRequest> get copyWith =>
      __$CreateSaleRequestCopyWithImpl<_CreateSaleRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSaleRequest &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pumpAttendantId, pumpAttendantId) ||
                other.pumpAttendantId == pumpAttendantId) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId, pumpAttendantId,
      stockId, companyId, amount, paymentMethod, accountNumber, accountName);

  @override
  String toString() {
    return 'CreateSaleRequest(customerId: $customerId, pumpAttendantId: $pumpAttendantId, stockId: $stockId, companyId: $companyId, amount: $amount, paymentMethod: $paymentMethod, accountNumber: $accountNumber, accountName: $accountName)';
  }
}

/// @nodoc
abstract mixin class _$CreateSaleRequestCopyWith<$Res>
    implements $CreateSaleRequestCopyWith<$Res> {
  factory _$CreateSaleRequestCopyWith(
          _CreateSaleRequest value, $Res Function(_CreateSaleRequest) _then) =
      __$CreateSaleRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String customerId,
      String pumpAttendantId,
      String stockId,
      String companyId,
      double amount,
      String? paymentMethod,
      String? accountNumber,
      String? accountName});
}

/// @nodoc
class __$CreateSaleRequestCopyWithImpl<$Res>
    implements _$CreateSaleRequestCopyWith<$Res> {
  __$CreateSaleRequestCopyWithImpl(this._self, this._then);

  final _CreateSaleRequest _self;
  final $Res Function(_CreateSaleRequest) _then;

  /// Create a copy of CreateSaleRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerId = null,
    Object? pumpAttendantId = null,
    Object? stockId = null,
    Object? companyId = null,
    Object? amount = null,
    Object? paymentMethod = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
  }) {
    return _then(_CreateSaleRequest(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      pumpAttendantId: null == pumpAttendantId
          ? _self.pumpAttendantId
          : pumpAttendantId // ignore: cast_nullable_to_non_nullable
              as String,
      stockId: null == stockId
          ? _self.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PendingSaleDraft {
  String get stockId;
  String get companyId;
  double get amount;
  String? get paymentMethod;
  String? get accountNumber;
  String? get accountName;

  /// Create a copy of PendingSaleDraft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PendingSaleDraftCopyWith<PendingSaleDraft> get copyWith =>
      _$PendingSaleDraftCopyWithImpl<PendingSaleDraft>(
          this as PendingSaleDraft, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PendingSaleDraft &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stockId, companyId, amount,
      paymentMethod, accountNumber, accountName);

  @override
  String toString() {
    return 'PendingSaleDraft(stockId: $stockId, companyId: $companyId, amount: $amount, paymentMethod: $paymentMethod, accountNumber: $accountNumber, accountName: $accountName)';
  }
}

/// @nodoc
abstract mixin class $PendingSaleDraftCopyWith<$Res> {
  factory $PendingSaleDraftCopyWith(
          PendingSaleDraft value, $Res Function(PendingSaleDraft) _then) =
      _$PendingSaleDraftCopyWithImpl;
  @useResult
  $Res call(
      {String stockId,
      String companyId,
      double amount,
      String? paymentMethod,
      String? accountNumber,
      String? accountName});
}

/// @nodoc
class _$PendingSaleDraftCopyWithImpl<$Res>
    implements $PendingSaleDraftCopyWith<$Res> {
  _$PendingSaleDraftCopyWithImpl(this._self, this._then);

  final PendingSaleDraft _self;
  final $Res Function(PendingSaleDraft) _then;

  /// Create a copy of PendingSaleDraft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockId = null,
    Object? companyId = null,
    Object? amount = null,
    Object? paymentMethod = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
  }) {
    return _then(_self.copyWith(
      stockId: null == stockId
          ? _self.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PendingSaleDraft].
extension PendingSaleDraftPatterns on PendingSaleDraft {
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
    TResult Function(_PendingSaleDraft value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PendingSaleDraft() when $default != null:
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
    TResult Function(_PendingSaleDraft value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PendingSaleDraft():
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
    TResult? Function(_PendingSaleDraft value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PendingSaleDraft() when $default != null:
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
    TResult Function(String stockId, String companyId, double amount,
            String? paymentMethod, String? accountNumber, String? accountName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PendingSaleDraft() when $default != null:
        return $default(_that.stockId, _that.companyId, _that.amount,
            _that.paymentMethod, _that.accountNumber, _that.accountName);
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
    TResult Function(String stockId, String companyId, double amount,
            String? paymentMethod, String? accountNumber, String? accountName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PendingSaleDraft():
        return $default(_that.stockId, _that.companyId, _that.amount,
            _that.paymentMethod, _that.accountNumber, _that.accountName);
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
    TResult? Function(String stockId, String companyId, double amount,
            String? paymentMethod, String? accountNumber, String? accountName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PendingSaleDraft() when $default != null:
        return $default(_that.stockId, _that.companyId, _that.amount,
            _that.paymentMethod, _that.accountNumber, _that.accountName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PendingSaleDraft implements PendingSaleDraft {
  const _PendingSaleDraft(
      {required this.stockId,
      required this.companyId,
      required this.amount,
      this.paymentMethod,
      this.accountNumber,
      this.accountName});

  @override
  final String stockId;
  @override
  final String companyId;
  @override
  final double amount;
  @override
  final String? paymentMethod;
  @override
  final String? accountNumber;
  @override
  final String? accountName;

  /// Create a copy of PendingSaleDraft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PendingSaleDraftCopyWith<_PendingSaleDraft> get copyWith =>
      __$PendingSaleDraftCopyWithImpl<_PendingSaleDraft>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PendingSaleDraft &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stockId, companyId, amount,
      paymentMethod, accountNumber, accountName);

  @override
  String toString() {
    return 'PendingSaleDraft(stockId: $stockId, companyId: $companyId, amount: $amount, paymentMethod: $paymentMethod, accountNumber: $accountNumber, accountName: $accountName)';
  }
}

/// @nodoc
abstract mixin class _$PendingSaleDraftCopyWith<$Res>
    implements $PendingSaleDraftCopyWith<$Res> {
  factory _$PendingSaleDraftCopyWith(
          _PendingSaleDraft value, $Res Function(_PendingSaleDraft) _then) =
      __$PendingSaleDraftCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String stockId,
      String companyId,
      double amount,
      String? paymentMethod,
      String? accountNumber,
      String? accountName});
}

/// @nodoc
class __$PendingSaleDraftCopyWithImpl<$Res>
    implements _$PendingSaleDraftCopyWith<$Res> {
  __$PendingSaleDraftCopyWithImpl(this._self, this._then);

  final _PendingSaleDraft _self;
  final $Res Function(_PendingSaleDraft) _then;

  /// Create a copy of PendingSaleDraft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stockId = null,
    Object? companyId = null,
    Object? amount = null,
    Object? paymentMethod = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
  }) {
    return _then(_PendingSaleDraft(
      stockId: null == stockId
          ? _self.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
