// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_provider_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentsProviderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsProviderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentsProviderEvent()';
}


}

/// @nodoc
class $PaymentsProviderEventCopyWith<$Res>  {
$PaymentsProviderEventCopyWith(PaymentsProviderEvent _, $Res Function(PaymentsProviderEvent) __);
}


/// Adds pattern-matching-related methods to [PaymentsProviderEvent].
extension PaymentsProviderEventPatterns on PaymentsProviderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements PaymentsProviderEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentsProviderEvent.started()';
}


}




/// @nodoc
mixin _$PaymentsProviderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsProviderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentsProviderState()';
}


}

/// @nodoc
class $PaymentsProviderStateCopyWith<$Res>  {
$PaymentsProviderStateCopyWith(PaymentsProviderState _, $Res Function(PaymentsProviderState) __);
}


/// Adds pattern-matching-related methods to [PaymentsProviderState].
extension PaymentsProviderStatePatterns on PaymentsProviderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentsProviderInitial value)?  initial,TResult Function( PaymentsProviderLoad value)?  load,TResult Function( PaymentsProviderComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentsProviderInitial() when initial != null:
return initial(_that);case PaymentsProviderLoad() when load != null:
return load(_that);case PaymentsProviderComplited() when complited != null:
return complited(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentsProviderInitial value)  initial,required TResult Function( PaymentsProviderLoad value)  load,required TResult Function( PaymentsProviderComplited value)  complited,}){
final _that = this;
switch (_that) {
case PaymentsProviderInitial():
return initial(_that);case PaymentsProviderLoad():
return load(_that);case PaymentsProviderComplited():
return complited(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentsProviderInitial value)?  initial,TResult? Function( PaymentsProviderLoad value)?  load,TResult? Function( PaymentsProviderComplited value)?  complited,}){
final _that = this;
switch (_that) {
case PaymentsProviderInitial() when initial != null:
return initial(_that);case PaymentsProviderLoad() when load != null:
return load(_that);case PaymentsProviderComplited() when complited != null:
return complited(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function( List<PaymentsProviderModel> providers)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentsProviderInitial() when initial != null:
return initial();case PaymentsProviderLoad() when load != null:
return load();case PaymentsProviderComplited() when complited != null:
return complited(_that.providers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function( List<PaymentsProviderModel> providers)  complited,}) {final _that = this;
switch (_that) {
case PaymentsProviderInitial():
return initial();case PaymentsProviderLoad():
return load();case PaymentsProviderComplited():
return complited(_that.providers);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function( List<PaymentsProviderModel> providers)?  complited,}) {final _that = this;
switch (_that) {
case PaymentsProviderInitial() when initial != null:
return initial();case PaymentsProviderLoad() when load != null:
return load();case PaymentsProviderComplited() when complited != null:
return complited(_that.providers);case _:
  return null;

}
}

}

/// @nodoc


class PaymentsProviderInitial implements PaymentsProviderState {
  const PaymentsProviderInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsProviderInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentsProviderState.initial()';
}


}




/// @nodoc


class PaymentsProviderLoad implements PaymentsProviderState {
  const PaymentsProviderLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsProviderLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentsProviderState.load()';
}


}




/// @nodoc


class PaymentsProviderComplited implements PaymentsProviderState {
  const PaymentsProviderComplited({required final  List<PaymentsProviderModel> providers}): _providers = providers;
  

 final  List<PaymentsProviderModel> _providers;
 List<PaymentsProviderModel> get providers {
  if (_providers is EqualUnmodifiableListView) return _providers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_providers);
}


/// Create a copy of PaymentsProviderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentsProviderComplitedCopyWith<PaymentsProviderComplited> get copyWith => _$PaymentsProviderComplitedCopyWithImpl<PaymentsProviderComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsProviderComplited&&const DeepCollectionEquality().equals(other._providers, _providers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_providers));

@override
String toString() {
  return 'PaymentsProviderState.complited(providers: $providers)';
}


}

/// @nodoc
abstract mixin class $PaymentsProviderComplitedCopyWith<$Res> implements $PaymentsProviderStateCopyWith<$Res> {
  factory $PaymentsProviderComplitedCopyWith(PaymentsProviderComplited value, $Res Function(PaymentsProviderComplited) _then) = _$PaymentsProviderComplitedCopyWithImpl;
@useResult
$Res call({
 List<PaymentsProviderModel> providers
});




}
/// @nodoc
class _$PaymentsProviderComplitedCopyWithImpl<$Res>
    implements $PaymentsProviderComplitedCopyWith<$Res> {
  _$PaymentsProviderComplitedCopyWithImpl(this._self, this._then);

  final PaymentsProviderComplited _self;
  final $Res Function(PaymentsProviderComplited) _then;

/// Create a copy of PaymentsProviderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? providers = null,}) {
  return _then(PaymentsProviderComplited(
providers: null == providers ? _self._providers : providers // ignore: cast_nullable_to_non_nullable
as List<PaymentsProviderModel>,
  ));
}


}

// dart format on
