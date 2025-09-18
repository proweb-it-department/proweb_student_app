// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Balance implements DiagnosticableTreeMixin {

@JsonKey(name: 'main_balance') String get mainBalance;@JsonKey(name: 'voucher_balance') String get voucherBalance;@JsonKey(name: 'procoin') String? get procoin;
/// Create a copy of Balance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceCopyWith<Balance> get copyWith => _$BalanceCopyWithImpl<Balance>(this as Balance, _$identity);

  /// Serializes this Balance to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Balance'))
    ..add(DiagnosticsProperty('mainBalance', mainBalance))..add(DiagnosticsProperty('voucherBalance', voucherBalance))..add(DiagnosticsProperty('procoin', procoin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Balance&&(identical(other.mainBalance, mainBalance) || other.mainBalance == mainBalance)&&(identical(other.voucherBalance, voucherBalance) || other.voucherBalance == voucherBalance)&&(identical(other.procoin, procoin) || other.procoin == procoin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainBalance,voucherBalance,procoin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Balance(mainBalance: $mainBalance, voucherBalance: $voucherBalance, procoin: $procoin)';
}


}

/// @nodoc
abstract mixin class $BalanceCopyWith<$Res>  {
  factory $BalanceCopyWith(Balance value, $Res Function(Balance) _then) = _$BalanceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'main_balance') String mainBalance,@JsonKey(name: 'voucher_balance') String voucherBalance,@JsonKey(name: 'procoin') String? procoin
});




}
/// @nodoc
class _$BalanceCopyWithImpl<$Res>
    implements $BalanceCopyWith<$Res> {
  _$BalanceCopyWithImpl(this._self, this._then);

  final Balance _self;
  final $Res Function(Balance) _then;

/// Create a copy of Balance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mainBalance = null,Object? voucherBalance = null,Object? procoin = freezed,}) {
  return _then(_self.copyWith(
mainBalance: null == mainBalance ? _self.mainBalance : mainBalance // ignore: cast_nullable_to_non_nullable
as String,voucherBalance: null == voucherBalance ? _self.voucherBalance : voucherBalance // ignore: cast_nullable_to_non_nullable
as String,procoin: freezed == procoin ? _self.procoin : procoin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Balance].
extension BalancePatterns on Balance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Balance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Balance() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Balance value)  $default,){
final _that = this;
switch (_that) {
case _Balance():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Balance value)?  $default,){
final _that = this;
switch (_that) {
case _Balance() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'main_balance')  String mainBalance, @JsonKey(name: 'voucher_balance')  String voucherBalance, @JsonKey(name: 'procoin')  String? procoin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Balance() when $default != null:
return $default(_that.mainBalance,_that.voucherBalance,_that.procoin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'main_balance')  String mainBalance, @JsonKey(name: 'voucher_balance')  String voucherBalance, @JsonKey(name: 'procoin')  String? procoin)  $default,) {final _that = this;
switch (_that) {
case _Balance():
return $default(_that.mainBalance,_that.voucherBalance,_that.procoin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'main_balance')  String mainBalance, @JsonKey(name: 'voucher_balance')  String voucherBalance, @JsonKey(name: 'procoin')  String? procoin)?  $default,) {final _that = this;
switch (_that) {
case _Balance() when $default != null:
return $default(_that.mainBalance,_that.voucherBalance,_that.procoin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Balance with DiagnosticableTreeMixin implements Balance {
  const _Balance({@JsonKey(name: 'main_balance') required this.mainBalance, @JsonKey(name: 'voucher_balance') required this.voucherBalance, @JsonKey(name: 'procoin') this.procoin});
  factory _Balance.fromJson(Map<String, dynamic> json) => _$BalanceFromJson(json);

@override@JsonKey(name: 'main_balance') final  String mainBalance;
@override@JsonKey(name: 'voucher_balance') final  String voucherBalance;
@override@JsonKey(name: 'procoin') final  String? procoin;

/// Create a copy of Balance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceCopyWith<_Balance> get copyWith => __$BalanceCopyWithImpl<_Balance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalanceToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Balance'))
    ..add(DiagnosticsProperty('mainBalance', mainBalance))..add(DiagnosticsProperty('voucherBalance', voucherBalance))..add(DiagnosticsProperty('procoin', procoin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Balance&&(identical(other.mainBalance, mainBalance) || other.mainBalance == mainBalance)&&(identical(other.voucherBalance, voucherBalance) || other.voucherBalance == voucherBalance)&&(identical(other.procoin, procoin) || other.procoin == procoin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainBalance,voucherBalance,procoin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Balance(mainBalance: $mainBalance, voucherBalance: $voucherBalance, procoin: $procoin)';
}


}

/// @nodoc
abstract mixin class _$BalanceCopyWith<$Res> implements $BalanceCopyWith<$Res> {
  factory _$BalanceCopyWith(_Balance value, $Res Function(_Balance) _then) = __$BalanceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'main_balance') String mainBalance,@JsonKey(name: 'voucher_balance') String voucherBalance,@JsonKey(name: 'procoin') String? procoin
});




}
/// @nodoc
class __$BalanceCopyWithImpl<$Res>
    implements _$BalanceCopyWith<$Res> {
  __$BalanceCopyWithImpl(this._self, this._then);

  final _Balance _self;
  final $Res Function(_Balance) _then;

/// Create a copy of Balance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mainBalance = null,Object? voucherBalance = null,Object? procoin = freezed,}) {
  return _then(_Balance(
mainBalance: null == mainBalance ? _self.mainBalance : mainBalance // ignore: cast_nullable_to_non_nullable
as String,voucherBalance: null == voucherBalance ? _self.voucherBalance : voucherBalance // ignore: cast_nullable_to_non_nullable
as String,procoin: freezed == procoin ? _self.procoin : procoin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProCoinBalance implements DiagnosticableTreeMixin {

@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'balance') double? get balance;
/// Create a copy of ProCoinBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProCoinBalanceCopyWith<ProCoinBalance> get copyWith => _$ProCoinBalanceCopyWithImpl<ProCoinBalance>(this as ProCoinBalance, _$identity);

  /// Serializes this ProCoinBalance to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProCoinBalance'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('balance', balance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProCoinBalance&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,balance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProCoinBalance(userId: $userId, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $ProCoinBalanceCopyWith<$Res>  {
  factory $ProCoinBalanceCopyWith(ProCoinBalance value, $Res Function(ProCoinBalance) _then) = _$ProCoinBalanceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'balance') double? balance
});




}
/// @nodoc
class _$ProCoinBalanceCopyWithImpl<$Res>
    implements $ProCoinBalanceCopyWith<$Res> {
  _$ProCoinBalanceCopyWithImpl(this._self, this._then);

  final ProCoinBalance _self;
  final $Res Function(ProCoinBalance) _then;

/// Create a copy of ProCoinBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? balance = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProCoinBalance].
extension ProCoinBalancePatterns on ProCoinBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProCoinBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProCoinBalance() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProCoinBalance value)  $default,){
final _that = this;
switch (_that) {
case _ProCoinBalance():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProCoinBalance value)?  $default,){
final _that = this;
switch (_that) {
case _ProCoinBalance() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'balance')  double? balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProCoinBalance() when $default != null:
return $default(_that.userId,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'balance')  double? balance)  $default,) {final _that = this;
switch (_that) {
case _ProCoinBalance():
return $default(_that.userId,_that.balance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'balance')  double? balance)?  $default,) {final _that = this;
switch (_that) {
case _ProCoinBalance() when $default != null:
return $default(_that.userId,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProCoinBalance with DiagnosticableTreeMixin implements ProCoinBalance {
  const _ProCoinBalance({@JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'balance') this.balance});
  factory _ProCoinBalance.fromJson(Map<String, dynamic> json) => _$ProCoinBalanceFromJson(json);

@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'balance') final  double? balance;

/// Create a copy of ProCoinBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProCoinBalanceCopyWith<_ProCoinBalance> get copyWith => __$ProCoinBalanceCopyWithImpl<_ProCoinBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProCoinBalanceToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProCoinBalance'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('balance', balance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProCoinBalance&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,balance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProCoinBalance(userId: $userId, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$ProCoinBalanceCopyWith<$Res> implements $ProCoinBalanceCopyWith<$Res> {
  factory _$ProCoinBalanceCopyWith(_ProCoinBalance value, $Res Function(_ProCoinBalance) _then) = __$ProCoinBalanceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'balance') double? balance
});




}
/// @nodoc
class __$ProCoinBalanceCopyWithImpl<$Res>
    implements _$ProCoinBalanceCopyWith<$Res> {
  __$ProCoinBalanceCopyWithImpl(this._self, this._then);

  final _ProCoinBalance _self;
  final $Res Function(_ProCoinBalance) _then;

/// Create a copy of ProCoinBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? balance = freezed,}) {
  return _then(_ProCoinBalance(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
