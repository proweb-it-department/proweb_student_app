// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_material_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeMaterialEvent {

 int get groupId; int get limit; int get offset;
/// Create a copy of HomeMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeMaterialEventCopyWith<HomeMaterialEvent> get copyWith => _$HomeMaterialEventCopyWithImpl<HomeMaterialEvent>(this as HomeMaterialEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeMaterialEvent&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,limit,offset);

@override
String toString() {
  return 'HomeMaterialEvent(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $HomeMaterialEventCopyWith<$Res>  {
  factory $HomeMaterialEventCopyWith(HomeMaterialEvent value, $Res Function(HomeMaterialEvent) _then) = _$HomeMaterialEventCopyWithImpl;
@useResult
$Res call({
 int groupId, int limit, int offset
});




}
/// @nodoc
class _$HomeMaterialEventCopyWithImpl<$Res>
    implements $HomeMaterialEventCopyWith<$Res> {
  _$HomeMaterialEventCopyWithImpl(this._self, this._then);

  final HomeMaterialEvent _self;
  final $Res Function(HomeMaterialEvent) _then;

/// Create a copy of HomeMaterialEvent
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


/// Adds pattern-matching-related methods to [HomeMaterialEvent].
extension HomeMaterialEventPatterns on HomeMaterialEvent {
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


class _Started implements HomeMaterialEvent {
  const _Started({required this.groupId, required this.limit, required this.offset});
  

@override final  int groupId;
@override final  int limit;
@override final  int offset;

/// Create a copy of HomeMaterialEvent
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
  return 'HomeMaterialEvent.started(groupId: $groupId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $HomeMaterialEventCopyWith<$Res> {
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

/// Create a copy of HomeMaterialEvent
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
mixin _$HomeMaterialState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeMaterialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeMaterialState()';
}


}

/// @nodoc
class $HomeMaterialStateCopyWith<$Res>  {
$HomeMaterialStateCopyWith(HomeMaterialState _, $Res Function(HomeMaterialState) __);
}


/// Adds pattern-matching-related methods to [HomeMaterialState].
extension HomeMaterialStatePatterns on HomeMaterialState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeMaterialStateInitial value)?  initial,TResult Function( HomeMaterialStateComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeMaterialStateInitial() when initial != null:
return initial(_that);case HomeMaterialStateComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeMaterialStateInitial value)  initial,required TResult Function( HomeMaterialStateComplited value)  complited,}){
final _that = this;
switch (_that) {
case HomeMaterialStateInitial():
return initial(_that);case HomeMaterialStateComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeMaterialStateInitial value)?  initial,TResult? Function( HomeMaterialStateComplited value)?  complited,}){
final _that = this;
switch (_that) {
case HomeMaterialStateInitial() when initial != null:
return initial(_that);case HomeMaterialStateComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( DataHomeMaterial materials,  bool load)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeMaterialStateInitial() when initial != null:
return initial();case HomeMaterialStateComplited() when complited != null:
return complited(_that.materials,_that.load);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( DataHomeMaterial materials,  bool load)  complited,}) {final _that = this;
switch (_that) {
case HomeMaterialStateInitial():
return initial();case HomeMaterialStateComplited():
return complited(_that.materials,_that.load);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( DataHomeMaterial materials,  bool load)?  complited,}) {final _that = this;
switch (_that) {
case HomeMaterialStateInitial() when initial != null:
return initial();case HomeMaterialStateComplited() when complited != null:
return complited(_that.materials,_that.load);case _:
  return null;

}
}

}

/// @nodoc


class HomeMaterialStateInitial implements HomeMaterialState {
  const HomeMaterialStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeMaterialStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeMaterialState.initial()';
}


}




/// @nodoc


class HomeMaterialStateComplited implements HomeMaterialState {
  const HomeMaterialStateComplited({required this.materials, required this.load});
  

 final  DataHomeMaterial materials;
 final  bool load;

/// Create a copy of HomeMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeMaterialStateComplitedCopyWith<HomeMaterialStateComplited> get copyWith => _$HomeMaterialStateComplitedCopyWithImpl<HomeMaterialStateComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeMaterialStateComplited&&(identical(other.materials, materials) || other.materials == materials)&&(identical(other.load, load) || other.load == load));
}


@override
int get hashCode => Object.hash(runtimeType,materials,load);

@override
String toString() {
  return 'HomeMaterialState.complited(materials: $materials, load: $load)';
}


}

/// @nodoc
abstract mixin class $HomeMaterialStateComplitedCopyWith<$Res> implements $HomeMaterialStateCopyWith<$Res> {
  factory $HomeMaterialStateComplitedCopyWith(HomeMaterialStateComplited value, $Res Function(HomeMaterialStateComplited) _then) = _$HomeMaterialStateComplitedCopyWithImpl;
@useResult
$Res call({
 DataHomeMaterial materials, bool load
});




}
/// @nodoc
class _$HomeMaterialStateComplitedCopyWithImpl<$Res>
    implements $HomeMaterialStateComplitedCopyWith<$Res> {
  _$HomeMaterialStateComplitedCopyWithImpl(this._self, this._then);

  final HomeMaterialStateComplited _self;
  final $Res Function(HomeMaterialStateComplited) _then;

/// Create a copy of HomeMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? materials = null,Object? load = null,}) {
  return _then(HomeMaterialStateComplited(
materials: null == materials ? _self.materials : materials // ignore: cast_nullable_to_non_nullable
as DataHomeMaterial,load: null == load ? _self.load : load // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
