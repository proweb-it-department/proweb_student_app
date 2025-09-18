// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RankingListEvent {

 int get offset; int get limit; int? get courseId; int? get groupId;
/// Create a copy of RankingListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RankingListEventCopyWith<RankingListEvent> get copyWith => _$RankingListEventCopyWithImpl<RankingListEvent>(this as RankingListEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RankingListEvent&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit,courseId,groupId);

@override
String toString() {
  return 'RankingListEvent(offset: $offset, limit: $limit, courseId: $courseId, groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class $RankingListEventCopyWith<$Res>  {
  factory $RankingListEventCopyWith(RankingListEvent value, $Res Function(RankingListEvent) _then) = _$RankingListEventCopyWithImpl;
@useResult
$Res call({
 int offset, int limit, int? courseId, int? groupId
});




}
/// @nodoc
class _$RankingListEventCopyWithImpl<$Res>
    implements $RankingListEventCopyWith<$Res> {
  _$RankingListEventCopyWithImpl(this._self, this._then);

  final RankingListEvent _self;
  final $Res Function(RankingListEvent) _then;

/// Create a copy of RankingListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,Object? limit = null,Object? courseId = freezed,Object? groupId = freezed,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RankingListEvent].
extension RankingListEventPatterns on RankingListEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offset,  int limit,  int? courseId,  int? groupId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset,_that.limit,_that.courseId,_that.groupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offset,  int limit,  int? courseId,  int? groupId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.offset,_that.limit,_that.courseId,_that.groupId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offset,  int limit,  int? courseId,  int? groupId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset,_that.limit,_that.courseId,_that.groupId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RankingListEvent {
  const _Started({required this.offset, required this.limit, this.courseId, this.groupId});
  

@override final  int offset;
@override final  int limit;
@override final  int? courseId;
@override final  int? groupId;

/// Create a copy of RankingListEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit,courseId,groupId);

@override
String toString() {
  return 'RankingListEvent.started(offset: $offset, limit: $limit, courseId: $courseId, groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $RankingListEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int offset, int limit, int? courseId, int? groupId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of RankingListEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? limit = null,Object? courseId = freezed,Object? groupId = freezed,}) {
  return _then(_Started(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$RankingListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RankingListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RankingListState()';
}


}

/// @nodoc
class $RankingListStateCopyWith<$Res>  {
$RankingListStateCopyWith(RankingListState _, $Res Function(RankingListState) __);
}


/// Adds pattern-matching-related methods to [RankingListState].
extension RankingListStatePatterns on RankingListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _RankingListComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _RankingListComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _RankingListComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _RankingListComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _RankingListComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _RankingListComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<UserTotalPosition> winners,  ResponseLazeList<UserTotalPosition>? userList,  UserTotalPosition? myRanking,  LoadState load,  int offset)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _RankingListComplited() when complited != null:
return complited(_that.winners,_that.userList,_that.myRanking,_that.load,_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<UserTotalPosition> winners,  ResponseLazeList<UserTotalPosition>? userList,  UserTotalPosition? myRanking,  LoadState load,  int offset)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _RankingListComplited():
return complited(_that.winners,_that.userList,_that.myRanking,_that.load,_that.offset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<UserTotalPosition> winners,  ResponseLazeList<UserTotalPosition>? userList,  UserTotalPosition? myRanking,  LoadState load,  int offset)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _RankingListComplited() when complited != null:
return complited(_that.winners,_that.userList,_that.myRanking,_that.load,_that.offset);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RankingListState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RankingListState.initial()';
}


}




/// @nodoc


class _RankingListComplited implements RankingListState {
  const _RankingListComplited({required final  List<UserTotalPosition> winners, this.userList, this.myRanking, required this.load, required this.offset}): _winners = winners;
  

 final  List<UserTotalPosition> _winners;
 List<UserTotalPosition> get winners {
  if (_winners is EqualUnmodifiableListView) return _winners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_winners);
}

 final  ResponseLazeList<UserTotalPosition>? userList;
 final  UserTotalPosition? myRanking;
 final  LoadState load;
 final  int offset;

/// Create a copy of RankingListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RankingListComplitedCopyWith<_RankingListComplited> get copyWith => __$RankingListComplitedCopyWithImpl<_RankingListComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RankingListComplited&&const DeepCollectionEquality().equals(other._winners, _winners)&&(identical(other.userList, userList) || other.userList == userList)&&(identical(other.myRanking, myRanking) || other.myRanking == myRanking)&&(identical(other.load, load) || other.load == load)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_winners),userList,myRanking,load,offset);

@override
String toString() {
  return 'RankingListState.complited(winners: $winners, userList: $userList, myRanking: $myRanking, load: $load, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$RankingListComplitedCopyWith<$Res> implements $RankingListStateCopyWith<$Res> {
  factory _$RankingListComplitedCopyWith(_RankingListComplited value, $Res Function(_RankingListComplited) _then) = __$RankingListComplitedCopyWithImpl;
@useResult
$Res call({
 List<UserTotalPosition> winners, ResponseLazeList<UserTotalPosition>? userList, UserTotalPosition? myRanking, LoadState load, int offset
});


$UserTotalPositionCopyWith<$Res>? get myRanking;

}
/// @nodoc
class __$RankingListComplitedCopyWithImpl<$Res>
    implements _$RankingListComplitedCopyWith<$Res> {
  __$RankingListComplitedCopyWithImpl(this._self, this._then);

  final _RankingListComplited _self;
  final $Res Function(_RankingListComplited) _then;

/// Create a copy of RankingListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? winners = null,Object? userList = freezed,Object? myRanking = freezed,Object? load = null,Object? offset = null,}) {
  return _then(_RankingListComplited(
winners: null == winners ? _self._winners : winners // ignore: cast_nullable_to_non_nullable
as List<UserTotalPosition>,userList: freezed == userList ? _self.userList : userList // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<UserTotalPosition>?,myRanking: freezed == myRanking ? _self.myRanking : myRanking // ignore: cast_nullable_to_non_nullable
as UserTotalPosition?,load: null == load ? _self.load : load // ignore: cast_nullable_to_non_nullable
as LoadState,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of RankingListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserTotalPositionCopyWith<$Res>? get myRanking {
    if (_self.myRanking == null) {
    return null;
  }

  return $UserTotalPositionCopyWith<$Res>(_self.myRanking!, (value) {
    return _then(_self.copyWith(myRanking: value));
  });
}
}

// dart format on
