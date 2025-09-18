// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_lesson_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceLessonEvent {

 int get groupId; Version? get version;
/// Create a copy of AttendanceLessonEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceLessonEventCopyWith<AttendanceLessonEvent> get copyWith => _$AttendanceLessonEventCopyWithImpl<AttendanceLessonEvent>(this as AttendanceLessonEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceLessonEvent&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,version);

@override
String toString() {
  return 'AttendanceLessonEvent(groupId: $groupId, version: $version)';
}


}

/// @nodoc
abstract mixin class $AttendanceLessonEventCopyWith<$Res>  {
  factory $AttendanceLessonEventCopyWith(AttendanceLessonEvent value, $Res Function(AttendanceLessonEvent) _then) = _$AttendanceLessonEventCopyWithImpl;
@useResult
$Res call({
 int groupId, Version? version
});


$VersionCopyWith<$Res>? get version;

}
/// @nodoc
class _$AttendanceLessonEventCopyWithImpl<$Res>
    implements $AttendanceLessonEventCopyWith<$Res> {
  _$AttendanceLessonEventCopyWithImpl(this._self, this._then);

  final AttendanceLessonEvent _self;
  final $Res Function(AttendanceLessonEvent) _then;

/// Create a copy of AttendanceLessonEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = null,Object? version = freezed,}) {
  return _then(_self.copyWith(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version?,
  ));
}
/// Create a copy of AttendanceLessonEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionCopyWith<$Res>? get version {
    if (_self.version == null) {
    return null;
  }

  return $VersionCopyWith<$Res>(_self.version!, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceLessonEvent].
extension AttendanceLessonEventPatterns on AttendanceLessonEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int groupId,  Version? version)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int groupId,  Version? version)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.groupId,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int groupId,  Version? version)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId,_that.version);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AttendanceLessonEvent {
  const _Started({required this.groupId, this.version});
  

@override final  int groupId;
@override final  Version? version;

/// Create a copy of AttendanceLessonEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,version);

@override
String toString() {
  return 'AttendanceLessonEvent.started(groupId: $groupId, version: $version)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $AttendanceLessonEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int groupId, Version? version
});


@override $VersionCopyWith<$Res>? get version;

}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of AttendanceLessonEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = null,Object? version = freezed,}) {
  return _then(_Started(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version?,
  ));
}

/// Create a copy of AttendanceLessonEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionCopyWith<$Res>? get version {
    if (_self.version == null) {
    return null;
  }

  return $VersionCopyWith<$Res>(_self.version!, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}

/// @nodoc
mixin _$AttendanceLessonState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceLessonState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceLessonState()';
}


}

/// @nodoc
class $AttendanceLessonStateCopyWith<$Res>  {
$AttendanceLessonStateCopyWith(AttendanceLessonState _, $Res Function(AttendanceLessonState) __);
}


/// Adds pattern-matching-related methods to [AttendanceLessonState].
extension AttendanceLessonStatePatterns on AttendanceLessonState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _AttendanceLessonLoad value)?  load,TResult Function( _AttendanceLessonError value)?  error,TResult Function( _AttendanceLessonComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AttendanceLessonLoad() when load != null:
return load(_that);case _AttendanceLessonError() when error != null:
return error(_that);case _AttendanceLessonComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _AttendanceLessonLoad value)  load,required TResult Function( _AttendanceLessonError value)  error,required TResult Function( _AttendanceLessonComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _AttendanceLessonLoad():
return load(_that);case _AttendanceLessonError():
return error(_that);case _AttendanceLessonComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _AttendanceLessonLoad value)?  load,TResult? Function( _AttendanceLessonError value)?  error,TResult? Function( _AttendanceLessonComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AttendanceLessonLoad() when load != null:
return load(_that);case _AttendanceLessonError() when error != null:
return error(_that);case _AttendanceLessonComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( List<GroupLessonInfo> lessons,  int complitedLesson,  int attendedLesson,  Version version,  int? score,  int? offline,  int? online)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _AttendanceLessonLoad() when load != null:
return load();case _AttendanceLessonError() when error != null:
return error();case _AttendanceLessonComplited() when complited != null:
return complited(_that.lessons,_that.complitedLesson,_that.attendedLesson,_that.version,_that.score,_that.offline,_that.online);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( List<GroupLessonInfo> lessons,  int complitedLesson,  int attendedLesson,  Version version,  int? score,  int? offline,  int? online)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _AttendanceLessonLoad():
return load();case _AttendanceLessonError():
return error();case _AttendanceLessonComplited():
return complited(_that.lessons,_that.complitedLesson,_that.attendedLesson,_that.version,_that.score,_that.offline,_that.online);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( List<GroupLessonInfo> lessons,  int complitedLesson,  int attendedLesson,  Version version,  int? score,  int? offline,  int? online)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _AttendanceLessonLoad() when load != null:
return load();case _AttendanceLessonError() when error != null:
return error();case _AttendanceLessonComplited() when complited != null:
return complited(_that.lessons,_that.complitedLesson,_that.attendedLesson,_that.version,_that.score,_that.offline,_that.online);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AttendanceLessonState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceLessonState.initial()';
}


}




