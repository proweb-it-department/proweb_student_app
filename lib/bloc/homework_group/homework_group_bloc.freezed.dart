// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeworkGroupEvent {

 int get groupId; int get limit; int get offset;
/// Create a copy of HomeworkGroupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeworkGroupEventCopyWith<HomeworkGroupEvent> get copyWith => _$HomeworkGroupEventCopyWithImpl<HomeworkGroupEvent>(this as HomeworkGroupEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkGroupEvent&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,limit,offset);

@override
String toString() {
  return 'HomeworkGroupEvent(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $HomeworkGroupEventCopyWith<$Res>  {
  factory $HomeworkGroupEventCopyWith(HomeworkGroupEvent value, $Res Function(HomeworkGroupEvent) _then) = _$HomeworkGroupEventCopyWithImpl;
@useResult
$Res call({
 int groupId, int limit, int offset
});




}
/// @nodoc
class _$HomeworkGroupEventCopyWithImpl<$Res>
    implements $HomeworkGroupEventCopyWith<$Res> {
  _$HomeworkGroupEventCopyWithImpl(this._self, this._then);

  final HomeworkGroupEvent _self;
  final $Res Function(HomeworkGroupEvent) _then;

/// Create a copy of HomeworkGroupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = null,Object? limit = null,Object? offset = null,}) {
  return _then(_self.copyWith(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeworkGroupEvent].
extension HomeworkGroupEventPatterns on HomeworkGroupEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int groupId,  int limit,  int offset)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId,_that.limit,_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int groupId,  int limit,  int offset)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.groupId,_that.limit,_that.offset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int groupId,  int limit,  int offset)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId,_that.limit,_that.offset);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements HomeworkGroupEvent {
  const _Started({required this.groupId, required this.limit, required this.offset});
  

@override final  int groupId;
@override final  int limit;
@override final  int offset;

/// Create a copy of HomeworkGroupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,limit,offset);

@override
String toString() {
  return 'HomeworkGroupEvent.started(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $HomeworkGroupEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int groupId, int limit, int offset
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of HomeworkGroupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = null,Object? limit = null,Object? offset = null,}) {
  return _then(_Started(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$HomeworkGroupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkGroupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeworkGroupState()';
}


}

/// @nodoc
class $HomeworkGroupStateCopyWith<$Res>  {
$HomeworkGroupStateCopyWith(HomeworkGroupState _, $Res Function(HomeworkGroupState) __);
}


/// Adds pattern-matching-related methods to [HomeworkGroupState].
extension HomeworkGroupStatePatterns on HomeworkGroupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _HomeworkGroupLoad value)?  load,TResult Function( _HomeworkGroupError value)?  error,TResult Function( _HomeworkGroupComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _HomeworkGroupLoad() when load != null:
return load(_that);case _HomeworkGroupError() when error != null:
return error(_that);case _HomeworkGroupComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _HomeworkGroupLoad value)  load,required TResult Function( _HomeworkGroupError value)  error,required TResult Function( _HomeworkGroupComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _HomeworkGroupLoad():
return load(_that);case _HomeworkGroupError():
return error(_that);case _HomeworkGroupComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _HomeworkGroupLoad value)?  load,TResult? Function( _HomeworkGroupError value)?  error,TResult? Function( _HomeworkGroupComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _HomeworkGroupLoad() when load != null:
return load(_that);case _HomeworkGroupError() when error != null:
return error(_that);case _HomeworkGroupComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( ResponseLazeList<HomeworkListGroup> data)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _HomeworkGroupLoad() when load != null:
return load();case _HomeworkGroupError() when error != null:
return error();case _HomeworkGroupComplited() when complited != null:
return complited(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( ResponseLazeList<HomeworkListGroup> data)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _HomeworkGroupLoad():
return load();case _HomeworkGroupError():
return error();case _HomeworkGroupComplited():
return complited(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( ResponseLazeList<HomeworkListGroup> data)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _HomeworkGroupLoad() when load != null:
return load();case _HomeworkGroupError() when error != null:
return error();case _HomeworkGroupComplited() when complited != null:
return complited(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeworkGroupState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeworkGroupState.initial()';
}


}




/// @nodoc


class _HomeworkGroupLoad implements HomeworkGroupState {
  const _HomeworkGroupLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkGroupLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeworkGroupState.load()';
}


}




/// @nodoc


class _HomeworkGroupError implements HomeworkGroupState {
  const _HomeworkGroupError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkGroupError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeworkGroupState.error()';
}


}




/// @nodoc


class _HomeworkGroupComplited implements HomeworkGroupState {
  const _HomeworkGroupComplited({required this.data});
  

 final  ResponseLazeList<HomeworkListGroup> data;

/// Create a copy of HomeworkGroupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkGroupComplitedCopyWith<_HomeworkGroupComplited> get copyWith => __$HomeworkGroupComplitedCopyWithImpl<_HomeworkGroupComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkGroupComplited&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HomeworkGroupState.complited(data: $data)';
}


}

/// @nodoc
abstract mixin class _$HomeworkGroupComplitedCopyWith<$Res> implements $HomeworkGroupStateCopyWith<$Res> {
  factory _$HomeworkGroupComplitedCopyWith(_HomeworkGroupComplited value, $Res Function(_HomeworkGroupComplited) _then) = __$HomeworkGroupComplitedCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<HomeworkListGroup> data
});




}
/// @nodoc
class __$HomeworkGroupComplitedCopyWithImpl<$Res>
    implements _$HomeworkGroupComplitedCopyWith<$Res> {
  __$HomeworkGroupComplitedCopyWithImpl(this._self, this._then);

  final _HomeworkGroupComplited _self;
  final $Res Function(_HomeworkGroupComplited) _then;

/// Create a copy of HomeworkGroupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_HomeworkGroupComplited(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<HomeworkListGroup>,
  ));
}


}

// dart format on
