// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScheduledStudentEvent {

 List<MyGroupsItem> get groups;
/// Create a copy of ScheduledStudentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduledStudentEventCopyWith<ScheduledStudentEvent> get copyWith => _$ScheduledStudentEventCopyWithImpl<ScheduledStudentEvent>(this as ScheduledStudentEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduledStudentEvent&&const DeepCollectionEquality().equals(other.groups, groups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(groups));

@override
String toString() {
  return 'ScheduledStudentEvent(groups: $groups)';
}


}

/// @nodoc
abstract mixin class $ScheduledStudentEventCopyWith<$Res>  {
  factory $ScheduledStudentEventCopyWith(ScheduledStudentEvent value, $Res Function(ScheduledStudentEvent) _then) = _$ScheduledStudentEventCopyWithImpl;
@useResult
$Res call({
 List<MyGroupsItem> groups
});




}
/// @nodoc
class _$ScheduledStudentEventCopyWithImpl<$Res>
    implements $ScheduledStudentEventCopyWith<$Res> {
  _$ScheduledStudentEventCopyWithImpl(this._self, this._then);

  final ScheduledStudentEvent _self;
  final $Res Function(ScheduledStudentEvent) _then;

/// Create a copy of ScheduledStudentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groups = null,}) {
  return _then(_self.copyWith(
groups: null == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<MyGroupsItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ScheduledStudentEvent].
extension ScheduledStudentEventPatterns on ScheduledStudentEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<MyGroupsItem> groups)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groups);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<MyGroupsItem> groups)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.groups);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<MyGroupsItem> groups)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groups);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ScheduledStudentEvent {
  const _Started({required final  List<MyGroupsItem> groups}): _groups = groups;
  

 final  List<MyGroupsItem> _groups;
@override List<MyGroupsItem> get groups {
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groups);
}


/// Create a copy of ScheduledStudentEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&const DeepCollectionEquality().equals(other._groups, _groups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_groups));

@override
String toString() {
  return 'ScheduledStudentEvent.started(groups: $groups)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $ScheduledStudentEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 List<MyGroupsItem> groups
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of ScheduledStudentEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groups = null,}) {
  return _then(_Started(
groups: null == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<MyGroupsItem>,
  ));
}


}

/// @nodoc
mixin _$ScheduledStudentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduledStudentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScheduledStudentState()';
}


}

/// @nodoc
class $ScheduledStudentStateCopyWith<$Res>  {
$ScheduledStudentStateCopyWith(ScheduledStudentState _, $Res Function(ScheduledStudentState) __);
}


/// Adds pattern-matching-related methods to [ScheduledStudentState].
extension ScheduledStudentStatePatterns on ScheduledStudentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ScheduledStudentLoad value)?  load,TResult Function( ScheduledStudentComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ScheduledStudentLoad() when load != null:
return load(_that);case ScheduledStudentComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ScheduledStudentLoad value)  load,required TResult Function( ScheduledStudentComplited value)  complited,}){
final _that = this;
switch (_that) {
case ScheduledStudentLoad():
return load(_that);case ScheduledStudentComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ScheduledStudentLoad value)?  load,TResult? Function( ScheduledStudentComplited value)?  complited,}){
final _that = this;
switch (_that) {
case ScheduledStudentLoad() when load != null:
return load(_that);case ScheduledStudentComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( TsMap<String, List<ScheduledLessonModels>> lessons,  TsMap<String, List<CoworkingListReserve>> myVisits,  TsMap<String, List<HomeworkListGroup>> homework)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ScheduledStudentLoad() when load != null:
return load();case ScheduledStudentComplited() when complited != null:
return complited(_that.lessons,_that.myVisits,_that.homework);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( TsMap<String, List<ScheduledLessonModels>> lessons,  TsMap<String, List<CoworkingListReserve>> myVisits,  TsMap<String, List<HomeworkListGroup>> homework)  complited,}) {final _that = this;
switch (_that) {
case ScheduledStudentLoad():
return load();case ScheduledStudentComplited():
return complited(_that.lessons,_that.myVisits,_that.homework);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( TsMap<String, List<ScheduledLessonModels>> lessons,  TsMap<String, List<CoworkingListReserve>> myVisits,  TsMap<String, List<HomeworkListGroup>> homework)?  complited,}) {final _that = this;
switch (_that) {
case ScheduledStudentLoad() when load != null:
return load();case ScheduledStudentComplited() when complited != null:
return complited(_that.lessons,_that.myVisits,_that.homework);case _:
  return null;

}
}

}

/// @nodoc


class ScheduledStudentLoad implements ScheduledStudentState {
  const ScheduledStudentLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduledStudentLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScheduledStudentState.load()';
}


}




/// @nodoc


class ScheduledStudentComplited implements ScheduledStudentState {
  const ScheduledStudentComplited({required this.lessons, required this.myVisits, required this.homework});
  

 final  TsMap<String, List<ScheduledLessonModels>> lessons;
 final  TsMap<String, List<CoworkingListReserve>> myVisits;
 final  TsMap<String, List<HomeworkListGroup>> homework;

/// Create a copy of ScheduledStudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduledStudentComplitedCopyWith<ScheduledStudentComplited> get copyWith => _$ScheduledStudentComplitedCopyWithImpl<ScheduledStudentComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduledStudentComplited&&(identical(other.lessons, lessons) || other.lessons == lessons)&&(identical(other.myVisits, myVisits) || other.myVisits == myVisits)&&(identical(other.homework, homework) || other.homework == homework));
}


@override
int get hashCode => Object.hash(runtimeType,lessons,myVisits,homework);

@override
String toString() {
  return 'ScheduledStudentState.complited(lessons: $lessons, myVisits: $myVisits, homework: $homework)';
}


}

/// @nodoc
abstract mixin class $ScheduledStudentComplitedCopyWith<$Res> implements $ScheduledStudentStateCopyWith<$Res> {
  factory $ScheduledStudentComplitedCopyWith(ScheduledStudentComplited value, $Res Function(ScheduledStudentComplited) _then) = _$ScheduledStudentComplitedCopyWithImpl;
@useResult
$Res call({
 TsMap<String, List<ScheduledLessonModels>> lessons, TsMap<String, List<CoworkingListReserve>> myVisits, TsMap<String, List<HomeworkListGroup>> homework
});




}
/// @nodoc
class _$ScheduledStudentComplitedCopyWithImpl<$Res>
    implements $ScheduledStudentComplitedCopyWith<$Res> {
  _$ScheduledStudentComplitedCopyWithImpl(this._self, this._then);

  final ScheduledStudentComplited _self;
  final $Res Function(ScheduledStudentComplited) _then;

/// Create a copy of ScheduledStudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lessons = null,Object? myVisits = null,Object? homework = null,}) {
  return _then(ScheduledStudentComplited(
lessons: null == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as TsMap<String, List<ScheduledLessonModels>>,myVisits: null == myVisits ? _self.myVisits : myVisits // ignore: cast_nullable_to_non_nullable
as TsMap<String, List<CoworkingListReserve>>,homework: null == homework ? _self.homework : homework // ignore: cast_nullable_to_non_nullable
as TsMap<String, List<HomeworkListGroup>>,
  ));
}


}

// dart format on
