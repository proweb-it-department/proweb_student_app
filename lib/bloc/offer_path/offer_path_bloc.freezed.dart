// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_path_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OfferPathEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferPathEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OfferPathEvent()';
}


}

/// @nodoc
class $OfferPathEventCopyWith<$Res>  {
$OfferPathEventCopyWith(OfferPathEvent _, $Res Function(OfferPathEvent) __);
}


/// Adds pattern-matching-related methods to [OfferPathEvent].
extension OfferPathEventPatterns on OfferPathEvent {
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


class _Started implements OfferPathEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OfferPathEvent.started()';
}


}




/// @nodoc
mixin _$OfferPathState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferPathState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OfferPathState()';
}


}

/// @nodoc
class $OfferPathStateCopyWith<$Res>  {
$OfferPathStateCopyWith(OfferPathState _, $Res Function(OfferPathState) __);
}


/// Adds pattern-matching-related methods to [OfferPathState].
extension OfferPathStatePatterns on OfferPathState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OfferPathInitial value)?  initial,TResult Function( OfferPathLoad value)?  load,TResult Function( OfferPathComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OfferPathInitial() when initial != null:
return initial(_that);case OfferPathLoad() when load != null:
return load(_that);case OfferPathComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OfferPathInitial value)  initial,required TResult Function( OfferPathLoad value)  load,required TResult Function( OfferPathComplited value)  complited,}){
final _that = this;
switch (_that) {
case OfferPathInitial():
return initial(_that);case OfferPathLoad():
return load(_that);case OfferPathComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OfferPathInitial value)?  initial,TResult? Function( OfferPathLoad value)?  load,TResult? Function( OfferPathComplited value)?  complited,}){
final _that = this;
switch (_that) {
case OfferPathInitial() when initial != null:
return initial(_that);case OfferPathLoad() when load != null:
return load(_that);case OfferPathComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function( OfferPathData offer)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OfferPathInitial() when initial != null:
return initial();case OfferPathLoad() when load != null:
return load();case OfferPathComplited() when complited != null:
return complited(_that.offer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function( OfferPathData offer)  complited,}) {final _that = this;
switch (_that) {
case OfferPathInitial():
return initial();case OfferPathLoad():
return load();case OfferPathComplited():
return complited(_that.offer);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function( OfferPathData offer)?  complited,}) {final _that = this;
switch (_that) {
case OfferPathInitial() when initial != null:
return initial();case OfferPathLoad() when load != null:
return load();case OfferPathComplited() when complited != null:
return complited(_that.offer);case _:
  return null;

}
}

}

/// @nodoc


class OfferPathInitial implements OfferPathState {
  const OfferPathInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferPathInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OfferPathState.initial()';
}


}




/// @nodoc


class OfferPathLoad implements OfferPathState {
  const OfferPathLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferPathLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OfferPathState.load()';
}


}




/// @nodoc


class OfferPathComplited implements OfferPathState {
  const OfferPathComplited({required this.offer});
  

 final  OfferPathData offer;

/// Create a copy of OfferPathState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferPathComplitedCopyWith<OfferPathComplited> get copyWith => _$OfferPathComplitedCopyWithImpl<OfferPathComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferPathComplited&&(identical(other.offer, offer) || other.offer == offer));
}


@override
int get hashCode => Object.hash(runtimeType,offer);

@override
String toString() {
  return 'OfferPathState.complited(offer: $offer)';
}


}

/// @nodoc
abstract mixin class $OfferPathComplitedCopyWith<$Res> implements $OfferPathStateCopyWith<$Res> {
  factory $OfferPathComplitedCopyWith(OfferPathComplited value, $Res Function(OfferPathComplited) _then) = _$OfferPathComplitedCopyWithImpl;
@useResult
$Res call({
 OfferPathData offer
});


$OfferPathDataCopyWith<$Res> get offer;

}
/// @nodoc
class _$OfferPathComplitedCopyWithImpl<$Res>
    implements $OfferPathComplitedCopyWith<$Res> {
  _$OfferPathComplitedCopyWithImpl(this._self, this._then);

  final OfferPathComplited _self;
  final $Res Function(OfferPathComplited) _then;

/// Create a copy of OfferPathState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? offer = null,}) {
  return _then(OfferPathComplited(
offer: null == offer ? _self.offer : offer // ignore: cast_nullable_to_non_nullable
as OfferPathData,
  ));
}

/// Create a copy of OfferPathState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferPathDataCopyWith<$Res> get offer {
  
  return $OfferPathDataCopyWith<$Res>(_self.offer, (value) {
    return _then(_self.copyWith(offer: value));
  });
}
}

// dart format on
