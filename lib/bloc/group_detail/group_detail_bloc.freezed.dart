// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupDetailEvent()';
}


}

/// @nodoc
class $GroupDetailEventCopyWith<$Res>  {
$GroupDetailEventCopyWith(GroupDetailEvent _, $Res Function(GroupDetailEvent) __);
}


/// Adds pattern-matching-related methods to [GroupDetailEvent].
extension GroupDetailEventPatterns on GroupDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StartedInit value)?  init,TResult Function( _Started value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartedInit() when init != null:
return init(_that);case _Started() when started != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StartedInit value)  init,required TResult Function( _Started value)  started,}){
final _that = this;
switch (_that) {
case _StartedInit():
return init(_that);case _Started():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StartedInit value)?  init,TResult? Function( _Started value)?  started,}){
final _that = this;
switch (_that) {
case _StartedInit() when init != null:
return init(_that);case _Started() when started != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( int groupId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartedInit() when init != null:
return init();case _Started() when started != null:
return started(_that.groupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( int groupId)  started,}) {final _that = this;
switch (_that) {
case _StartedInit():
return init();case _Started():
return started(_that.groupId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( int groupId)?  started,}) {final _that = this;
switch (_that) {
case _StartedInit() when init != null:
return init();case _Started() when started != null:
return started(_that.groupId);case _:
  return null;

}
}

}

/// @nodoc


class _StartedInit implements GroupDetailEvent {
  const _StartedInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartedInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupDetailEvent.init()';
}


}




/// @nodoc


class _Started implements GroupDetailEvent {
  const _Started({required this.groupId});
  

 final  int groupId;

/// Create a copy of GroupDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,groupId);

@override
String toString() {
  return 'GroupDetailEvent.started(groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $GroupDetailEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 int groupId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of GroupDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupId = null,}) {
  return _then(_Started(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$GroupDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupDetailState()';
}


}

/// @nodoc
class $GroupDetailStateCopyWith<$Res>  {
$GroupDetailStateCopyWith(GroupDetailState _, $Res Function(GroupDetailState) __);
}


/// Adds pattern-matching-related methods to [GroupDetailState].
extension GroupDetailStatePatterns on GroupDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadGroupDetail value)?  loadGroupDetail,TResult Function( _ErrorGroupDetail value)?  errorGroupDetail,TResult Function( _GroupDetailCompliyed value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadGroupDetail() when loadGroupDetail != null:
return loadGroupDetail(_that);case _ErrorGroupDetail() when errorGroupDetail != null:
return errorGroupDetail(_that);case _GroupDetailCompliyed() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadGroupDetail value)  loadGroupDetail,required TResult Function( _ErrorGroupDetail value)  errorGroupDetail,required TResult Function( _GroupDetailCompliyed value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadGroupDetail():
return loadGroupDetail(_that);case _ErrorGroupDetail():
return errorGroupDetail(_that);case _GroupDetailCompliyed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadGroupDetail value)?  loadGroupDetail,TResult? Function( _ErrorGroupDetail value)?  errorGroupDetail,TResult? Function( _GroupDetailCompliyed value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadGroupDetail() when loadGroupDetail != null:
return loadGroupDetail(_that);case _ErrorGroupDetail() when errorGroupDetail != null:
return errorGroupDetail(_that);case _GroupDetailCompliyed() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadGroupDetail,TResult Function()?  errorGroupDetail,TResult Function( GroupDetail group,  MyGroupsItem groupUser)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadGroupDetail() when loadGroupDetail != null:
return loadGroupDetail();case _ErrorGroupDetail() when errorGroupDetail != null:
return errorGroupDetail();case _GroupDetailCompliyed() when complited != null:
return complited(_that.group,_that.groupUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadGroupDetail,required TResult Function()  errorGroupDetail,required TResult Function( GroupDetail group,  MyGroupsItem groupUser)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadGroupDetail():
return loadGroupDetail();case _ErrorGroupDetail():
return errorGroupDetail();case _GroupDetailCompliyed():
return complited(_that.group,_that.groupUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadGroupDetail,TResult? Function()?  errorGroupDetail,TResult? Function( GroupDetail group,  MyGroupsItem groupUser)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadGroupDetail() when loadGroupDetail != null:
return loadGroupDetail();case _ErrorGroupDetail() when errorGroupDetail != null:
return errorGroupDetail();case _GroupDetailCompliyed() when complited != null:
return complited(_that.group,_that.groupUser);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GroupDetailState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupDetailState.initial()';
}


}




/// @nodoc


class _LoadGroupDetail implements GroupDetailState {
  const _LoadGroupDetail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadGroupDetail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupDetailState.loadGroupDetail()';
}


}




/// @nodoc


class _ErrorGroupDetail implements GroupDetailState {
  const _ErrorGroupDetail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorGroupDetail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroupDetailState.errorGroupDetail()';
}


}




/// @nodoc


class _GroupDetailCompliyed implements GroupDetailState {
  const _GroupDetailCompliyed({required this.group, required this.groupUser});
  

 final  GroupDetail group;
 final  MyGroupsItem groupUser;

/// Create a copy of GroupDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupDetailCompliyedCopyWith<_GroupDetailCompliyed> get copyWith => __$GroupDetailCompliyedCopyWithImpl<_GroupDetailCompliyed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupDetailCompliyed&&(identical(other.group, group) || other.group == group)&&(identical(other.groupUser, groupUser) || other.groupUser == groupUser));
}


@override
int get hashCode => Object.hash(runtimeType,group,groupUser);

@override
String toString() {
  return 'GroupDetailState.complited(group: $group, groupUser: $groupUser)';
}


}

/// @nodoc
abstract mixin class _$GroupDetailCompliyedCopyWith<$Res> implements $GroupDetailStateCopyWith<$Res> {
  factory _$GroupDetailCompliyedCopyWith(_GroupDetailCompliyed value, $Res Function(_GroupDetailCompliyed) _then) = __$GroupDetailCompliyedCopyWithImpl;
@useResult
$Res call({
 GroupDetail group, MyGroupsItem groupUser
});


$GroupDetailCopyWith<$Res> get group;$MyGroupsItemCopyWith<$Res> get groupUser;

}
/// @nodoc
class __$GroupDetailCompliyedCopyWithImpl<$Res>
    implements _$GroupDetailCompliyedCopyWith<$Res> {
  __$GroupDetailCompliyedCopyWithImpl(this._self, this._then);

  final _GroupDetailCompliyed _self;
  final $Res Function(_GroupDetailCompliyed) _then;

/// Create a copy of GroupDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? group = null,Object? groupUser = null,}) {
  return _then(_GroupDetailCompliyed(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupDetail,groupUser: null == groupUser ? _self.groupUser : groupUser // ignore: cast_nullable_to_non_nullable
as MyGroupsItem,
  ));
}

/// Create a copy of GroupDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupDetailCopyWith<$Res> get group {
  
  return $GroupDetailCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of GroupDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyGroupsItemCopyWith<$Res> get groupUser {
  
  return $MyGroupsItemCopyWith<$Res>(_self.groupUser, (value) {
    return _then(_self.copyWith(groupUser: value));
  });
}
}

// dart format on
