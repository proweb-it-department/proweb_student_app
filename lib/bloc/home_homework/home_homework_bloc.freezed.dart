// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_homework_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeHomeworkEvent {

 int get groupId; int get limit; int get offset;
/// Create a copy of HomeHomeworkEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeHomeworkEventCopyWith<HomeHomeworkEvent> get copyWith => _$HomeHomeworkEventCopyWithImpl<HomeHomeworkEvent>(this as HomeHomeworkEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeHomeworkEvent&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,limit,offset);

@override
String toString() {
  return 'HomeHomeworkEvent(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $HomeHomeworkEventCopyWith<$Res>  {
  factory $HomeHomeworkEventCopyWith(HomeHomeworkEvent value, $Res Function(HomeHomeworkEvent) _then) = _$HomeHomeworkEventCopyWithImpl;
@useResult
$Res call({
 int groupId, int limit, int offset
});




}
/// @nodoc
class _$HomeHomeworkEventCopyWithImpl<$Res>
    implements $HomeHomeworkEventCopyWith<$Res> {
  _$HomeHomeworkEventCopyWithImpl(this._self, this._then);

  final HomeHomeworkEvent _self;
  final $Res Function(HomeHomeworkEvent) _then;

/// Create a copy of HomeHomeworkEvent
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


/// Adds pattern-matching-related methods to [HomeHomeworkEvent].
extension HomeHomeworkEventPatterns on HomeHomeworkEvent {
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


class _Started implements HomeHomeworkEvent {
  const _Started({required this.groupId, required this.limit, required this.offset});
  

@override final  int groupId;
@override final  int limit;
@override final  int offset;

/// Create a copy of HomeHomeworkEvent
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
  return 'HomeHomeworkEvent.started(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $HomeHomeworkEventCopyWith<$Res> {
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

/// Create a copy of HomeHomeworkEvent
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
mixin _$HomeHomeworkState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeHomeworkState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeHomeworkState()';
}


}

/// @nodoc
class $HomeHomeworkStateCopyWith<$Res>  {
$HomeHomeworkStateCopyWith(HomeHomeworkState _, $Res Function(HomeHomeworkState) __);
}


/// Adds pattern-matching-related methods to [HomeHomeworkState].
extension HomeHomeworkStatePatterns on HomeHomeworkState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeHomeworkStateInitial value)?  initial,TResult Function( HomeHomeworkStateComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeHomeworkStateInitial() when initial != null:
return initial(_that);case HomeHomeworkStateComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeHomeworkStateInitial value)  initial,required TResult Function( HomeHomeworkStateComplited value)  complited,}){
final _that = this;
switch (_that) {
case HomeHomeworkStateInitial():
return initial(_that);case HomeHomeworkStateComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeHomeworkStateInitial value)?  initial,TResult? Function( HomeHomeworkStateComplited value)?  complited,}){
final _that = this;
switch (_that) {
case HomeHomeworkStateInitial() when initial != null:
return initial(_that);case HomeHomeworkStateComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( DataHomeHomework homeworks,  bool load)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeHomeworkStateInitial() when initial != null:
return initial();case HomeHomeworkStateComplited() when complited != null:
return complited(_that.homeworks,_that.load);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( DataHomeHomework homeworks,  bool load)  complited,}) {final _that = this;
switch (_that) {
case HomeHomeworkStateInitial():
return initial();case HomeHomeworkStateComplited():
return complited(_that.homeworks,_that.load);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( DataHomeHomework homeworks,  bool load)?  complited,}) {final _that = this;
switch (_that) {
case HomeHomeworkStateInitial() when initial != null:
return initial();case HomeHomeworkStateComplited() when complited != null:
return complited(_that.homeworks,_that.load);case _:
  return null;

}
}

}

/// @nodoc


class HomeHomeworkStateInitial implements HomeHomeworkState {
  const HomeHomeworkStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeHomeworkStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeHomeworkState.initial()';
}


}




/// @nodoc


class HomeHomeworkStateComplited implements HomeHomeworkState {
  const HomeHomeworkStateComplited({required this.homeworks, required this.load});
  

 final  DataHomeHomework homeworks;
 final  bool load;

/// Create a copy of HomeHomeworkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeHomeworkStateComplitedCopyWith<HomeHomeworkStateComplited> get copyWith => _$HomeHomeworkStateComplitedCopyWithImpl<HomeHomeworkStateComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeHomeworkStateComplited&&(identical(other.homeworks, homeworks) || other.homeworks == homeworks)&&(identical(other.load, load) || other.load == load));
}


@override
int get hashCode => Object.hash(runtimeType,homeworks,load);

@override
String toString() {
  return 'HomeHomeworkState.complited(homeworks: $homeworks, load: $load)';
}


}

/// @nodoc
abstract mixin class $HomeHomeworkStateComplitedCopyWith<$Res> implements $HomeHomeworkStateCopyWith<$Res> {
  factory $HomeHomeworkStateComplitedCopyWith(HomeHomeworkStateComplited value, $Res Function(HomeHomeworkStateComplited) _then) = _$HomeHomeworkStateComplitedCopyWithImpl;
@useResult
$Res call({
 DataHomeHomework homeworks, bool load
});




}
/// @nodoc
class _$HomeHomeworkStateComplitedCopyWithImpl<$Res>
    implements $HomeHomeworkStateComplitedCopyWith<$Res> {
  _$HomeHomeworkStateComplitedCopyWithImpl(this._self, this._then);

  final HomeHomeworkStateComplited _self;
  final $Res Function(HomeHomeworkStateComplited) _then;

/// Create a copy of HomeHomeworkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? homeworks = null,Object? load = null,}) {
  return _then(HomeHomeworkStateComplited(
homeworks: null == homeworks ? _self.homeworks : homeworks // ignore: cast_nullable_to_non_nullable
as DataHomeHomework,load: null == load ? _self.load : load // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
