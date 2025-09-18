// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_video_lesson_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadVideoLessonEvent {

 int get lessonId;
/// Create a copy of DownloadVideoLessonEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadVideoLessonEventCopyWith<DownloadVideoLessonEvent> get copyWith => _$DownloadVideoLessonEventCopyWithImpl<DownloadVideoLessonEvent>(this as DownloadVideoLessonEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadVideoLessonEvent&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId));
}


@override
int get hashCode => Object.hash(runtimeType,lessonId);

@override
String toString() {
  return 'DownloadVideoLessonEvent(lessonId: $lessonId)';
}


}

/// @nodoc
abstract mixin class $DownloadVideoLessonEventCopyWith<$Res>  {
  factory $DownloadVideoLessonEventCopyWith(DownloadVideoLessonEvent value, $Res Function(DownloadVideoLessonEvent) _then) = _$DownloadVideoLessonEventCopyWithImpl;
@useResult
$Res call({
 int lessonId
});




}
/// @nodoc
class _$DownloadVideoLessonEventCopyWithImpl<$Res>
    implements $DownloadVideoLessonEventCopyWith<$Res> {
  _$DownloadVideoLessonEventCopyWithImpl(this._self, this._then);

  final DownloadVideoLessonEvent _self;
  final $Res Function(DownloadVideoLessonEvent) _then;

/// Create a copy of DownloadVideoLessonEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lessonId = null,}) {
  return _then(_self.copyWith(
lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadVideoLessonEvent].
extension DownloadVideoLessonEventPatterns on DownloadVideoLessonEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int lessonId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.lessonId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int lessonId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.lessonId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int lessonId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.lessonId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DownloadVideoLessonEvent {
  const _Started({required this.lessonId});
  

@override final  int lessonId;

/// Create a copy of DownloadVideoLessonEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId));
}


@override
int get hashCode => Object.hash(runtimeType,lessonId);

@override
String toString() {
  return 'DownloadVideoLessonEvent.started(lessonId: $lessonId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $DownloadVideoLessonEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int lessonId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of DownloadVideoLessonEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lessonId = null,}) {
  return _then(_Started(
lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DownloadVideoLessonState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadVideoLessonState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoLessonState()';
}


}

/// @nodoc
class $DownloadVideoLessonStateCopyWith<$Res>  {
$DownloadVideoLessonStateCopyWith(DownloadVideoLessonState _, $Res Function(DownloadVideoLessonState) __);
}


/// Adds pattern-matching-related methods to [DownloadVideoLessonState].
extension DownloadVideoLessonStatePatterns on DownloadVideoLessonState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  load,TResult Function( _Error value)?  error,TResult Function( _NotFound value)?  notFound,TResult Function( _Complited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  load,required TResult Function( _Error value)  error,required TResult Function( _NotFound value)  notFound,required TResult Function( _Complited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return load(_that);case _Error():
return error(_that);case _NotFound():
return notFound(_that);case _Complited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  load,TResult? Function( _Error value)?  error,TResult? Function( _NotFound value)?  notFound,TResult? Function( _Complited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function()?  error,TResult Function()?  notFound,TResult Function( List<VideoSavedData> downloaders)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Complited() when complited != null:
return complited(_that.downloaders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function()  error,required TResult Function()  notFound,required TResult Function( List<VideoSavedData> downloaders)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return load();case _Error():
return error();case _NotFound():
return notFound();case _Complited():
return complited(_that.downloaders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function()?  error,TResult? Function()?  notFound,TResult? Function( List<VideoSavedData> downloaders)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Complited() when complited != null:
return complited(_that.downloaders);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DownloadVideoLessonState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoLessonState.load()';
}


}




/// @nodoc


class _Error implements DownloadVideoLessonState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoLessonState.error()';
}


}




/// @nodoc


class _NotFound implements DownloadVideoLessonState {
  const _NotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoLessonState.notFound()';
}


}




/// @nodoc


class _Complited implements DownloadVideoLessonState {
  const _Complited({required final  List<VideoSavedData> downloaders}): _downloaders = downloaders;
  

 final  List<VideoSavedData> _downloaders;
 List<VideoSavedData> get downloaders {
  if (_downloaders is EqualUnmodifiableListView) return _downloaders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_downloaders);
}


/// Create a copy of DownloadVideoLessonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplitedCopyWith<_Complited> get copyWith => __$ComplitedCopyWithImpl<_Complited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complited&&const DeepCollectionEquality().equals(other._downloaders, _downloaders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_downloaders));

@override
String toString() {
  return 'DownloadVideoLessonState.complited(downloaders: $downloaders)';
}


}

/// @nodoc
abstract mixin class _$ComplitedCopyWith<$Res> implements $DownloadVideoLessonStateCopyWith<$Res> {
  factory _$ComplitedCopyWith(_Complited value, $Res Function(_Complited) _then) = __$ComplitedCopyWithImpl;
@useResult
$Res call({
 List<VideoSavedData> downloaders
});




}
/// @nodoc
class __$ComplitedCopyWithImpl<$Res>
    implements _$ComplitedCopyWith<$Res> {
  __$ComplitedCopyWithImpl(this._self, this._then);

  final _Complited _self;
  final $Res Function(_Complited) _then;

/// Create a copy of DownloadVideoLessonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? downloaders = null,}) {
  return _then(_Complited(
downloaders: null == downloaders ? _self._downloaders : downloaders // ignore: cast_nullable_to_non_nullable
as List<VideoSavedData>,
  ));
}


}

// dart format on
