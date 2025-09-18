// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_relation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaterialRelationEvent {

 int get id;
/// Create a copy of MaterialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialRelationEventCopyWith<MaterialRelationEvent> get copyWith => _$MaterialRelationEventCopyWithImpl<MaterialRelationEvent>(this as MaterialRelationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialRelationEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MaterialRelationEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $MaterialRelationEventCopyWith<$Res>  {
  factory $MaterialRelationEventCopyWith(MaterialRelationEvent value, $Res Function(MaterialRelationEvent) _then) = _$MaterialRelationEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$MaterialRelationEventCopyWithImpl<$Res>
    implements $MaterialRelationEventCopyWith<$Res> {
  _$MaterialRelationEventCopyWithImpl(this._self, this._then);

  final MaterialRelationEvent _self;
  final $Res Function(MaterialRelationEvent) _then;

/// Create a copy of MaterialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MaterialRelationEvent].
extension MaterialRelationEventPatterns on MaterialRelationEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MaterialRelationEvent {
  const _Started({required this.id});
  

@override final  int id;

/// Create a copy of MaterialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MaterialRelationEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $MaterialRelationEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of MaterialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MaterialRelationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialRelationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaterialRelationState()';
}


}

/// @nodoc
class $MaterialRelationStateCopyWith<$Res>  {
$MaterialRelationStateCopyWith(MaterialRelationState _, $Res Function(MaterialRelationState) __);
}


/// Adds pattern-matching-related methods to [MaterialRelationState].
extension MaterialRelationStatePatterns on MaterialRelationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _MaterialRelationLoad value)?  load,TResult Function( _MaterialRelationError value)?  error,TResult Function( _MaterialRelationComplited value)?  complite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _MaterialRelationLoad() when load != null:
return load(_that);case _MaterialRelationError() when error != null:
return error(_that);case _MaterialRelationComplited() when complite != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _MaterialRelationLoad value)  load,required TResult Function( _MaterialRelationError value)  error,required TResult Function( _MaterialRelationComplited value)  complite,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _MaterialRelationLoad():
return load(_that);case _MaterialRelationError():
return error(_that);case _MaterialRelationComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _MaterialRelationLoad value)?  load,TResult? Function( _MaterialRelationError value)?  error,TResult? Function( _MaterialRelationComplited value)?  complite,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _MaterialRelationLoad() when load != null:
return load(_that);case _MaterialRelationError() when error != null:
return error(_that);case _MaterialRelationComplited() when complite != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( MaterialStudentRelation relation)?  complite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _MaterialRelationLoad() when load != null:
return load();case _MaterialRelationError() when error != null:
return error();case _MaterialRelationComplited() when complite != null:
return complite(_that.relation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( MaterialStudentRelation relation)  complite,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _MaterialRelationLoad():
return load();case _MaterialRelationError():
return error();case _MaterialRelationComplited():
return complite(_that.relation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( MaterialStudentRelation relation)?  complite,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _MaterialRelationLoad() when load != null:
return load();case _MaterialRelationError() when error != null:
return error();case _MaterialRelationComplited() when complite != null:
return complite(_that.relation);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MaterialRelationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaterialRelationState.initial()';
}


}




/// @nodoc


class _MaterialRelationLoad implements MaterialRelationState {
  const _MaterialRelationLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialRelationLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaterialRelationState.load()';
}


}




/// @nodoc


class _MaterialRelationError implements MaterialRelationState {
  const _MaterialRelationError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialRelationError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaterialRelationState.error()';
}


}




/// @nodoc


class _MaterialRelationComplited implements MaterialRelationState {
  const _MaterialRelationComplited({required this.relation});
  

 final  MaterialStudentRelation relation;

/// Create a copy of MaterialRelationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialRelationComplitedCopyWith<_MaterialRelationComplited> get copyWith => __$MaterialRelationComplitedCopyWithImpl<_MaterialRelationComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialRelationComplited&&(identical(other.relation, relation) || other.relation == relation));
}


@override
int get hashCode => Object.hash(runtimeType,relation);

@override
String toString() {
  return 'MaterialRelationState.complite(relation: $relation)';
}


}

/// @nodoc
abstract mixin class _$MaterialRelationComplitedCopyWith<$Res> implements $MaterialRelationStateCopyWith<$Res> {
  factory _$MaterialRelationComplitedCopyWith(_MaterialRelationComplited value, $Res Function(_MaterialRelationComplited) _then) = __$MaterialRelationComplitedCopyWithImpl;
@useResult
$Res call({
 MaterialStudentRelation relation
});


$MaterialStudentRelationCopyWith<$Res> get relation;

}
/// @nodoc
class __$MaterialRelationComplitedCopyWithImpl<$Res>
    implements _$MaterialRelationComplitedCopyWith<$Res> {
  __$MaterialRelationComplitedCopyWithImpl(this._self, this._then);

  final _MaterialRelationComplited _self;
  final $Res Function(_MaterialRelationComplited) _then;

/// Create a copy of MaterialRelationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? relation = null,}) {
  return _then(_MaterialRelationComplited(
relation: null == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as MaterialStudentRelation,
  ));
}

/// Create a copy of MaterialRelationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialStudentRelationCopyWith<$Res> get relation {
  
  return $MaterialStudentRelationCopyWith<$Res>(_self.relation, (value) {
    return _then(_self.copyWith(relation: value));
  });
}
}

// dart format on
