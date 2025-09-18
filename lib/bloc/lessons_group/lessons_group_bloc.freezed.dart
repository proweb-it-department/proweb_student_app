// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lessons_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LessonsGroupEvent {

 int get groupId; List<Posters>? get posters; Version? get version;
/// Create a copy of LessonsGroupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonsGroupEventCopyWith<LessonsGroupEvent> get copyWith => _$LessonsGroupEventCopyWithImpl<LessonsGroupEvent>(this as LessonsGroupEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonsGroupEvent&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other.posters, posters)&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,const DeepCollectionEquality().hash(posters),version);

@override
String toString() {
  return 'LessonsGroupEvent(groupId: $groupId, posters: $posters, version: $version)';
}


}

/// @nodoc
abstract mixin class $LessonsGroupEventCopyWith<$Res>  {
  factory $LessonsGroupEventCopyWith(LessonsGroupEvent value, $Res Function(LessonsGroupEvent) _then) = _$LessonsGroupEventCopyWithImpl;
@useResult
$Res call({
 int groupId, List<Posters>? posters, Version? version
});


$VersionCopyWith<$Res>? get version;

}
/// @nodoc
class _$LessonsGroupEventCopyWithImpl<$Res>
    implements $LessonsGroupEventCopyWith<$Res> {
  _$LessonsGroupEventCopyWithImpl(this._self, this._then);

  final LessonsGroupEvent _self;
  final $Res Function(LessonsGroupEvent) _then;

/// Create a copy of LessonsGroupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = null,Object? posters = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,posters: freezed == posters ? _self.posters : posters // ignore: cast_nullable_to_non_nullable
as List<Posters>?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version?,
  ));
}
/// Create a copy of LessonsGroupEvent
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


/// Adds pattern-matching-related methods to [LessonsGroupEvent].
extension LessonsGroupEventPatterns on LessonsGroupEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int groupId,  List<Posters>? posters,  Version? version)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId,_that.posters,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int groupId,  List<Posters>? posters,  Version? version)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.groupId,_that.posters,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int groupId,  List<Posters>? posters,  Version? version)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId,_that.posters,_that.version);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements LessonsGroupEvent {
  const _Started({required this.groupId, final  List<Posters>? posters, this.version}): _posters = posters;
  

@override final  int groupId;
 final  List<Posters>? _posters;
@override List<Posters>? get posters {
  final value = _posters;
  if (value == null) return null;
  if (_posters is EqualUnmodifiableListView) return _posters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Version? version;

/// Create a copy of LessonsGroupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other._posters, _posters)&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,const DeepCollectionEquality().hash(_posters),version);

@override
String toString() {
  return 'LessonsGroupEvent.started(groupId: $groupId, posters: $posters, version: $version)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $LessonsGroupEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int groupId, List<Posters>? posters, Version? version
});


@override $VersionCopyWith<$Res>? get version;

}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of LessonsGroupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = null,Object? posters = freezed,Object? version = freezed,}) {
  return _then(_Started(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,posters: freezed == posters ? _self._posters : posters // ignore: cast_nullable_to_non_nullable
as List<Posters>?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version?,
  ));
}

/// Create a copy of LessonsGroupEvent
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
mixin _$LessonsGroupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonsGroupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonsGroupState()';
}


}

/// @nodoc
class $LessonsGroupStateCopyWith<$Res>  {
$LessonsGroupStateCopyWith(LessonsGroupState _, $Res Function(LessonsGroupState) __);
}


