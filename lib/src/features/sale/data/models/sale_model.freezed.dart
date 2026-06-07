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
  String get customerNumber;
  String get bankCode;
  String? get type;

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
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerNumber, bankCode, type);

  @override
  String toString() {
    return 'ValidateAccountRequest(customerNumber: $customerNumber, bankCode: $bankCode, type: $type)';
  }
}

/// @nodoc
abstract mixin class $ValidateAccountRequestCopyWith<$Res> {
  factory $ValidateAccountRequestCopyWith(ValidateAccountRequest value,
          $Res Function(ValidateAccountRequest) _then) =
      _$ValidateAccountRequestCopyWithImpl;
  @useResult
  $Res call({String customerNumber, String bankCode, String? type});
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
    Object? customerNumber = null,
    Object? bankCode = null,
    Object? type = freezed,
  }) {
    return _then(_self.copyWith(
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _self.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
    TResult Function(String customerNumber, String bankCode, String? type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountRequest() when $default != null:
        return $default(_that.customerNumber, _that.bankCode, _that.type);
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
    TResult Function(String customerNumber, String bankCode, String? type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountRequest():
        return $default(_that.customerNumber, _that.bankCode, _that.type);
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
    TResult? Function(String customerNumber, String bankCode, String? type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountRequest() when $default != null:
        return $default(_that.customerNumber, _that.bankCode, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ValidateAccountRequest extends ValidateAccountRequest {
  const _ValidateAccountRequest(
      {required this.customerNumber, required this.bankCode, this.type})
      : super._();

  @override
  final String customerNumber;
  @override
  final String bankCode;
  @override
  final String? type;

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
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerNumber, bankCode, type);

  @override
  String toString() {
    return 'ValidateAccountRequest(customerNumber: $customerNumber, bankCode: $bankCode, type: $type)';
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
  $Res call({String customerNumber, String bankCode, String? type});
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
    Object? customerNumber = null,
    Object? bankCode = null,
    Object? type = freezed,
  }) {
    return _then(_ValidateAccountRequest(
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _self.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ValidateAccountResponse {
  String? get name;
  String? get customerNumber;

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
            (identical(other.name, name) || other.name == name) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, customerNumber);

  @override
  String toString() {
    return 'ValidateAccountResponse(name: $name, customerNumber: $customerNumber)';
  }
}

/// @nodoc
abstract mixin class $ValidateAccountResponseCopyWith<$Res> {
  factory $ValidateAccountResponseCopyWith(ValidateAccountResponse value,
          $Res Function(ValidateAccountResponse) _then) =
      _$ValidateAccountResponseCopyWithImpl;
  @useResult
  $Res call({String? name, String? customerNumber});
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
    Object? name = freezed,
    Object? customerNumber = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNumber: freezed == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
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
    TResult Function(String? name, String? customerNumber)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountResponse() when $default != null:
        return $default(_that.name, _that.customerNumber);
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
    TResult Function(String? name, String? customerNumber) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountResponse():
        return $default(_that.name, _that.customerNumber);
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
    TResult? Function(String? name, String? customerNumber)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidateAccountResponse() when $default != null:
        return $default(_that.name, _that.customerNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ValidateAccountResponse implements ValidateAccountResponse {
  const _ValidateAccountResponse({this.name, this.customerNumber});

  @override
  final String? name;
  @override
  final String? customerNumber;

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
            (identical(other.name, name) || other.name == name) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, customerNumber);

  @override
  String toString() {
    return 'ValidateAccountResponse(name: $name, customerNumber: $customerNumber)';
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
  $Res call({String? name, String? customerNumber});
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
    Object? name = freezed,
    Object? customerNumber = freezed,
  }) {
    return _then(_ValidateAccountResponse(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNumber: freezed == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$MomoChargeResponse {
  MomoChargeStatus? get status;
  String get reference;
  String? get nextAction;

  /// Create a copy of MomoChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MomoChargeResponseCopyWith<MomoChargeResponse> get copyWith =>
      _$MomoChargeResponseCopyWithImpl<MomoChargeResponse>(
          this as MomoChargeResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MomoChargeResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.nextAction, nextAction) ||
                other.nextAction == nextAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, reference, nextAction);

  @override
  String toString() {
    return 'MomoChargeResponse(status: $status, reference: $reference, nextAction: $nextAction)';
  }
}

/// @nodoc
abstract mixin class $MomoChargeResponseCopyWith<$Res> {
  factory $MomoChargeResponseCopyWith(
          MomoChargeResponse value, $Res Function(MomoChargeResponse) _then) =
      _$MomoChargeResponseCopyWithImpl;
  @useResult
  $Res call({MomoChargeStatus? status, String reference, String? nextAction});
}

/// @nodoc
class _$MomoChargeResponseCopyWithImpl<$Res>
    implements $MomoChargeResponseCopyWith<$Res> {
  _$MomoChargeResponseCopyWithImpl(this._self, this._then);

  final MomoChargeResponse _self;
  final $Res Function(MomoChargeResponse) _then;

  /// Create a copy of MomoChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? reference = null,
    Object? nextAction = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MomoChargeStatus?,
      reference: null == reference
          ? _self.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      nextAction: freezed == nextAction
          ? _self.nextAction
          : nextAction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MomoChargeResponse].
extension MomoChargeResponsePatterns on MomoChargeResponse {
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
    TResult Function(_MomoChargeResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MomoChargeResponse() when $default != null:
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
    TResult Function(_MomoChargeResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoChargeResponse():
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
    TResult? Function(_MomoChargeResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoChargeResponse() when $default != null:
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
            MomoChargeStatus? status, String reference, String? nextAction)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MomoChargeResponse() when $default != null:
        return $default(_that.status, _that.reference, _that.nextAction);
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
            MomoChargeStatus? status, String reference, String? nextAction)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoChargeResponse():
        return $default(_that.status, _that.reference, _that.nextAction);
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
            MomoChargeStatus? status, String reference, String? nextAction)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoChargeResponse() when $default != null:
        return $default(_that.status, _that.reference, _that.nextAction);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MomoChargeResponse extends MomoChargeResponse {
  const _MomoChargeResponse(
      {required this.status, required this.reference, this.nextAction})
      : super._();

  @override
  final MomoChargeStatus? status;
  @override
  final String reference;
  @override
  final String? nextAction;

  /// Create a copy of MomoChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MomoChargeResponseCopyWith<_MomoChargeResponse> get copyWith =>
      __$MomoChargeResponseCopyWithImpl<_MomoChargeResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MomoChargeResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.nextAction, nextAction) ||
                other.nextAction == nextAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, reference, nextAction);

  @override
  String toString() {
    return 'MomoChargeResponse(status: $status, reference: $reference, nextAction: $nextAction)';
  }
}

/// @nodoc
abstract mixin class _$MomoChargeResponseCopyWith<$Res>
    implements $MomoChargeResponseCopyWith<$Res> {
  factory _$MomoChargeResponseCopyWith(
          _MomoChargeResponse value, $Res Function(_MomoChargeResponse) _then) =
      __$MomoChargeResponseCopyWithImpl;
  @override
  @useResult
  $Res call({MomoChargeStatus? status, String reference, String? nextAction});
}

/// @nodoc
class __$MomoChargeResponseCopyWithImpl<$Res>
    implements _$MomoChargeResponseCopyWith<$Res> {
  __$MomoChargeResponseCopyWithImpl(this._self, this._then);

  final _MomoChargeResponse _self;
  final $Res Function(_MomoChargeResponse) _then;

  /// Create a copy of MomoChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? reference = null,
    Object? nextAction = freezed,
  }) {
    return _then(_MomoChargeResponse(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MomoChargeStatus?,
      reference: null == reference
          ? _self.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      nextAction: freezed == nextAction
          ? _self.nextAction
          : nextAction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$MomoCheckPendingResponse {
  String? get status;
  String? get reference;
  String? get message;

  /// Create a copy of MomoCheckPendingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MomoCheckPendingResponseCopyWith<MomoCheckPendingResponse> get copyWith =>
      _$MomoCheckPendingResponseCopyWithImpl<MomoCheckPendingResponse>(
          this as MomoCheckPendingResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MomoCheckPendingResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, reference, message);

  @override
  String toString() {
    return 'MomoCheckPendingResponse(status: $status, reference: $reference, message: $message)';
  }
}

/// @nodoc
abstract mixin class $MomoCheckPendingResponseCopyWith<$Res> {
  factory $MomoCheckPendingResponseCopyWith(MomoCheckPendingResponse value,
          $Res Function(MomoCheckPendingResponse) _then) =
      _$MomoCheckPendingResponseCopyWithImpl;
  @useResult
  $Res call({String? status, String? reference, String? message});
}

/// @nodoc
class _$MomoCheckPendingResponseCopyWithImpl<$Res>
    implements $MomoCheckPendingResponseCopyWith<$Res> {
  _$MomoCheckPendingResponseCopyWithImpl(this._self, this._then);

  final MomoCheckPendingResponse _self;
  final $Res Function(MomoCheckPendingResponse) _then;

  /// Create a copy of MomoCheckPendingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? reference = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _self.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MomoCheckPendingResponse].
extension MomoCheckPendingResponsePatterns on MomoCheckPendingResponse {
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
    TResult Function(_MomoCheckPendingResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MomoCheckPendingResponse() when $default != null:
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
    TResult Function(_MomoCheckPendingResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoCheckPendingResponse():
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
    TResult? Function(_MomoCheckPendingResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoCheckPendingResponse() when $default != null:
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
    TResult Function(String? status, String? reference, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MomoCheckPendingResponse() when $default != null:
        return $default(_that.status, _that.reference, _that.message);
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
    TResult Function(String? status, String? reference, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoCheckPendingResponse():
        return $default(_that.status, _that.reference, _that.message);
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
    TResult? Function(String? status, String? reference, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoCheckPendingResponse() when $default != null:
        return $default(_that.status, _that.reference, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MomoCheckPendingResponse extends MomoCheckPendingResponse {
  const _MomoCheckPendingResponse({this.status, this.reference, this.message})
      : super._();

  @override
  final String? status;
  @override
  final String? reference;
  @override
  final String? message;

  /// Create a copy of MomoCheckPendingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MomoCheckPendingResponseCopyWith<_MomoCheckPendingResponse> get copyWith =>
      __$MomoCheckPendingResponseCopyWithImpl<_MomoCheckPendingResponse>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MomoCheckPendingResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, reference, message);

  @override
  String toString() {
    return 'MomoCheckPendingResponse(status: $status, reference: $reference, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$MomoCheckPendingResponseCopyWith<$Res>
    implements $MomoCheckPendingResponseCopyWith<$Res> {
  factory _$MomoCheckPendingResponseCopyWith(_MomoCheckPendingResponse value,
          $Res Function(_MomoCheckPendingResponse) _then) =
      __$MomoCheckPendingResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String? status, String? reference, String? message});
}

/// @nodoc
class __$MomoCheckPendingResponseCopyWithImpl<$Res>
    implements _$MomoCheckPendingResponseCopyWith<$Res> {
  __$MomoCheckPendingResponseCopyWithImpl(this._self, this._then);

  final _MomoCheckPendingResponse _self;
  final $Res Function(_MomoCheckPendingResponse) _then;

  /// Create a copy of MomoCheckPendingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? reference = freezed,
    Object? message = freezed,
  }) {
    return _then(_MomoCheckPendingResponse(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _self.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Sale {
  String get id;
  String? get fuelType;
  double get litres;
  double? get unitPrice;
  double? get price;
  double? get discount;
  double? get netPrice;
  String? get currencyCode;
  String? get currencySymbol;
  String? get status;
  String? get paymentMethod;
  int? get pointsEarned;
  String? get customerName;
  String? get pumpAttendantName;
  String? get stationName;
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
            (identical(other.fuelType, fuelType) ||
                other.fuelType == fuelType) &&
            (identical(other.litres, litres) || other.litres == litres) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.netPrice, netPrice) ||
                other.netPrice == netPrice) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.pointsEarned, pointsEarned) ||
                other.pointsEarned == pointsEarned) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.pumpAttendantName, pumpAttendantName) ||
                other.pumpAttendantName == pumpAttendantName) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fuelType,
      litres,
      unitPrice,
      price,
      discount,
      netPrice,
      currencyCode,
      currencySymbol,
      status,
      paymentMethod,
      pointsEarned,
      customerName,
      pumpAttendantName,
      stationName,
      createdAt);

  @override
  String toString() {
    return 'Sale(id: $id, fuelType: $fuelType, litres: $litres, unitPrice: $unitPrice, price: $price, discount: $discount, netPrice: $netPrice, currencyCode: $currencyCode, currencySymbol: $currencySymbol, status: $status, paymentMethod: $paymentMethod, pointsEarned: $pointsEarned, customerName: $customerName, pumpAttendantName: $pumpAttendantName, stationName: $stationName, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $SaleCopyWith<$Res> {
  factory $SaleCopyWith(Sale value, $Res Function(Sale) _then) =
      _$SaleCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String? fuelType,
      double litres,
      double? unitPrice,
      double? price,
      double? discount,
      double? netPrice,
      String? currencyCode,
      String? currencySymbol,
      String? status,
      String? paymentMethod,
      int? pointsEarned,
      String? customerName,
      String? pumpAttendantName,
      String? stationName,
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
    Object? fuelType = freezed,
    Object? litres = null,
    Object? unitPrice = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? netPrice = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? pointsEarned = freezed,
    Object? customerName = freezed,
    Object? pumpAttendantName = freezed,
    Object? stationName = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fuelType: freezed == fuelType
          ? _self.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String?,
      litres: null == litres
          ? _self.litres
          : litres // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: freezed == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      netPrice: freezed == netPrice
          ? _self.netPrice
          : netPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _self.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _self.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      pointsEarned: freezed == pointsEarned
          ? _self.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: freezed == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      pumpAttendantName: freezed == pumpAttendantName
          ? _self.pumpAttendantName
          : pumpAttendantName // ignore: cast_nullable_to_non_nullable
              as String?,
      stationName: freezed == stationName
          ? _self.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
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
            String? fuelType,
            double litres,
            double? unitPrice,
            double? price,
            double? discount,
            double? netPrice,
            String? currencyCode,
            String? currencySymbol,
            String? status,
            String? paymentMethod,
            int? pointsEarned,
            String? customerName,
            String? pumpAttendantName,
            String? stationName,
            String? createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Sale() when $default != null:
        return $default(
            _that.id,
            _that.fuelType,
            _that.litres,
            _that.unitPrice,
            _that.price,
            _that.discount,
            _that.netPrice,
            _that.currencyCode,
            _that.currencySymbol,
            _that.status,
            _that.paymentMethod,
            _that.pointsEarned,
            _that.customerName,
            _that.pumpAttendantName,
            _that.stationName,
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
            String? fuelType,
            double litres,
            double? unitPrice,
            double? price,
            double? discount,
            double? netPrice,
            String? currencyCode,
            String? currencySymbol,
            String? status,
            String? paymentMethod,
            int? pointsEarned,
            String? customerName,
            String? pumpAttendantName,
            String? stationName,
            String? createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sale():
        return $default(
            _that.id,
            _that.fuelType,
            _that.litres,
            _that.unitPrice,
            _that.price,
            _that.discount,
            _that.netPrice,
            _that.currencyCode,
            _that.currencySymbol,
            _that.status,
            _that.paymentMethod,
            _that.pointsEarned,
            _that.customerName,
            _that.pumpAttendantName,
            _that.stationName,
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
            String? fuelType,
            double litres,
            double? unitPrice,
            double? price,
            double? discount,
            double? netPrice,
            String? currencyCode,
            String? currencySymbol,
            String? status,
            String? paymentMethod,
            int? pointsEarned,
            String? customerName,
            String? pumpAttendantName,
            String? stationName,
            String? createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sale() when $default != null:
        return $default(
            _that.id,
            _that.fuelType,
            _that.litres,
            _that.unitPrice,
            _that.price,
            _that.discount,
            _that.netPrice,
            _that.currencyCode,
            _that.currencySymbol,
            _that.status,
            _that.paymentMethod,
            _that.pointsEarned,
            _that.customerName,
            _that.pumpAttendantName,
            _that.stationName,
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
      this.fuelType,
      required this.litres,
      this.unitPrice,
      this.price,
      this.discount,
      this.netPrice,
      this.currencyCode,
      this.currencySymbol,
      this.status,
      this.paymentMethod,
      this.pointsEarned,
      this.customerName,
      this.pumpAttendantName,
      this.stationName,
      this.createdAt})
      : super._();

  @override
  final String id;
  @override
  final String? fuelType;
  @override
  final double litres;
  @override
  final double? unitPrice;
  @override
  final double? price;
  @override
  final double? discount;
  @override
  final double? netPrice;
  @override
  final String? currencyCode;
  @override
  final String? currencySymbol;
  @override
  final String? status;
  @override
  final String? paymentMethod;
  @override
  final int? pointsEarned;
  @override
  final String? customerName;
  @override
  final String? pumpAttendantName;
  @override
  final String? stationName;
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
            (identical(other.fuelType, fuelType) ||
                other.fuelType == fuelType) &&
            (identical(other.litres, litres) || other.litres == litres) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.netPrice, netPrice) ||
                other.netPrice == netPrice) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.pointsEarned, pointsEarned) ||
                other.pointsEarned == pointsEarned) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.pumpAttendantName, pumpAttendantName) ||
                other.pumpAttendantName == pumpAttendantName) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fuelType,
      litres,
      unitPrice,
      price,
      discount,
      netPrice,
      currencyCode,
      currencySymbol,
      status,
      paymentMethod,
      pointsEarned,
      customerName,
      pumpAttendantName,
      stationName,
      createdAt);

  @override
  String toString() {
    return 'Sale(id: $id, fuelType: $fuelType, litres: $litres, unitPrice: $unitPrice, price: $price, discount: $discount, netPrice: $netPrice, currencyCode: $currencyCode, currencySymbol: $currencySymbol, status: $status, paymentMethod: $paymentMethod, pointsEarned: $pointsEarned, customerName: $customerName, pumpAttendantName: $pumpAttendantName, stationName: $stationName, createdAt: $createdAt)';
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
      String? fuelType,
      double litres,
      double? unitPrice,
      double? price,
      double? discount,
      double? netPrice,
      String? currencyCode,
      String? currencySymbol,
      String? status,
      String? paymentMethod,
      int? pointsEarned,
      String? customerName,
      String? pumpAttendantName,
      String? stationName,
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
    Object? fuelType = freezed,
    Object? litres = null,
    Object? unitPrice = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? netPrice = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? pointsEarned = freezed,
    Object? customerName = freezed,
    Object? pumpAttendantName = freezed,
    Object? stationName = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Sale(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fuelType: freezed == fuelType
          ? _self.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String?,
      litres: null == litres
          ? _self.litres
          : litres // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: freezed == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      netPrice: freezed == netPrice
          ? _self.netPrice
          : netPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _self.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _self.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      pointsEarned: freezed == pointsEarned
          ? _self.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: freezed == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      pumpAttendantName: freezed == pumpAttendantName
          ? _self.pumpAttendantName
          : pumpAttendantName // ignore: cast_nullable_to_non_nullable
              as String?,
      stationName: freezed == stationName
          ? _self.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CreateSaleRequest {
  String get fuelPriceId;
  String get customerId;
  String get pumpId;
  double get amount;
  bool get usePointsDiscount;
  double get discount;

  /// Create a copy of CreateSaleRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSaleRequestCopyWith<CreateSaleRequest> get copyWith =>
      _$CreateSaleRequestCopyWithImpl<CreateSaleRequest>(
          this as CreateSaleRequest, _$identity);

  /// Serializes this CreateSaleRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSaleRequest &&
            (identical(other.fuelPriceId, fuelPriceId) ||
                other.fuelPriceId == fuelPriceId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pumpId, pumpId) || other.pumpId == pumpId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.usePointsDiscount, usePointsDiscount) ||
                other.usePointsDiscount == usePointsDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fuelPriceId, customerId, pumpId,
      amount, usePointsDiscount, discount);

  @override
  String toString() {
    return 'CreateSaleRequest(fuelPriceId: $fuelPriceId, customerId: $customerId, pumpId: $pumpId, amount: $amount, usePointsDiscount: $usePointsDiscount, discount: $discount)';
  }
}

/// @nodoc
abstract mixin class $CreateSaleRequestCopyWith<$Res> {
  factory $CreateSaleRequestCopyWith(
          CreateSaleRequest value, $Res Function(CreateSaleRequest) _then) =
      _$CreateSaleRequestCopyWithImpl;
  @useResult
  $Res call(
      {String fuelPriceId,
      String customerId,
      String pumpId,
      double amount,
      bool usePointsDiscount,
      double discount});
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
    Object? fuelPriceId = null,
    Object? customerId = null,
    Object? pumpId = null,
    Object? amount = null,
    Object? usePointsDiscount = null,
    Object? discount = null,
  }) {
    return _then(_self.copyWith(
      fuelPriceId: null == fuelPriceId
          ? _self.fuelPriceId
          : fuelPriceId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      pumpId: null == pumpId
          ? _self.pumpId
          : pumpId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      usePointsDiscount: null == usePointsDiscount
          ? _self.usePointsDiscount
          : usePointsDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
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
    TResult Function(String fuelPriceId, String customerId, String pumpId,
            double amount, bool usePointsDiscount, double discount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSaleRequest() when $default != null:
        return $default(_that.fuelPriceId, _that.customerId, _that.pumpId,
            _that.amount, _that.usePointsDiscount, _that.discount);
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
    TResult Function(String fuelPriceId, String customerId, String pumpId,
            double amount, bool usePointsDiscount, double discount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSaleRequest():
        return $default(_that.fuelPriceId, _that.customerId, _that.pumpId,
            _that.amount, _that.usePointsDiscount, _that.discount);
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
    TResult? Function(String fuelPriceId, String customerId, String pumpId,
            double amount, bool usePointsDiscount, double discount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSaleRequest() when $default != null:
        return $default(_that.fuelPriceId, _that.customerId, _that.pumpId,
            _that.amount, _that.usePointsDiscount, _that.discount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSaleRequest implements CreateSaleRequest {
  const _CreateSaleRequest(
      {required this.fuelPriceId,
      required this.customerId,
      required this.pumpId,
      required this.amount,
      this.usePointsDiscount = false,
      this.discount = 0});
  factory _CreateSaleRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSaleRequestFromJson(json);

  @override
  final String fuelPriceId;
  @override
  final String customerId;
  @override
  final String pumpId;
  @override
  final double amount;
  @override
  @JsonKey()
  final bool usePointsDiscount;
  @override
  @JsonKey()
  final double discount;

  /// Create a copy of CreateSaleRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSaleRequestCopyWith<_CreateSaleRequest> get copyWith =>
      __$CreateSaleRequestCopyWithImpl<_CreateSaleRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSaleRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSaleRequest &&
            (identical(other.fuelPriceId, fuelPriceId) ||
                other.fuelPriceId == fuelPriceId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.pumpId, pumpId) || other.pumpId == pumpId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.usePointsDiscount, usePointsDiscount) ||
                other.usePointsDiscount == usePointsDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fuelPriceId, customerId, pumpId,
      amount, usePointsDiscount, discount);

  @override
  String toString() {
    return 'CreateSaleRequest(fuelPriceId: $fuelPriceId, customerId: $customerId, pumpId: $pumpId, amount: $amount, usePointsDiscount: $usePointsDiscount, discount: $discount)';
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
      {String fuelPriceId,
      String customerId,
      String pumpId,
      double amount,
      bool usePointsDiscount,
      double discount});
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
    Object? fuelPriceId = null,
    Object? customerId = null,
    Object? pumpId = null,
    Object? amount = null,
    Object? usePointsDiscount = null,
    Object? discount = null,
  }) {
    return _then(_CreateSaleRequest(
      fuelPriceId: null == fuelPriceId
          ? _self.fuelPriceId
          : fuelPriceId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      pumpId: null == pumpId
          ? _self.pumpId
          : pumpId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      usePointsDiscount: null == usePointsDiscount
          ? _self.usePointsDiscount
          : usePointsDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$CardInitializeResponse {
  String get authorizationUrl;
  String get accessCode;
  String get reference;

  /// Create a copy of CardInitializeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CardInitializeResponseCopyWith<CardInitializeResponse> get copyWith =>
      _$CardInitializeResponseCopyWithImpl<CardInitializeResponse>(
          this as CardInitializeResponse, _$identity);

  /// Serializes this CardInitializeResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardInitializeResponse &&
            (identical(other.authorizationUrl, authorizationUrl) ||
                other.authorizationUrl == authorizationUrl) &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, authorizationUrl, accessCode, reference);

  @override
  String toString() {
    return 'CardInitializeResponse(authorizationUrl: $authorizationUrl, accessCode: $accessCode, reference: $reference)';
  }
}

/// @nodoc
abstract mixin class $CardInitializeResponseCopyWith<$Res> {
  factory $CardInitializeResponseCopyWith(CardInitializeResponse value,
          $Res Function(CardInitializeResponse) _then) =
      _$CardInitializeResponseCopyWithImpl;
  @useResult
  $Res call({String authorizationUrl, String accessCode, String reference});
}

/// @nodoc
class _$CardInitializeResponseCopyWithImpl<$Res>
    implements $CardInitializeResponseCopyWith<$Res> {
  _$CardInitializeResponseCopyWithImpl(this._self, this._then);

  final CardInitializeResponse _self;
  final $Res Function(CardInitializeResponse) _then;

  /// Create a copy of CardInitializeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationUrl = null,
    Object? accessCode = null,
    Object? reference = null,
  }) {
    return _then(_self.copyWith(
      authorizationUrl: null == authorizationUrl
          ? _self.authorizationUrl
          : authorizationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accessCode: null == accessCode
          ? _self.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _self.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CardInitializeResponse].
extension CardInitializeResponsePatterns on CardInitializeResponse {
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
    TResult Function(_CardInitializeResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CardInitializeResponse() when $default != null:
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
    TResult Function(_CardInitializeResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CardInitializeResponse():
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
    TResult? Function(_CardInitializeResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CardInitializeResponse() when $default != null:
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
            String authorizationUrl, String accessCode, String reference)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CardInitializeResponse() when $default != null:
        return $default(
            _that.authorizationUrl, _that.accessCode, _that.reference);
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
            String authorizationUrl, String accessCode, String reference)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CardInitializeResponse():
        return $default(
            _that.authorizationUrl, _that.accessCode, _that.reference);
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
            String authorizationUrl, String accessCode, String reference)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CardInitializeResponse() when $default != null:
        return $default(
            _that.authorizationUrl, _that.accessCode, _that.reference);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CardInitializeResponse implements CardInitializeResponse {
  const _CardInitializeResponse(
      {this.authorizationUrl = '', this.accessCode = '', this.reference = ''});
  factory _CardInitializeResponse.fromJson(Map<String, dynamic> json) =>
      _$CardInitializeResponseFromJson(json);

  @override
  @JsonKey()
  final String authorizationUrl;
  @override
  @JsonKey()
  final String accessCode;
  @override
  @JsonKey()
  final String reference;

  /// Create a copy of CardInitializeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CardInitializeResponseCopyWith<_CardInitializeResponse> get copyWith =>
      __$CardInitializeResponseCopyWithImpl<_CardInitializeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CardInitializeResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardInitializeResponse &&
            (identical(other.authorizationUrl, authorizationUrl) ||
                other.authorizationUrl == authorizationUrl) &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, authorizationUrl, accessCode, reference);

  @override
  String toString() {
    return 'CardInitializeResponse(authorizationUrl: $authorizationUrl, accessCode: $accessCode, reference: $reference)';
  }
}

/// @nodoc
abstract mixin class _$CardInitializeResponseCopyWith<$Res>
    implements $CardInitializeResponseCopyWith<$Res> {
  factory _$CardInitializeResponseCopyWith(_CardInitializeResponse value,
          $Res Function(_CardInitializeResponse) _then) =
      __$CardInitializeResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String authorizationUrl, String accessCode, String reference});
}

/// @nodoc
class __$CardInitializeResponseCopyWithImpl<$Res>
    implements _$CardInitializeResponseCopyWith<$Res> {
  __$CardInitializeResponseCopyWithImpl(this._self, this._then);

  final _CardInitializeResponse _self;
  final $Res Function(_CardInitializeResponse) _then;

  /// Create a copy of CardInitializeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authorizationUrl = null,
    Object? accessCode = null,
    Object? reference = null,
  }) {
    return _then(_CardInitializeResponse(
      authorizationUrl: null == authorizationUrl
          ? _self.authorizationUrl
          : authorizationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accessCode: null == accessCode
          ? _self.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _self.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MomoChargeRequest {
  String get phone;
  String get provider;

  /// Create a copy of MomoChargeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MomoChargeRequestCopyWith<MomoChargeRequest> get copyWith =>
      _$MomoChargeRequestCopyWithImpl<MomoChargeRequest>(
          this as MomoChargeRequest, _$identity);

  /// Serializes this MomoChargeRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MomoChargeRequest &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, provider);

  @override
  String toString() {
    return 'MomoChargeRequest(phone: $phone, provider: $provider)';
  }
}

/// @nodoc
abstract mixin class $MomoChargeRequestCopyWith<$Res> {
  factory $MomoChargeRequestCopyWith(
          MomoChargeRequest value, $Res Function(MomoChargeRequest) _then) =
      _$MomoChargeRequestCopyWithImpl;
  @useResult
  $Res call({String phone, String provider});
}

/// @nodoc
class _$MomoChargeRequestCopyWithImpl<$Res>
    implements $MomoChargeRequestCopyWith<$Res> {
  _$MomoChargeRequestCopyWithImpl(this._self, this._then);

  final MomoChargeRequest _self;
  final $Res Function(MomoChargeRequest) _then;

  /// Create a copy of MomoChargeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? provider = null,
  }) {
    return _then(_self.copyWith(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MomoChargeRequest].
extension MomoChargeRequestPatterns on MomoChargeRequest {
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
    TResult Function(_MomoChargeRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MomoChargeRequest() when $default != null:
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
    TResult Function(_MomoChargeRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoChargeRequest():
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
    TResult? Function(_MomoChargeRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoChargeRequest() when $default != null:
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
    TResult Function(String phone, String provider)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MomoChargeRequest() when $default != null:
        return $default(_that.phone, _that.provider);
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
    TResult Function(String phone, String provider) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoChargeRequest():
        return $default(_that.phone, _that.provider);
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
    TResult? Function(String phone, String provider)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MomoChargeRequest() when $default != null:
        return $default(_that.phone, _that.provider);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MomoChargeRequest implements MomoChargeRequest {
  const _MomoChargeRequest({required this.phone, required this.provider});
  factory _MomoChargeRequest.fromJson(Map<String, dynamic> json) =>
      _$MomoChargeRequestFromJson(json);

  @override
  final String phone;
  @override
  final String provider;

  /// Create a copy of MomoChargeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MomoChargeRequestCopyWith<_MomoChargeRequest> get copyWith =>
      __$MomoChargeRequestCopyWithImpl<_MomoChargeRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MomoChargeRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MomoChargeRequest &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, provider);

  @override
  String toString() {
    return 'MomoChargeRequest(phone: $phone, provider: $provider)';
  }
}

/// @nodoc
abstract mixin class _$MomoChargeRequestCopyWith<$Res>
    implements $MomoChargeRequestCopyWith<$Res> {
  factory _$MomoChargeRequestCopyWith(
          _MomoChargeRequest value, $Res Function(_MomoChargeRequest) _then) =
      __$MomoChargeRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String phone, String provider});
}

/// @nodoc
class __$MomoChargeRequestCopyWithImpl<$Res>
    implements _$MomoChargeRequestCopyWith<$Res> {
  __$MomoChargeRequestCopyWithImpl(this._self, this._then);

  final _MomoChargeRequest _self;
  final $Res Function(_MomoChargeRequest) _then;

  /// Create a copy of MomoChargeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
    Object? provider = null,
  }) {
    return _then(_MomoChargeRequest(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
