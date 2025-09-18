// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LessonVideoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonVideoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonVideoEvent()';
}


}

/// @nodoc
class $LessonVideoEventCopyWith<$Res>  {
$LessonVideoEventCopyWith(LessonVideoEvent _, $Res Function(LessonVideoEvent) __);
}


/// Adds pattern-matching-related methods to [LessonVideoEvent].
extension LessonVideoEventPatterns on LessonVideoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _StartedEvaluate value)?  evaluate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _StartedEvaluate() when evaluate != null:
return evaluate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _StartedEvaluate value)  evaluate,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _StartedEvaluate():
return evaluate(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _StartedEvaluate value)?  evaluate,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _StartedEvaluate() when evaluate != null:
return evaluate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int groupId,  int lessonId)?  started,TResult Function( PopDialogScore score)?  evaluate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId,_that.lessonId);case _StartedEvaluate() when evaluate != null:
return evaluate(_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int groupId,  int lessonId)  started,required TResult Function( PopDialogScore score)  evaluate,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.groupId,_that.lessonId);case _StartedEvaluate():
return evaluate(_that.score);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int groupId,  int lessonId)?  started,TResult? Function( PopDialogScore score)?  evaluate,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId,_that.lessonId);case _StartedEvaluate() when evaluate != null:
return evaluate(_that.score);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements LessonVideoEvent {
  const _Started({required this.groupId, required this.lessonId});
  

 final  int groupId;
 final  int lessonId;

/// Create a copy of LessonVideoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,lessonId);

@override
String toString() {
  return 'LessonVideoEvent.started(groupId: $groupId, lessonId: $lessonId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $LessonVideoEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 int groupId, int lessonId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of LessonVideoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupId = null,Object? lessonId = null,}) {
  return _then(_Started(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _StartedEvaluate implements LessonVideoEvent {
  const _StartedEvaluate({required this.score});
  

 final  PopDialogScore score;

/// Create a copy of LessonVideoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedEvaluateCopyWith<_StartedEvaluate> get copyWith => __$StartedEvaluateCopyWithImpl<_StartedEvaluate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartedEvaluate&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'LessonVideoEvent.evaluate(score: $score)';
}


}

/// @nodoc
abstract mixin class _$StartedEvaluateCopyWith<$Res> implements $LessonVideoEventCopyWith<$Res> {
  factory _$StartedEvaluateCopyWith(_StartedEvaluate value, $Res Function(_StartedEvaluate) _then) = __$StartedEvaluateCopyWithImpl;
@useResult
$Res call({
 PopDialogScore score
});




}
/// @nodoc
class __$StartedEvaluateCopyWithImpl<$Res>
    implements _$StartedEvaluateCopyWith<$Res> {
  __$StartedEvaluateCopyWithImpl(this._self, this._then);

  final _StartedEvaluate _self;
  final $Res Function(_StartedEvaluate) _then;

/// Create a copy of LessonVideoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? score = null,}) {
  return _then(_StartedEvaluate(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as PopDialogScore,
  ));
}


}

/// @nodoc
mixin _$LessonVideoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonVideoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonVideoState()';
}


}

/// @nodoc
class $LessonVideoStateCopyWith<$Res>  {
$LessonVideoStateCopyWith(LessonVideoState _, $Res Function(LessonVideoState) __);
}


