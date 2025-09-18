// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_group_lesson_videos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadsGroupLessonVideosEvent {

 int get groupId;
/// Create a copy of DownloadsGroupLessonVideosEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadsGroupLessonVideosEventCopyWith<DownloadsGroupLessonVideosEvent> get copyWith => _$DownloadsGroupLessonVideosEventCopyWithImpl<DownloadsGroupLessonVideosEvent>(this as DownloadsGroupLessonVideosEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsGroupLessonVideosEvent&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,groupId);

@override
String toString() {
  return 'DownloadsGroupLessonVideosEvent(groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class $DownloadsGroupLessonVideosEventCopyWith<$Res>  {
  factory $DownloadsGroupLessonVideosEventCopyWith(DownloadsGroupLessonVideosEvent value, $Res Function(DownloadsGroupLessonVideosEvent) _then) = _$DownloadsGroupLessonVideosEventCopyWithImpl;
@useResult
$Res call({
 int groupId
});




}
/// @nodoc
class _$DownloadsGroupLessonVideosEventCopyWithImpl<$Res>
    implements $DownloadsGroupLessonVideosEventCopyWith<$Res> {
  _$DownloadsGroupLessonVideosEventCopyWithImpl(this._self, this._then);

  final DownloadsGroupLessonVideosEvent _self;
  final $Res Function(DownloadsGroupLessonVideosEvent) _then;

/// Create a copy of DownloadsGroupLessonVideosEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = null,}) {
  return _then(_self.copyWith(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadsGroupLessonVideosEvent].
extension DownloadsGroupLessonVideosEventPatterns on DownloadsGroupLessonVideosEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int groupId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int groupId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.groupId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int groupId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DownloadsGroupLessonVideosEvent {
  const _Started({required this.groupId});
  

@override final  int groupId;

/// Create a copy of DownloadsGroupLessonVideosEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,groupId);

@override
String toString() {
  return 'DownloadsGroupLessonVideosEvent.started(groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $DownloadsGroupLessonVideosEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int groupId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of DownloadsGroupLessonVideosEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = null,}) {
  return _then(_Started(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DownloadsGroupLessonVideosState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsGroupLessonVideosState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsGroupLessonVideosState()';
}


}

/// @nodoc
class $DownloadsGroupLessonVideosStateCopyWith<$Res>  {
$DownloadsGroupLessonVideosStateCopyWith(DownloadsGroupLessonVideosState _, $Res Function(DownloadsGroupLessonVideosState) __);
}


/// Adds pattern-matching-related methods to [DownloadsGroupLessonVideosState].
extension DownloadsGroupLessonVideosStatePatterns on DownloadsGroupLessonVideosState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  load,TResult Function( _Error value)?  error,TResult Function( _NotFound value)?  notFound,TResult Function( _Compolited value)?  comlited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Compolited() when comlited != null:
return comlited(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  load,required TResult Function( _Error value)  error,required TResult Function( _NotFound value)  notFound,required TResult Function( _Compolited value)  comlited,}){
final _that = this;
switch (_that) {
case _Initial():
return load(_that);case _Error():
return error(_that);case _NotFound():
return notFound(_that);case _Compolited():
return comlited(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  load,TResult? Function( _Error value)?  error,TResult? Function( _NotFound value)?  notFound,TResult? Function( _Compolited value)?  comlited,}){
final _that = this;
switch (_that) {
case _Initial() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Compolited() when comlited != null:
return comlited(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function()?  error,TResult Function()?  notFound,TResult Function( List<GroupLessonModelData> lessons)?  comlited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Compolited() when comlited != null:
return comlited(_that.lessons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function()  error,required TResult Function()  notFound,required TResult Function( List<GroupLessonModelData> lessons)  comlited,}) {final _that = this;
switch (_that) {
case _Initial():
return load();case _Error():
return error();case _NotFound():
return notFound();case _Compolited():
return comlited(_that.lessons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function()?  error,TResult? Function()?  notFound,TResult? Function( List<GroupLessonModelData> lessons)?  comlited,}) {final _that = this;
switch (_that) {
case _Initial() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Compolited() when comlited != null:
return comlited(_that.lessons);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DownloadsGroupLessonVideosState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsGroupLessonVideosState.load()';
}


}




/// @nodoc


class _Error implements DownloadsGroupLessonVideosState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsGroupLessonVideosState.error()';
}


}




/// @nodoc


class _NotFound implements DownloadsGroupLessonVideosState {
  const _NotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsGroupLessonVideosState.notFound()';
}


}




/// @nodoc


class _Compolited implements DownloadsGroupLessonVideosState {
  const _Compolited({required final  List<GroupLessonModelData> lessons}): _lessons = lessons;
  

 final  List<GroupLessonModelData> _lessons;
 List<GroupLessonModelData> get lessons {
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lessons);
}


/// Create a copy of DownloadsGroupLessonVideosState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompolitedCopyWith<_Compolited> get copyWith => __$CompolitedCopyWithImpl<_Compolited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Compolited&&const DeepCollectionEquality().equals(other._lessons, _lessons));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lessons));

@override
String toString() {
  return 'DownloadsGroupLessonVideosState.comlited(lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class _$CompolitedCopyWith<$Res> implements $DownloadsGroupLessonVideosStateCopyWith<$Res> {
  factory _$CompolitedCopyWith(_Compolited value, $Res Function(_Compolited) _then) = __$CompolitedCopyWithImpl;
@useResult
$Res call({
 List<GroupLessonModelData> lessons
});




}
/// @nodoc
class __$CompolitedCopyWithImpl<$Res>
    implements _$CompolitedCopyWith<$Res> {
  __$CompolitedCopyWithImpl(this._self, this._then);

  final _Compolited _self;
  final $Res Function(_Compolited) _then;

/// Create a copy of DownloadsGroupLessonVideosState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lessons = null,}) {
  return _then(_Compolited(
lessons: null == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<GroupLessonModelData>,
  ));
}


}

// dart format on
