// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BalanceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BalanceEvent()';
}


}

/// @nodoc
class $BalanceEventCopyWith<$Res>  {
$BalanceEventCopyWith(BalanceEvent _, $Res Function(BalanceEvent) __);
}


/// Adds pattern-matching-related methods to [BalanceEvent].
extension BalanceEventPatterns on BalanceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Update value)?  update,TResult Function( _BalanceUpdate value)?  wsupdate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Update() when update != null:
return update(_that);case _BalanceUpdate() when wsupdate != null:
return wsupdate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Update value)  update,required TResult Function( _BalanceUpdate value)  wsupdate,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Update():
return update(_that);case _BalanceUpdate():
return wsupdate(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Update value)?  update,TResult? Function( _BalanceUpdate value)?  wsupdate,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Update() when update != null:
return update(_that);case _BalanceUpdate() when wsupdate != null:
return wsupdate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  update,TResult Function( dynamic data)?  wsupdate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Update() when update != null:
return update();case _BalanceUpdate() when wsupdate != null:
return wsupdate(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  update,required TResult Function( dynamic data)  wsupdate,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Update():
return update();case _BalanceUpdate():
return wsupdate(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  update,TResult? Function( dynamic data)?  wsupdate,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Update() when update != null:
return update();case _BalanceUpdate() when wsupdate != null:
return wsupdate(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements BalanceEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BalanceEvent.started()';
}


}




/// @nodoc


class _Update implements BalanceEvent {
  const _Update();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Update);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BalanceEvent.update()';
}


}




/// @nodoc


class _BalanceUpdate implements BalanceEvent {
  const _BalanceUpdate({required this.data});
  

 final  dynamic data;

/// Create a copy of BalanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceUpdateCopyWith<_BalanceUpdate> get copyWith => __$BalanceUpdateCopyWithImpl<_BalanceUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceUpdate&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BalanceEvent.wsupdate(data: $data)';
}


}

/// @nodoc
abstract mixin class _$BalanceUpdateCopyWith<$Res> implements $BalanceEventCopyWith<$Res> {
  factory _$BalanceUpdateCopyWith(_BalanceUpdate value, $Res Function(_BalanceUpdate) _then) = __$BalanceUpdateCopyWithImpl;
@useResult
$Res call({
 dynamic data
});




}
/// @nodoc
class __$BalanceUpdateCopyWithImpl<$Res>
    implements _$BalanceUpdateCopyWith<$Res> {
  __$BalanceUpdateCopyWithImpl(this._self, this._then);

  final _BalanceUpdate _self;
  final $Res Function(_BalanceUpdate) _then;

/// Create a copy of BalanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_BalanceUpdate(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc
mixin _$BalanceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BalanceState()';
}


}

/// @nodoc
class $BalanceStateCopyWith<$Res>  {
$BalanceStateCopyWith(BalanceState _, $Res Function(BalanceState) __);
}


/// Adds pattern-matching-related methods to [BalanceState].
extension BalanceStatePatterns on BalanceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _BalanceDat value)?  balance,TResult Function( _BalanceError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _BalanceDat() when balance != null:
return balance(_that);case _BalanceError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _BalanceDat value)  balance,required TResult Function( _BalanceError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _BalanceDat():
return balance(_that);case _BalanceError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _BalanceDat value)?  balance,TResult? Function( _BalanceError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _BalanceDat() when balance != null:
return balance(_that);case _BalanceError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( Balance balance)?  balance,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _BalanceDat() when balance != null:
return balance(_that.balance);case _BalanceError() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( Balance balance)  balance,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _BalanceDat():
return balance(_that.balance);case _BalanceError():
return error();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( Balance balance)?  balance,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _BalanceDat() when balance != null:
return balance(_that.balance);case _BalanceError() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements BalanceState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BalanceState.initial()';
}


}




/// @nodoc


class _BalanceDat implements BalanceState {
  const _BalanceDat({required this.balance});
  

 final  Balance balance;

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceDatCopyWith<_BalanceDat> get copyWith => __$BalanceDatCopyWithImpl<_BalanceDat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceDat&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,balance);

@override
String toString() {
  return 'BalanceState.balance(balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$BalanceDatCopyWith<$Res> implements $BalanceStateCopyWith<$Res> {
  factory _$BalanceDatCopyWith(_BalanceDat value, $Res Function(_BalanceDat) _then) = __$BalanceDatCopyWithImpl;
@useResult
$Res call({
 Balance balance
});


$BalanceCopyWith<$Res> get balance;

}
/// @nodoc
class __$BalanceDatCopyWithImpl<$Res>
    implements _$BalanceDatCopyWith<$Res> {
  __$BalanceDatCopyWithImpl(this._self, this._then);

  final _BalanceDat _self;
  final $Res Function(_BalanceDat) _then;

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? balance = null,}) {
  return _then(_BalanceDat(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Balance,
  ));
}

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalanceCopyWith<$Res> get balance {
  
  return $BalanceCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}

/// @nodoc


class _BalanceError implements BalanceState {
  const _BalanceError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BalanceState.error()';
}


}




// dart format on
