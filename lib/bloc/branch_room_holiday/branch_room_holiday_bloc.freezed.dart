// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_room_holiday_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BranchRoomHolidayEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchRoomHolidayEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchRoomHolidayEvent()';
}


}

/// @nodoc
class $BranchRoomHolidayEventCopyWith<$Res>  {
$BranchRoomHolidayEventCopyWith(BranchRoomHolidayEvent _, $Res Function(BranchRoomHolidayEvent) __);
}


/// Adds pattern-matching-related methods to [BranchRoomHolidayEvent].
extension BranchRoomHolidayEventPatterns on BranchRoomHolidayEvent {
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


class _Started implements BranchRoomHolidayEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchRoomHolidayEvent.started()';
}


}




/// @nodoc
mixin _$BranchRoomHolidayState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchRoomHolidayState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchRoomHolidayState()';
}


}

/// @nodoc
class $BranchRoomHolidayStateCopyWith<$Res>  {
$BranchRoomHolidayStateCopyWith(BranchRoomHolidayState _, $Res Function(BranchRoomHolidayState) __);
}


/// Adds pattern-matching-related methods to [BranchRoomHolidayState].
extension BranchRoomHolidayStatePatterns on BranchRoomHolidayState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _BranchRoomHolidayLoad value)?  load,TResult Function( _BranchRoomHolidayComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _BranchRoomHolidayLoad() when load != null:
return load(_that);case _BranchRoomHolidayComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _BranchRoomHolidayLoad value)  load,required TResult Function( _BranchRoomHolidayComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _BranchRoomHolidayLoad():
return load(_that);case _BranchRoomHolidayComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _BranchRoomHolidayLoad value)?  load,TResult? Function( _BranchRoomHolidayComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _BranchRoomHolidayLoad() when load != null:
return load(_that);case _BranchRoomHolidayComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function( List<Branche> branch,  List<Room> room,  List<Holiday> holiday)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _BranchRoomHolidayLoad() when load != null:
return load();case _BranchRoomHolidayComplited() when complited != null:
return complited(_that.branch,_that.room,_that.holiday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function( List<Branche> branch,  List<Room> room,  List<Holiday> holiday)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _BranchRoomHolidayLoad():
return load();case _BranchRoomHolidayComplited():
return complited(_that.branch,_that.room,_that.holiday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function( List<Branche> branch,  List<Room> room,  List<Holiday> holiday)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _BranchRoomHolidayLoad() when load != null:
return load();case _BranchRoomHolidayComplited() when complited != null:
return complited(_that.branch,_that.room,_that.holiday);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements BranchRoomHolidayState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchRoomHolidayState.initial()';
}


}




/// @nodoc


class _BranchRoomHolidayLoad implements BranchRoomHolidayState {
  const _BranchRoomHolidayLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchRoomHolidayLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchRoomHolidayState.load()';
}


}




/// @nodoc


class _BranchRoomHolidayComplited implements BranchRoomHolidayState {
  const _BranchRoomHolidayComplited({required final  List<Branche> branch, required final  List<Room> room, required final  List<Holiday> holiday}): _branch = branch,_room = room,_holiday = holiday;
  

 final  List<Branche> _branch;
 List<Branche> get branch {
  if (_branch is EqualUnmodifiableListView) return _branch;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_branch);
}

 final  List<Room> _room;
 List<Room> get room {
  if (_room is EqualUnmodifiableListView) return _room;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_room);
}

 final  List<Holiday> _holiday;
 List<Holiday> get holiday {
  if (_holiday is EqualUnmodifiableListView) return _holiday;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_holiday);
}


/// Create a copy of BranchRoomHolidayState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchRoomHolidayComplitedCopyWith<_BranchRoomHolidayComplited> get copyWith => __$BranchRoomHolidayComplitedCopyWithImpl<_BranchRoomHolidayComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchRoomHolidayComplited&&const DeepCollectionEquality().equals(other._branch, _branch)&&const DeepCollectionEquality().equals(other._room, _room)&&const DeepCollectionEquality().equals(other._holiday, _holiday));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_branch),const DeepCollectionEquality().hash(_room),const DeepCollectionEquality().hash(_holiday));

@override
String toString() {
  return 'BranchRoomHolidayState.complited(branch: $branch, room: $room, holiday: $holiday)';
}


}

/// @nodoc
abstract mixin class _$BranchRoomHolidayComplitedCopyWith<$Res> implements $BranchRoomHolidayStateCopyWith<$Res> {
  factory _$BranchRoomHolidayComplitedCopyWith(_BranchRoomHolidayComplited value, $Res Function(_BranchRoomHolidayComplited) _then) = __$BranchRoomHolidayComplitedCopyWithImpl;
@useResult
$Res call({
 List<Branche> branch, List<Room> room, List<Holiday> holiday
});




}
/// @nodoc
class __$BranchRoomHolidayComplitedCopyWithImpl<$Res>
    implements _$BranchRoomHolidayComplitedCopyWith<$Res> {
  __$BranchRoomHolidayComplitedCopyWithImpl(this._self, this._then);

  final _BranchRoomHolidayComplited _self;
  final $Res Function(_BranchRoomHolidayComplited) _then;

/// Create a copy of BranchRoomHolidayState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? branch = null,Object? room = null,Object? holiday = null,}) {
  return _then(_BranchRoomHolidayComplited(
branch: null == branch ? _self._branch : branch // ignore: cast_nullable_to_non_nullable
as List<Branche>,room: null == room ? _self._room : room // ignore: cast_nullable_to_non_nullable
as List<Room>,holiday: null == holiday ? _self._holiday : holiday // ignore: cast_nullable_to_non_nullable
as List<Holiday>,
  ));
}


}

// dart format on
