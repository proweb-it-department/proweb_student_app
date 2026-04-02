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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CupsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CupsEvent()';
}


}

/// @nodoc
class $CupsEventCopyWith<$Res>  {
$CupsEventCopyWith(CupsEvent _, $Res Function(CupsEvent) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Achievements value)?  cups,TResult Function( _AchievementsReceiveReward value)?  achievementReceiveReward,TResult Function( _CupReceiveReward value)?  cupReceiveReward,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Achievements() when cups != null:
return cups(_that);case _AchievementsReceiveReward() when achievementReceiveReward != null:
return achievementReceiveReward(_that);case _CupReceiveReward() when cupReceiveReward != null:
return cupReceiveReward(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Achievements value)  cups,required TResult Function( _AchievementsReceiveReward value)  achievementReceiveReward,required TResult Function( _CupReceiveReward value)  cupReceiveReward,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Achievements():
return cups(_that);case _AchievementsReceiveReward():
return achievementReceiveReward(_that);case _CupReceiveReward():
return cupReceiveReward(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Achievements value)?  cups,TResult? Function( _AchievementsReceiveReward value)?  achievementReceiveReward,TResult? Function( _CupReceiveReward value)?  cupReceiveReward,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Achievements() when cups != null:
return cups(_that);case _AchievementsReceiveReward() when achievementReceiveReward != null:
return achievementReceiveReward(_that);case _CupReceiveReward() when cupReceiveReward != null:
return cupReceiveReward(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? userId)?  started,TResult Function( int? cupId)?  cups,TResult Function( int achievementId)?  achievementReceiveReward,TResult Function( int cupId)?  cupReceiveReward,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.userId);case _Achievements() when cups != null:
return cups(_that.cupId);case _AchievementsReceiveReward() when achievementReceiveReward != null:
return achievementReceiveReward(_that.achievementId);case _CupReceiveReward() when cupReceiveReward != null:
return cupReceiveReward(_that.cupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? userId)  started,required TResult Function( int? cupId)  cups,required TResult Function( int achievementId)  achievementReceiveReward,required TResult Function( int cupId)  cupReceiveReward,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.userId);case _Achievements():
return cups(_that.cupId);case _AchievementsReceiveReward():
return achievementReceiveReward(_that.achievementId);case _CupReceiveReward():
return cupReceiveReward(_that.cupId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? userId)?  started,TResult? Function( int? cupId)?  cups,TResult? Function( int achievementId)?  achievementReceiveReward,TResult? Function( int cupId)?  cupReceiveReward,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.userId);case _Achievements() when cups != null:
return cups(_that.cupId);case _AchievementsReceiveReward() when achievementReceiveReward != null:
return achievementReceiveReward(_that.achievementId);case _CupReceiveReward() when cupReceiveReward != null:
return cupReceiveReward(_that.cupId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CupsEvent {
  const _Started({this.userId});
  

 final  int? userId;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
@useResult
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
@pragma('vm:prefer-inline') $Res call({Object? userId = freezed,}) {
  return _then(_Started(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _Achievements implements CupsEvent {
  const _Achievements({this.cupId});
  

 final  int? cupId;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementsCopyWith<_Achievements> get copyWith => __$AchievementsCopyWithImpl<_Achievements>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Achievements&&(identical(other.cupId, cupId) || other.cupId == cupId));
}


@override
int get hashCode => Object.hash(runtimeType,cupId);

@override
String toString() {
  return 'CupsEvent.cups(cupId: $cupId)';
}


}

/// @nodoc
abstract mixin class _$AchievementsCopyWith<$Res> implements $CupsEventCopyWith<$Res> {
  factory _$AchievementsCopyWith(_Achievements value, $Res Function(_Achievements) _then) = __$AchievementsCopyWithImpl;
@useResult
$Res call({
 int? cupId
});




}
/// @nodoc
class __$AchievementsCopyWithImpl<$Res>
    implements _$AchievementsCopyWith<$Res> {
  __$AchievementsCopyWithImpl(this._self, this._then);

  final _Achievements _self;
  final $Res Function(_Achievements) _then;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cupId = freezed,}) {
  return _then(_Achievements(
cupId: freezed == cupId ? _self.cupId : cupId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _AchievementsReceiveReward implements CupsEvent {
  const _AchievementsReceiveReward({required this.achievementId});
  

 final  int achievementId;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementsReceiveRewardCopyWith<_AchievementsReceiveReward> get copyWith => __$AchievementsReceiveRewardCopyWithImpl<_AchievementsReceiveReward>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AchievementsReceiveReward&&(identical(other.achievementId, achievementId) || other.achievementId == achievementId));
}


@override
int get hashCode => Object.hash(runtimeType,achievementId);

@override
String toString() {
  return 'CupsEvent.achievementReceiveReward(achievementId: $achievementId)';
}


}

/// @nodoc
abstract mixin class _$AchievementsReceiveRewardCopyWith<$Res> implements $CupsEventCopyWith<$Res> {
  factory _$AchievementsReceiveRewardCopyWith(_AchievementsReceiveReward value, $Res Function(_AchievementsReceiveReward) _then) = __$AchievementsReceiveRewardCopyWithImpl;
@useResult
$Res call({
 int achievementId
});




}
/// @nodoc
class __$AchievementsReceiveRewardCopyWithImpl<$Res>
    implements _$AchievementsReceiveRewardCopyWith<$Res> {
  __$AchievementsReceiveRewardCopyWithImpl(this._self, this._then);

  final _AchievementsReceiveReward _self;
  final $Res Function(_AchievementsReceiveReward) _then;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? achievementId = null,}) {
  return _then(_AchievementsReceiveReward(
achievementId: null == achievementId ? _self.achievementId : achievementId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CupReceiveReward implements CupsEvent {
  const _CupReceiveReward({required this.cupId});
  

 final  int cupId;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CupReceiveRewardCopyWith<_CupReceiveReward> get copyWith => __$CupReceiveRewardCopyWithImpl<_CupReceiveReward>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CupReceiveReward&&(identical(other.cupId, cupId) || other.cupId == cupId));
}


@override
int get hashCode => Object.hash(runtimeType,cupId);

@override
String toString() {
  return 'CupsEvent.cupReceiveReward(cupId: $cupId)';
}


}

/// @nodoc
abstract mixin class _$CupReceiveRewardCopyWith<$Res> implements $CupsEventCopyWith<$Res> {
  factory _$CupReceiveRewardCopyWith(_CupReceiveReward value, $Res Function(_CupReceiveReward) _then) = __$CupReceiveRewardCopyWithImpl;
@useResult
$Res call({
 int cupId
});




}
/// @nodoc
class __$CupReceiveRewardCopyWithImpl<$Res>
    implements _$CupReceiveRewardCopyWith<$Res> {
  __$CupReceiveRewardCopyWithImpl(this._self, this._then);

  final _CupReceiveReward _self;
  final $Res Function(_CupReceiveReward) _then;

/// Create a copy of CupsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cupId = null,}) {
  return _then(_CupReceiveReward(
cupId: null == cupId ? _self.cupId : cupId // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( ResponseLazeList<Cups> cups,  ResponseLazeList<AchievementsCup>? achievements,  bool? achievementsLoad)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CupsStateLoad() when load != null:
return load();case CupsStateComplited() when complited != null:
return complited(_that.cups,_that.achievements,_that.achievementsLoad);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( ResponseLazeList<Cups> cups,  ResponseLazeList<AchievementsCup>? achievements,  bool? achievementsLoad)  complited,}) {final _that = this;
switch (_that) {
case CupsStateLoad():
return load();case CupsStateComplited():
return complited(_that.cups,_that.achievements,_that.achievementsLoad);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( ResponseLazeList<Cups> cups,  ResponseLazeList<AchievementsCup>? achievements,  bool? achievementsLoad)?  complited,}) {final _that = this;
switch (_that) {
case CupsStateLoad() when load != null:
return load();case CupsStateComplited() when complited != null:
return complited(_that.cups,_that.achievements,_that.achievementsLoad);case _:
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
  const CupsStateComplited({required this.cups, this.achievements, this.achievementsLoad});
  

 final  ResponseLazeList<Cups> cups;
 final  ResponseLazeList<AchievementsCup>? achievements;
 final  bool? achievementsLoad;

/// Create a copy of CupsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CupsStateComplitedCopyWith<CupsStateComplited> get copyWith => _$CupsStateComplitedCopyWithImpl<CupsStateComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CupsStateComplited&&(identical(other.cups, cups) || other.cups == cups)&&(identical(other.achievements, achievements) || other.achievements == achievements)&&(identical(other.achievementsLoad, achievementsLoad) || other.achievementsLoad == achievementsLoad));
}


@override
int get hashCode => Object.hash(runtimeType,cups,achievements,achievementsLoad);

@override
String toString() {
  return 'CupsState.complited(cups: $cups, achievements: $achievements, achievementsLoad: $achievementsLoad)';
}


}

/// @nodoc
abstract mixin class $CupsStateComplitedCopyWith<$Res> implements $CupsStateCopyWith<$Res> {
  factory $CupsStateComplitedCopyWith(CupsStateComplited value, $Res Function(CupsStateComplited) _then) = _$CupsStateComplitedCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<Cups> cups, ResponseLazeList<AchievementsCup>? achievements, bool? achievementsLoad
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
@pragma('vm:prefer-inline') $Res call({Object? cups = null,Object? achievements = freezed,Object? achievementsLoad = freezed,}) {
  return _then(CupsStateComplited(
cups: null == cups ? _self.cups : cups // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<Cups>,achievements: freezed == achievements ? _self.achievements : achievements // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<AchievementsCup>?,achievementsLoad: freezed == achievementsLoad ? _self.achievementsLoad : achievementsLoad // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