/// Adds pattern-matching-related methods to [LessonsGroupState].
extension LessonsGroupStatePatterns on LessonsGroupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LessonsGroupLoad value)?  load,TResult Function( _LessonsGroupError value)?  error,TResult Function( _LessonsGroupComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LessonsGroupLoad() when load != null:
return load(_that);case _LessonsGroupError() when error != null:
return error(_that);case _LessonsGroupComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LessonsGroupLoad value)  load,required TResult Function( _LessonsGroupError value)  error,required TResult Function( _LessonsGroupComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LessonsGroupLoad():
return load(_that);case _LessonsGroupError():
return error(_that);case _LessonsGroupComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LessonsGroupLoad value)?  load,TResult? Function( _LessonsGroupError value)?  error,TResult? Function( _LessonsGroupComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LessonsGroupLoad() when load != null:
return load(_that);case _LessonsGroupError() when error != null:
return error(_that);case _LessonsGroupComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( List<GroupLessonInfo> lessons,  GroupLessonInfo? currentLesson)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LessonsGroupLoad() when load != null:
return load();case _LessonsGroupError() when error != null:
return error();case _LessonsGroupComplited() when complited != null:
return complited(_that.lessons,_that.currentLesson);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( List<GroupLessonInfo> lessons,  GroupLessonInfo? currentLesson)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LessonsGroupLoad():
return load();case _LessonsGroupError():
return error();case _LessonsGroupComplited():
return complited(_that.lessons,_that.currentLesson);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( List<GroupLessonInfo> lessons,  GroupLessonInfo? currentLesson)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LessonsGroupLoad() when load != null:
return load();case _LessonsGroupError() when error != null:
return error();case _LessonsGroupComplited() when complited != null:
return complited(_that.lessons,_that.currentLesson);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LessonsGroupState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonsGroupState.initial()';
}


}




/// @nodoc


class _LessonsGroupLoad implements LessonsGroupState {
  const _LessonsGroupLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonsGroupLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonsGroupState.load()';
}


}




/// @nodoc


class _LessonsGroupError implements LessonsGroupState {
  const _LessonsGroupError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonsGroupError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonsGroupState.error()';
}


}




/// @nodoc


class _LessonsGroupComplited implements LessonsGroupState {
  const _LessonsGroupComplited({required final  List<GroupLessonInfo> lessons, this.currentLesson}): _lessons = lessons;
  

 final  List<GroupLessonInfo> _lessons;
 List<GroupLessonInfo> get lessons {
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lessons);
}

 final  GroupLessonInfo? currentLesson;

/// Create a copy of LessonsGroupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonsGroupComplitedCopyWith<_LessonsGroupComplited> get copyWith => __$LessonsGroupComplitedCopyWithImpl<_LessonsGroupComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonsGroupComplited&&const DeepCollectionEquality().equals(other._lessons, _lessons)&&(identical(other.currentLesson, currentLesson) || other.currentLesson == currentLesson));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lessons),currentLesson);

@override
String toString() {
  return 'LessonsGroupState.complited(lessons: $lessons, currentLesson: $currentLesson)';
}


}

/// @nodoc
abstract mixin class _$LessonsGroupComplitedCopyWith<$Res> implements $LessonsGroupStateCopyWith<$Res> {
  factory _$LessonsGroupComplitedCopyWith(_LessonsGroupComplited value, $Res Function(_LessonsGroupComplited) _then) = __$LessonsGroupComplitedCopyWithImpl;
@useResult
$Res call({
 List<GroupLessonInfo> lessons, GroupLessonInfo? currentLesson
});


$GroupLessonInfoCopyWith<$Res>? get currentLesson;

}
/// @nodoc
class __$LessonsGroupComplitedCopyWithImpl<$Res>
    implements _$LessonsGroupComplitedCopyWith<$Res> {
  __$LessonsGroupComplitedCopyWithImpl(this._self, this._then);

  final _LessonsGroupComplited _self;
  final $Res Function(_LessonsGroupComplited) _then;

/// Create a copy of LessonsGroupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lessons = null,Object? currentLesson = freezed,}) {
  return _then(_LessonsGroupComplited(
lessons: null == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<GroupLessonInfo>,currentLesson: freezed == currentLesson ? _self.currentLesson : currentLesson // ignore: cast_nullable_to_non_nullable
as GroupLessonInfo?,
  ));
}

/// Create a copy of LessonsGroupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupLessonInfoCopyWith<$Res>? get currentLesson {
    if (_self.currentLesson == null) {
    return null;
  }

  return $GroupLessonInfoCopyWith<$Res>(_self.currentLesson!, (value) {
    return _then(_self.copyWith(currentLesson: value));
  });
}
}

// dart format on