/// Adds pattern-matching-related methods to [LessonVideoState].
extension LessonVideoStatePatterns on LessonVideoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LessonVideoLoad value)?  load,TResult Function( _LessonVideoError value)?  error,TResult Function( _LessonVideoComplite value)?  complite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LessonVideoLoad() when load != null:
return load(_that);case _LessonVideoError() when error != null:
return error(_that);case _LessonVideoComplite() when complite != null:
return complite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LessonVideoLoad value)  load,required TResult Function( _LessonVideoError value)  error,required TResult Function( _LessonVideoComplite value)  complite,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LessonVideoLoad():
return load(_that);case _LessonVideoError():
return error(_that);case _LessonVideoComplite():
return complite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LessonVideoLoad value)?  load,TResult? Function( _LessonVideoError value)?  error,TResult? Function( _LessonVideoComplite value)?  complite,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LessonVideoLoad() when load != null:
return load(_that);case _LessonVideoError() when error != null:
return error(_that);case _LessonVideoComplite() when complite != null:
return complite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( GroupLessonInfo lesson,  MyGroupsItem groupUser)?  complite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LessonVideoLoad() when load != null:
return load();case _LessonVideoError() when error != null:
return error();case _LessonVideoComplite() when complite != null:
return complite(_that.lesson,_that.groupUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( GroupLessonInfo lesson,  MyGroupsItem groupUser)  complite,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LessonVideoLoad():
return load();case _LessonVideoError():
return error();case _LessonVideoComplite():
return complite(_that.lesson,_that.groupUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( GroupLessonInfo lesson,  MyGroupsItem groupUser)?  complite,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LessonVideoLoad() when load != null:
return load();case _LessonVideoError() when error != null:
return error();case _LessonVideoComplite() when complite != null:
return complite(_that.lesson,_that.groupUser);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LessonVideoState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonVideoState.initial()';
}


}




/// @nodoc


class _LessonVideoLoad implements LessonVideoState {
  const _LessonVideoLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonVideoLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonVideoState.load()';
}


}




/// @nodoc


class _LessonVideoError implements LessonVideoState {
  const _LessonVideoError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonVideoError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonVideoState.error()';
}


}




/// @nodoc


class _LessonVideoComplite implements LessonVideoState {
  const _LessonVideoComplite({required this.lesson, required this.groupUser});
  

 final  GroupLessonInfo lesson;
 final  MyGroupsItem groupUser;

/// Create a copy of LessonVideoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonVideoCompliteCopyWith<_LessonVideoComplite> get copyWith => __$LessonVideoCompliteCopyWithImpl<_LessonVideoComplite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonVideoComplite&&(identical(other.lesson, lesson) || other.lesson == lesson)&&(identical(other.groupUser, groupUser) || other.groupUser == groupUser));
}


@override
int get hashCode => Object.hash(runtimeType,lesson,groupUser);

@override
String toString() {
  return 'LessonVideoState.complite(lesson: $lesson, groupUser: $groupUser)';
}


}

/// @nodoc
abstract mixin class _$LessonVideoCompliteCopyWith<$Res> implements $LessonVideoStateCopyWith<$Res> {
  factory _$LessonVideoCompliteCopyWith(_LessonVideoComplite value, $Res Function(_LessonVideoComplite) _then) = __$LessonVideoCompliteCopyWithImpl;
@useResult
$Res call({
 GroupLessonInfo lesson, MyGroupsItem groupUser
});


$GroupLessonInfoCopyWith<$Res> get lesson;$MyGroupsItemCopyWith<$Res> get groupUser;

}
/// @nodoc
class __$LessonVideoCompliteCopyWithImpl<$Res>
    implements _$LessonVideoCompliteCopyWith<$Res> {
  __$LessonVideoCompliteCopyWithImpl(this._self, this._then);

  final _LessonVideoComplite _self;
  final $Res Function(_LessonVideoComplite) _then;

/// Create a copy of LessonVideoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lesson = null,Object? groupUser = null,}) {
  return _then(_LessonVideoComplite(
lesson: null == lesson ? _self.lesson : lesson // ignore: cast_nullable_to_non_nullable
as GroupLessonInfo,groupUser: null == groupUser ? _self.groupUser : groupUser // ignore: cast_nullable_to_non_nullable
as MyGroupsItem,
  ));
}

/// Create a copy of LessonVideoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupLessonInfoCopyWith<$Res> get lesson {
  
  return $GroupLessonInfoCopyWith<$Res>(_self.lesson, (value) {
    return _then(_self.copyWith(lesson: value));
  });
}/// Create a copy of LessonVideoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyGroupsItemCopyWith<$Res> get groupUser {
  
  return $MyGroupsItemCopyWith<$Res>(_self.groupUser, (value) {
    return _then(_self.copyWith(groupUser: value));
  });
}
}

// dart format on
