// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_watched_lesson_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyWatchedLessonEvent {

 String get isWatched; int? get groupId; int? get limit; int? get offset;
/// Create a copy of MyWatchedLessonEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWatchedLessonEventCopyWith<MyWatchedLessonEvent> get copyWith => _$MyWatchedLessonEventCopyWithImpl<MyWatchedLessonEvent>(this as MyWatchedLessonEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWatchedLessonEvent&&(identical(other.isWatched, isWatched) || other.isWatched == isWatched)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,isWatched,groupId,limit,offset);

@override
String toString() {
  return 'MyWatchedLessonEvent(isWatched: $isWatched, groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $MyWatchedLessonEventCopyWith<$Res>  {
  factory $MyWatchedLessonEventCopyWith(MyWatchedLessonEvent value, $Res Function(MyWatchedLessonEvent) _then) = _$MyWatchedLessonEventCopyWithImpl;
@useResult
$Res call({
 String isWatched, int? groupId, int? limit, int? offset
});




}
/// @nodoc
class _$MyWatchedLessonEventCopyWithImpl<$Res>
    implements $MyWatchedLessonEventCopyWith<$Res> {
  _$MyWatchedLessonEventCopyWithImpl(this._self, this._then);

  final MyWatchedLessonEvent _self;
  final $Res Function(MyWatchedLessonEvent) _then;

/// Create a copy of MyWatchedLessonEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isWatched = null,Object? groupId = freezed,Object? limit = freezed,Object? offset = freezed,}) {
  return _then(_self.copyWith(
isWatched: null == isWatched ? _self.isWatched : isWatched // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyWatchedLessonEvent].
extension MyWatchedLessonEventPatterns on MyWatchedLessonEvent {
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
return started(_that);}
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String isWatched,  int? groupId,  int? limit,  int? offset)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.isWatched,_that.groupId,_that.limit,_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String isWatched,  int? groupId,  int? limit,  int? offset)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.isWatched,_that.groupId,_that.limit,_that.offset);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String isWatched,  int? groupId,  int? limit,  int? offset)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.isWatched,_that.groupId,_that.limit,_that.offset);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MyWatchedLessonEvent {
  const _Started({required this.isWatched, this.groupId, this.limit, this.offset});
  

@override final  String isWatched;
@override final  int? groupId;
@override final  int? limit;
@override final  int? offset;

/// Create a copy of MyWatchedLessonEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.isWatched, isWatched) || other.isWatched == isWatched)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,isWatched,groupId,limit,offset);

@override
String toString() {
  return 'MyWatchedLessonEvent.started(isWatched: $isWatched, groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $MyWatchedLessonEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 String isWatched, int? groupId, int? limit, int? offset
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of MyWatchedLessonEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isWatched = null,Object? groupId = freezed,Object? limit = freezed,Object? offset = freezed,}) {
  return _then(_Started(
isWatched: null == isWatched ? _self.isWatched : isWatched // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$MyWatchedLessonState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWatchedLessonState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyWatchedLessonState()';
}


}

/// @nodoc
class $MyWatchedLessonStateCopyWith<$Res>  {
$MyWatchedLessonStateCopyWith(MyWatchedLessonState _, $Res Function(MyWatchedLessonState) __);
}


/// Adds pattern-matching-related methods to [MyWatchedLessonState].
extension MyWatchedLessonStatePatterns on MyWatchedLessonState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MyWatchedLessonStateLoad value)?  initial,TResult Function( MyWatchedLessonStateComplited value)?  compllited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MyWatchedLessonStateLoad() when initial != null:
return initial(_that);case MyWatchedLessonStateComplited() when compllited != null:
return compllited(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MyWatchedLessonStateLoad value)  initial,required TResult Function( MyWatchedLessonStateComplited value)  compllited,}){
final _that = this;
switch (_that) {
case MyWatchedLessonStateLoad():
return initial(_that);case MyWatchedLessonStateComplited():
return compllited(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MyWatchedLessonStateLoad value)?  initial,TResult? Function( MyWatchedLessonStateComplited value)?  compllited,}){
final _that = this;
switch (_that) {
case MyWatchedLessonStateLoad() when initial != null:
return initial(_that);case MyWatchedLessonStateComplited() when compllited != null:
return compllited(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( ResponseLazeList<MyWatchedLesson> data)?  compllited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MyWatchedLessonStateLoad() when initial != null:
return initial();case MyWatchedLessonStateComplited() when compllited != null:
return compllited(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( ResponseLazeList<MyWatchedLesson> data)  compllited,}) {final _that = this;
switch (_that) {
case MyWatchedLessonStateLoad():
return initial();case MyWatchedLessonStateComplited():
return compllited(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( ResponseLazeList<MyWatchedLesson> data)?  compllited,}) {final _that = this;
switch (_that) {
case MyWatchedLessonStateLoad() when initial != null:
return initial();case MyWatchedLessonStateComplited() when compllited != null:
return compllited(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class MyWatchedLessonStateLoad implements MyWatchedLessonState {
  const MyWatchedLessonStateLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWatchedLessonStateLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyWatchedLessonState.initial()';
}


}




/// @nodoc


class MyWatchedLessonStateComplited implements MyWatchedLessonState {
  const MyWatchedLessonStateComplited({required this.data});
  

 final  ResponseLazeList<MyWatchedLesson> data;

/// Create a copy of MyWatchedLessonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWatchedLessonStateComplitedCopyWith<MyWatchedLessonStateComplited> get copyWith => _$MyWatchedLessonStateComplitedCopyWithImpl<MyWatchedLessonStateComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWatchedLessonStateComplited&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MyWatchedLessonState.compllited(data: $data)';
}


}

/// @nodoc
abstract mixin class $MyWatchedLessonStateComplitedCopyWith<$Res> implements $MyWatchedLessonStateCopyWith<$Res> {
  factory $MyWatchedLessonStateComplitedCopyWith(MyWatchedLessonStateComplited value, $Res Function(MyWatchedLessonStateComplited) _then) = _$MyWatchedLessonStateComplitedCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<MyWatchedLesson> data
});




}
/// @nodoc
class _$MyWatchedLessonStateComplitedCopyWithImpl<$Res>
    implements $MyWatchedLessonStateComplitedCopyWith<$Res> {
  _$MyWatchedLessonStateComplitedCopyWithImpl(this._self, this._then);

  final MyWatchedLessonStateComplited _self;
  final $Res Function(MyWatchedLessonStateComplited) _then;

/// Create a copy of MyWatchedLessonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(MyWatchedLessonStateComplited(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<MyWatchedLesson>,
  ));
}


}

// dart format on
