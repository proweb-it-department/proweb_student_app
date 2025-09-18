// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TestGroupEvent {

 int get groupId; int get limit; int get offset;
/// Create a copy of TestGroupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestGroupEventCopyWith<TestGroupEvent> get copyWith => _$TestGroupEventCopyWithImpl<TestGroupEvent>(this as TestGroupEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestGroupEvent&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,limit,offset);

@override
String toString() {
  return 'TestGroupEvent(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $TestGroupEventCopyWith<$Res>  {
  factory $TestGroupEventCopyWith(TestGroupEvent value, $Res Function(TestGroupEvent) _then) = _$TestGroupEventCopyWithImpl;
@useResult
$Res call({
 int groupId, int limit, int offset
});




}
/// @nodoc
class _$TestGroupEventCopyWithImpl<$Res>
    implements $TestGroupEventCopyWith<$Res> {
  _$TestGroupEventCopyWithImpl(this._self, this._then);

  final TestGroupEvent _self;
  final $Res Function(TestGroupEvent) _then;

/// Create a copy of TestGroupEvent
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


/// Adds pattern-matching-related methods to [TestGroupEvent].
extension TestGroupEventPatterns on TestGroupEvent {
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


class _Started implements TestGroupEvent {
  const _Started({required this.groupId, required this.limit, required this.offset});
  

@override final  int groupId;
@override final  int limit;
@override final  int offset;

/// Create a copy of TestGroupEvent
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
  return 'TestGroupEvent.started(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $TestGroupEventCopyWith<$Res> {
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

/// Create a copy of TestGroupEvent
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
mixin _$TestGroupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestGroupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TestGroupState()';
}


}

/// @nodoc
class $TestGroupStateCopyWith<$Res>  {
$TestGroupStateCopyWith(TestGroupState _, $Res Function(TestGroupState) __);
}


/// Adds pattern-matching-related methods to [TestGroupState].
extension TestGroupStatePatterns on TestGroupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _TestGroupLoad value)?  load,TResult Function( _TestGroupError value)?  error,TResult Function( _TestGroupComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _TestGroupLoad() when load != null:
return load(_that);case _TestGroupError() when error != null:
return error(_that);case _TestGroupComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _TestGroupLoad value)  load,required TResult Function( _TestGroupError value)  error,required TResult Function( _TestGroupComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _TestGroupLoad():
return load(_that);case _TestGroupError():
return error(_that);case _TestGroupComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _TestGroupLoad value)?  load,TResult? Function( _TestGroupError value)?  error,TResult? Function( _TestGroupComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _TestGroupLoad() when load != null:
return load(_that);case _TestGroupError() when error != null:
return error(_that);case _TestGroupComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( ResponseLazeList<TestListGroup> data)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _TestGroupLoad() when load != null:
return load();case _TestGroupError() when error != null:
return error();case _TestGroupComplited() when complited != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( ResponseLazeList<TestListGroup> data)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _TestGroupLoad():
return load();case _TestGroupError():
return error();case _TestGroupComplited():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( ResponseLazeList<TestListGroup> data)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _TestGroupLoad() when load != null:
return load();case _TestGroupError() when error != null:
return error();case _TestGroupComplited() when complited != null:
return complited(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TestGroupState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TestGroupState.initial()';
}


}




/// @nodoc


class _TestGroupLoad implements TestGroupState {
  const _TestGroupLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestGroupLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TestGroupState.load()';
}


}




/// @nodoc


class _TestGroupError implements TestGroupState {
  const _TestGroupError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestGroupError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TestGroupState.error()';
}


}




/// @nodoc


class _TestGroupComplited implements TestGroupState {
  const _TestGroupComplited({required this.data});
  

 final  ResponseLazeList<TestListGroup> data;

/// Create a copy of TestGroupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestGroupComplitedCopyWith<_TestGroupComplited> get copyWith => __$TestGroupComplitedCopyWithImpl<_TestGroupComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestGroupComplited&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'TestGroupState.complited(data: $data)';
}


}

/// @nodoc
abstract mixin class _$TestGroupComplitedCopyWith<$Res> implements $TestGroupStateCopyWith<$Res> {
  factory _$TestGroupComplitedCopyWith(_TestGroupComplited value, $Res Function(_TestGroupComplited) _then) = __$TestGroupComplitedCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<TestListGroup> data
});




}
/// @nodoc
class __$TestGroupComplitedCopyWithImpl<$Res>
    implements _$TestGroupComplitedCopyWith<$Res> {
  __$TestGroupComplitedCopyWithImpl(this._self, this._then);

  final _TestGroupComplited _self;
  final $Res Function(_TestGroupComplited) _then;

/// Create a copy of TestGroupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_TestGroupComplited(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<TestListGroup>,
  ));
}


}

// dart format on
