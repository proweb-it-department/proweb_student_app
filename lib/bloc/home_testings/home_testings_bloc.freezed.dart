// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_testings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeTestingsEvent {

 int get groupId; int get limit; int get offset;
/// Create a copy of HomeTestingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTestingsEventCopyWith<HomeTestingsEvent> get copyWith => _$HomeTestingsEventCopyWithImpl<HomeTestingsEvent>(this as HomeTestingsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTestingsEvent&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,limit,offset);

@override
String toString() {
  return 'HomeTestingsEvent(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $HomeTestingsEventCopyWith<$Res>  {
  factory $HomeTestingsEventCopyWith(HomeTestingsEvent value, $Res Function(HomeTestingsEvent) _then) = _$HomeTestingsEventCopyWithImpl;
@useResult
$Res call({
 int groupId, int limit, int offset
});




}
/// @nodoc
class _$HomeTestingsEventCopyWithImpl<$Res>
    implements $HomeTestingsEventCopyWith<$Res> {
  _$HomeTestingsEventCopyWithImpl(this._self, this._then);

  final HomeTestingsEvent _self;
  final $Res Function(HomeTestingsEvent) _then;

/// Create a copy of HomeTestingsEvent
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


/// Adds pattern-matching-related methods to [HomeTestingsEvent].
extension HomeTestingsEventPatterns on HomeTestingsEvent {
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


class _Started implements HomeTestingsEvent {
  const _Started({required this.groupId, required this.limit, required this.offset});
  

@override final  int groupId;
@override final  int limit;
@override final  int offset;

/// Create a copy of HomeTestingsEvent
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
  return 'HomeTestingsEvent.started(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $HomeTestingsEventCopyWith<$Res> {
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

/// Create a copy of HomeTestingsEvent
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
mixin _$HomeTestingsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTestingsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeTestingsState()';
}


}

/// @nodoc
class $HomeTestingsStateCopyWith<$Res>  {
$HomeTestingsStateCopyWith(HomeTestingsState _, $Res Function(HomeTestingsState) __);
}


/// Adds pattern-matching-related methods to [HomeTestingsState].
extension HomeTestingsStatePatterns on HomeTestingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeTestingsStateInitial value)?  initial,TResult Function( HomeTestingsStateComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeTestingsStateInitial() when initial != null:
return initial(_that);case HomeTestingsStateComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeTestingsStateInitial value)  initial,required TResult Function( HomeTestingsStateComplited value)  complited,}){
final _that = this;
switch (_that) {
case HomeTestingsStateInitial():
return initial(_that);case HomeTestingsStateComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeTestingsStateInitial value)?  initial,TResult? Function( HomeTestingsStateComplited value)?  complited,}){
final _that = this;
switch (_that) {
case HomeTestingsStateInitial() when initial != null:
return initial(_that);case HomeTestingsStateComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( DataHomeTesting testings,  bool load)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeTestingsStateInitial() when initial != null:
return initial();case HomeTestingsStateComplited() when complited != null:
return complited(_that.testings,_that.load);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( DataHomeTesting testings,  bool load)  complited,}) {final _that = this;
switch (_that) {
case HomeTestingsStateInitial():
return initial();case HomeTestingsStateComplited():
return complited(_that.testings,_that.load);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( DataHomeTesting testings,  bool load)?  complited,}) {final _that = this;
switch (_that) {
case HomeTestingsStateInitial() when initial != null:
return initial();case HomeTestingsStateComplited() when complited != null:
return complited(_that.testings,_that.load);case _:
  return null;

}
}

}

/// @nodoc


class HomeTestingsStateInitial implements HomeTestingsState {
  const HomeTestingsStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTestingsStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeTestingsState.initial()';
}


}




/// @nodoc


class HomeTestingsStateComplited implements HomeTestingsState {
  const HomeTestingsStateComplited({required this.testings, required this.load});
  

 final  DataHomeTesting testings;
 final  bool load;

/// Create a copy of HomeTestingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTestingsStateComplitedCopyWith<HomeTestingsStateComplited> get copyWith => _$HomeTestingsStateComplitedCopyWithImpl<HomeTestingsStateComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTestingsStateComplited&&(identical(other.testings, testings) || other.testings == testings)&&(identical(other.load, load) || other.load == load));
}


@override
int get hashCode => Object.hash(runtimeType,testings,load);

@override
String toString() {
  return 'HomeTestingsState.complited(testings: $testings, load: $load)';
}


}

/// @nodoc
abstract mixin class $HomeTestingsStateComplitedCopyWith<$Res> implements $HomeTestingsStateCopyWith<$Res> {
  factory $HomeTestingsStateComplitedCopyWith(HomeTestingsStateComplited value, $Res Function(HomeTestingsStateComplited) _then) = _$HomeTestingsStateComplitedCopyWithImpl;
@useResult
$Res call({
 DataHomeTesting testings, bool load
});




}
/// @nodoc
class _$HomeTestingsStateComplitedCopyWithImpl<$Res>
    implements $HomeTestingsStateComplitedCopyWith<$Res> {
  _$HomeTestingsStateComplitedCopyWithImpl(this._self, this._then);

  final HomeTestingsStateComplited _self;
  final $Res Function(HomeTestingsStateComplited) _then;

/// Create a copy of HomeTestingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? testings = null,Object? load = null,}) {
  return _then(HomeTestingsStateComplited(
testings: null == testings ? _self.testings : testings // ignore: cast_nullable_to_non_nullable
as DataHomeTesting,load: null == load ? _self.load : load // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
