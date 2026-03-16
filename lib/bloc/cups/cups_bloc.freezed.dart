// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CupsEvent {

 int? get userId;
/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CupsEventCopyWith<CupsEvent> get copyWith => _$CupsEventCopyWithImpl<CupsEvent>(this as CupsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CupsEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'CupsEvent(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CupsEventCopyWith<$Res>  {
  factory $CupsEventCopyWith(CupsEvent value, $Res Function(CupsEvent) _then) = _$CupsEventCopyWithImpl;
@useResult
$Res call({
 int? userId
});




}
/// @nodoc
class _$CupsEventCopyWithImpl<$Res>
    implements $CupsEventCopyWith<$Res> {
  _$CupsEventCopyWithImpl(this._self, this._then);

  final CupsEvent _self;
  final $Res Function(CupsEvent) _then;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CupsEvent].
extension CupsEventPatterns on CupsEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? userId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? userId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.userId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? userId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CupsEvent {
  const _Started({this.userId});
  

@override final  int? userId;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'CupsEvent.started(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $CupsEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int? userId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,}) {
  return _then(_Started(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$CupsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CupsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CupsState()';
}


}

/// @nodoc
class $CupsStateCopyWith<$Res>  {
$CupsStateCopyWith(CupsState _, $Res Function(CupsState) __);
}


/// Adds pattern-matching-related methods to [CupsState].
extension CupsStatePatterns on CupsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CupsStateLoad value)?  load,TResult Function( CupsStateComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CupsStateLoad() when load != null:
return load(_that);case CupsStateComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CupsStateLoad value)  load,required TResult Function( CupsStateComplited value)  complited,}){
final _that = this;
switch (_that) {
case CupsStateLoad():
return load(_that);case CupsStateComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CupsStateLoad value)?  load,TResult? Function( CupsStateComplited value)?  complited,}){
final _that = this;
switch (_that) {
case CupsStateLoad() when load != null:
return load(_that);case CupsStateComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( ResponseLazeList<Cups> cups)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CupsStateLoad() when load != null:
return load();case CupsStateComplited() when complited != null:
return complited(_that.cups);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( ResponseLazeList<Cups> cups)  complited,}) {final _that = this;
switch (_that) {
case CupsStateLoad():
return load();case CupsStateComplited():
return complited(_that.cups);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( ResponseLazeList<Cups> cups)?  complited,}) {final _that = this;
switch (_that) {
case CupsStateLoad() when load != null:
return load();case CupsStateComplited() when complited != null:
return complited(_that.cups);case _:
  return null;

}
}

}

/// @nodoc


class CupsStateLoad implements CupsState {
  const CupsStateLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CupsStateLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CupsState.load()';
}


}




/// @nodoc


class CupsStateComplited implements CupsState {
  const CupsStateComplited({required this.cups});
  

 final  ResponseLazeList<Cups> cups;

/// Create a copy of CupsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CupsStateComplitedCopyWith<CupsStateComplited> get copyWith => _$CupsStateComplitedCopyWithImpl<CupsStateComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CupsStateComplited&&(identical(other.cups, cups) || other.cups == cups));
}


@override
int get hashCode => Object.hash(runtimeType,cups);

@override
String toString() {
  return 'CupsState.complited(cups: $cups)';
}


}

/// @nodoc
abstract mixin class $CupsStateComplitedCopyWith<$Res> implements $CupsStateCopyWith<$Res> {
  factory $CupsStateComplitedCopyWith(CupsStateComplited value, $Res Function(CupsStateComplited) _then) = _$CupsStateComplitedCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<Cups> cups
});




}
/// @nodoc
class _$CupsStateComplitedCopyWithImpl<$Res>
    implements $CupsStateComplitedCopyWith<$Res> {
  _$CupsStateComplitedCopyWithImpl(this._self, this._then);

  final CupsStateComplited _self;
  final $Res Function(CupsStateComplited) _then;

/// Create a copy of CupsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cups = null,}) {
  return _then(CupsStateComplited(
cups: null == cups ? _self.cups : cups // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<Cups>,
  ));
}


}

// dart format on