/// @nodoc


class _AttendanceLessonLoad implements AttendanceLessonState {
  const _AttendanceLessonLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceLessonLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceLessonState.load()';
}


}




/// @nodoc


class _AttendanceLessonError implements AttendanceLessonState {
  const _AttendanceLessonError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceLessonError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceLessonState.error()';
}


}




/// @nodoc


class _AttendanceLessonComplited implements AttendanceLessonState {
  const _AttendanceLessonComplited({required final  List<GroupLessonInfo> lessons, required this.complitedLesson, required this.attendedLesson, required this.version, this.score, this.offline, this.online}): _lessons = lessons;
  

 final  List<GroupLessonInfo> _lessons;
 List<GroupLessonInfo> get lessons {
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lessons);
}

 final  int complitedLesson;
 final  int attendedLesson;
 final  Version version;
 final  int? score;
 final  int? offline;
 final  int? online;

/// Create a copy of AttendanceLessonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceLessonComplitedCopyWith<_AttendanceLessonComplited> get copyWith => __$AttendanceLessonComplitedCopyWithImpl<_AttendanceLessonComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceLessonComplited&&const DeepCollectionEquality().equals(other._lessons, _lessons)&&(identical(other.complitedLesson, complitedLesson) || other.complitedLesson == complitedLesson)&&(identical(other.attendedLesson, attendedLesson) || other.attendedLesson == attendedLesson)&&(identical(other.version, version) || other.version == version)&&(identical(other.score, score) || other.score == score)&&(identical(other.offline, offline) || other.offline == offline)&&(identical(other.online, online) || other.online == online));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lessons),complitedLesson,attendedLesson,version,score,offline,online);

@override
String toString() {
  return 'AttendanceLessonState.complited(lessons: $lessons, complitedLesson: $complitedLesson, attendedLesson: $attendedLesson, version: $version, score: $score, offline: $offline, online: $online)';
}


}

/// @nodoc
abstract mixin class _$AttendanceLessonComplitedCopyWith<$Res> implements $AttendanceLessonStateCopyWith<$Res> {
  factory _$AttendanceLessonComplitedCopyWith(_AttendanceLessonComplited value, $Res Function(_AttendanceLessonComplited) _then) = __$AttendanceLessonComplitedCopyWithImpl;
@useResult
$Res call({
 List<GroupLessonInfo> lessons, int complitedLesson, int attendedLesson, Version version, int? score, int? offline, int? online
});


$VersionCopyWith<$Res> get version;

}
/// @nodoc
class __$AttendanceLessonComplitedCopyWithImpl<$Res>
    implements _$AttendanceLessonComplitedCopyWith<$Res> {
  __$AttendanceLessonComplitedCopyWithImpl(this._self, this._then);

  final _AttendanceLessonComplited _self;
  final $Res Function(_AttendanceLessonComplited) _then;

/// Create a copy of AttendanceLessonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lessons = null,Object? complitedLesson = null,Object? attendedLesson = null,Object? version = null,Object? score = freezed,Object? offline = freezed,Object? online = freezed,}) {
  return _then(_AttendanceLessonComplited(
lessons: null == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<GroupLessonInfo>,complitedLesson: null == complitedLesson ? _self.complitedLesson : complitedLesson // ignore: cast_nullable_to_non_nullable
as int,attendedLesson: null == attendedLesson ? _self.attendedLesson : attendedLesson // ignore: cast_nullable_to_non_nullable
as int,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,offline: freezed == offline ? _self.offline : offline // ignore: cast_nullable_to_non_nullable
as int?,online: freezed == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of AttendanceLessonState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionCopyWith<$Res> get version {
  
  return $VersionCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}

// dart format on
