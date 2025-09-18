// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_seat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomSeatEvent {

 int get cabinetId;
/// Create a copy of RoomSeatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomSeatEventCopyWith<RoomSeatEvent> get copyWith => _$RoomSeatEventCopyWithImpl<RoomSeatEvent>(this as RoomSeatEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomSeatEvent&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId));
}


@override
int get hashCode => Object.hash(runtimeType,cabinetId);

@override
String toString() {
  return 'RoomSeatEvent(cabinetId: $cabinetId)';
}


}

/// @nodoc
abstract mixin class $RoomSeatEventCopyWith<$Res>  {
  factory $RoomSeatEventCopyWith(RoomSeatEvent value, $Res Function(RoomSeatEvent) _then) = _$RoomSeatEventCopyWithImpl;
@useResult
$Res call({
 int cabinetId
});




}
/// @nodoc
class _$RoomSeatEventCopyWithImpl<$Res>
    implements $RoomSeatEventCopyWith<$Res> {
  _$RoomSeatEventCopyWithImpl(this._self, this._then);

  final RoomSeatEvent _self;
  final $Res Function(RoomSeatEvent) _then;

/// Create a copy of RoomSeatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cabinetId = null,}) {
  return _then(_self.copyWith(
cabinetId: null == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomSeatEvent].
extension RoomSeatEventPatterns on RoomSeatEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int cabinetId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.cabinetId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int cabinetId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.cabinetId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int cabinetId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.cabinetId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RoomSeatEvent {
  const _Started({required this.cabinetId});
  

@override final  int cabinetId;

/// Create a copy of RoomSeatEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.cabinetId, cabinetId) || other.cabinetId == cabinetId));
}


@override
int get hashCode => Object.hash(runtimeType,cabinetId);

@override
String toString() {
  return 'RoomSeatEvent.started(cabinetId: $cabinetId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $RoomSeatEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int cabinetId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of RoomSeatEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cabinetId = null,}) {
  return _then(_Started(
cabinetId: null == cabinetId ? _self.cabinetId : cabinetId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RoomSeatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomSeatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomSeatState()';
}


}

/// @nodoc
class $RoomSeatStateCopyWith<$Res>  {
$RoomSeatStateCopyWith(RoomSeatState _, $Res Function(RoomSeatState) __);
}


/// Adds pattern-matching-related methods to [RoomSeatState].
extension RoomSeatStatePatterns on RoomSeatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _RoomSeatLoad value)?  load,TResult Function( _RoomSeatError value)?  error,TResult Function( _RoomSeatComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _RoomSeatLoad() when load != null:
return load(_that);case _RoomSeatError() when error != null:
return error(_that);case _RoomSeatComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _RoomSeatLoad value)  load,required TResult Function( _RoomSeatError value)  error,required TResult Function( _RoomSeatComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _RoomSeatLoad():
return load(_that);case _RoomSeatError():
return error(_that);case _RoomSeatComplited():
return complited(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _RoomSeatLoad value)?  load,TResult? Function( _RoomSeatError value)?  error,TResult? Function( _RoomSeatComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _RoomSeatLoad() when load != null:
return load(_that);case _RoomSeatError() when error != null:
return error(_that);case _RoomSeatComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( List<SeatItem> seats)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _RoomSeatLoad() when load != null:
return load();case _RoomSeatError() when error != null:
return error();case _RoomSeatComplited() when complited != null:
return complited(_that.seats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( List<SeatItem> seats)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _RoomSeatLoad():
return load();case _RoomSeatError():
return error();case _RoomSeatComplited():
return complited(_that.seats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( List<SeatItem> seats)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _RoomSeatLoad() when load != null:
return load();case _RoomSeatError() when error != null:
return error();case _RoomSeatComplited() when complited != null:
return complited(_that.seats);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RoomSeatState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomSeatState.initial()';
}


}




/// @nodoc


class _RoomSeatLoad implements RoomSeatState {
  const _RoomSeatLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomSeatLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomSeatState.load()';
}


}




/// @nodoc


class _RoomSeatError implements RoomSeatState {
  const _RoomSeatError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomSeatError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomSeatState.error()';
}


}




/// @nodoc


class _RoomSeatComplited implements RoomSeatState {
  const _RoomSeatComplited({required final  List<SeatItem> seats}): _seats = seats;
  

 final  List<SeatItem> _seats;
 List<SeatItem> get seats {
  if (_seats is EqualUnmodifiableListView) return _seats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seats);
}


/// Create a copy of RoomSeatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomSeatComplitedCopyWith<_RoomSeatComplited> get copyWith => __$RoomSeatComplitedCopyWithImpl<_RoomSeatComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomSeatComplited&&const DeepCollectionEquality().equals(other._seats, _seats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_seats));

@override
String toString() {
  return 'RoomSeatState.complited(seats: $seats)';
}


}

/// @nodoc
abstract mixin class _$RoomSeatComplitedCopyWith<$Res> implements $RoomSeatStateCopyWith<$Res> {
  factory _$RoomSeatComplitedCopyWith(_RoomSeatComplited value, $Res Function(_RoomSeatComplited) _then) = __$RoomSeatComplitedCopyWithImpl;
@useResult
$Res call({
 List<SeatItem> seats
});




}
/// @nodoc
class __$RoomSeatComplitedCopyWithImpl<$Res>
    implements _$RoomSeatComplitedCopyWith<$Res> {
  __$RoomSeatComplitedCopyWithImpl(this._self, this._then);

  final _RoomSeatComplited _self;
  final $Res Function(_RoomSeatComplited) _then;

/// Create a copy of RoomSeatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? seats = null,}) {
  return _then(_RoomSeatComplited(
seats: null == seats ? _self._seats : seats // ignore: cast_nullable_to_non_nullable
as List<SeatItem>,
  ));
}


}

// dart format on
