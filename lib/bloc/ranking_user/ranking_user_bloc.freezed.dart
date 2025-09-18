// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RankingUserEvent {

 int get userId;
/// Create a copy of RankingUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RankingUserEventCopyWith<RankingUserEvent> get copyWith => _$RankingUserEventCopyWithImpl<RankingUserEvent>(this as RankingUserEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RankingUserEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'RankingUserEvent(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $RankingUserEventCopyWith<$Res>  {
  factory $RankingUserEventCopyWith(RankingUserEvent value, $Res Function(RankingUserEvent) _then) = _$RankingUserEventCopyWithImpl;
@useResult
$Res call({
 int userId
});




}
/// @nodoc
class _$RankingUserEventCopyWithImpl<$Res>
    implements $RankingUserEventCopyWith<$Res> {
  _$RankingUserEventCopyWithImpl(this._self, this._then);

  final RankingUserEvent _self;
  final $Res Function(RankingUserEvent) _then;

/// Create a copy of RankingUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RankingUserEvent].
extension RankingUserEventPatterns on RankingUserEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int userId)?  started,required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int userId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int userId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RankingUserEvent {
  const _Started({required this.userId});
  

@override final  int userId;

/// Create a copy of RankingUserEvent
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
  return 'RankingUserEvent.started(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $RankingUserEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int userId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of RankingUserEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_Started(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RankingUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RankingUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RankingUserState()';
}


}

/// @nodoc
class $RankingUserStateCopyWith<$Res>  {
$RankingUserStateCopyWith(RankingUserState _, $Res Function(RankingUserState) __);
}


/// Adds pattern-matching-related methods to [RankingUserState].
extension RankingUserStatePatterns on RankingUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _RankingUserComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _RankingUserComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _RankingUserComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _RankingUserComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _RankingUserComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _RankingUserComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( RankingUser ranking,  RankingSkills skills,  int userId)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _RankingUserComplited() when complited != null:
return complited(_that.ranking,_that.skills,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( RankingUser ranking,  RankingSkills skills,  int userId)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _RankingUserComplited():
return complited(_that.ranking,_that.skills,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( RankingUser ranking,  RankingSkills skills,  int userId)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _RankingUserComplited() when complited != null:
return complited(_that.ranking,_that.skills,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RankingUserState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RankingUserState.initial()';
}


}




/// @nodoc


class _RankingUserComplited implements RankingUserState {
  const _RankingUserComplited({required this.ranking, required this.skills, required this.userId});
  

 final  RankingUser ranking;
 final  RankingSkills skills;
 final  int userId;

/// Create a copy of RankingUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RankingUserComplitedCopyWith<_RankingUserComplited> get copyWith => __$RankingUserComplitedCopyWithImpl<_RankingUserComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RankingUserComplited&&(identical(other.ranking, ranking) || other.ranking == ranking)&&(identical(other.skills, skills) || other.skills == skills)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,ranking,skills,userId);

@override
String toString() {
  return 'RankingUserState.complited(ranking: $ranking, skills: $skills, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$RankingUserComplitedCopyWith<$Res> implements $RankingUserStateCopyWith<$Res> {
  factory _$RankingUserComplitedCopyWith(_RankingUserComplited value, $Res Function(_RankingUserComplited) _then) = __$RankingUserComplitedCopyWithImpl;
@useResult
$Res call({
 RankingUser ranking, RankingSkills skills, int userId
});




}
/// @nodoc
class __$RankingUserComplitedCopyWithImpl<$Res>
    implements _$RankingUserComplitedCopyWith<$Res> {
  __$RankingUserComplitedCopyWithImpl(this._self, this._then);

  final _RankingUserComplited _self;
  final $Res Function(_RankingUserComplited) _then;

/// Create a copy of RankingUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ranking = null,Object? skills = null,Object? userId = null,}) {
  return _then(_RankingUserComplited(
ranking: null == ranking ? _self.ranking : ranking // ignore: cast_nullable_to_non_nullable
as RankingUser,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as RankingSkills,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
