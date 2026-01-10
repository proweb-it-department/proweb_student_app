// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_telegram_connected_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyTelegramConnectedEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyTelegramConnectedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyTelegramConnectedEvent()';
}


}

/// @nodoc
class $MyTelegramConnectedEventCopyWith<$Res>  {
$MyTelegramConnectedEventCopyWith(MyTelegramConnectedEvent _, $Res Function(MyTelegramConnectedEvent) __);
}


/// Adds pattern-matching-related methods to [MyTelegramConnectedEvent].
extension MyTelegramConnectedEventPatterns on MyTelegramConnectedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _DeletedTg value)?  delete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DeletedTg() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _DeletedTg value)  delete,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _DeletedTg():
return delete(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _DeletedTg value)?  delete,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DeletedTg() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int id)?  delete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DeletedTg() when delete != null:
return delete(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int id)  delete,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _DeletedTg():
return delete(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int id)?  delete,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DeletedTg() when delete != null:
return delete(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MyTelegramConnectedEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyTelegramConnectedEvent.started()';
}


}




/// @nodoc


class _DeletedTg implements MyTelegramConnectedEvent {
  const _DeletedTg({required this.id});
  

 final  int id;

/// Create a copy of MyTelegramConnectedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletedTgCopyWith<_DeletedTg> get copyWith => __$DeletedTgCopyWithImpl<_DeletedTg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletedTg&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MyTelegramConnectedEvent.delete(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeletedTgCopyWith<$Res> implements $MyTelegramConnectedEventCopyWith<$Res> {
  factory _$DeletedTgCopyWith(_DeletedTg value, $Res Function(_DeletedTg) _then) = __$DeletedTgCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeletedTgCopyWithImpl<$Res>
    implements _$DeletedTgCopyWith<$Res> {
  __$DeletedTgCopyWithImpl(this._self, this._then);

  final _DeletedTg _self;
  final $Res Function(_DeletedTg) _then;

/// Create a copy of MyTelegramConnectedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeletedTg(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MyTelegramConnectedState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyTelegramConnectedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyTelegramConnectedState()';
}


}

/// @nodoc
class $MyTelegramConnectedStateCopyWith<$Res>  {
$MyTelegramConnectedStateCopyWith(MyTelegramConnectedState _, $Res Function(MyTelegramConnectedState) __);
}


/// Adds pattern-matching-related methods to [MyTelegramConnectedState].
extension MyTelegramConnectedStatePatterns on MyTelegramConnectedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MyTelegramConnectedInitial value)?  initial,TResult Function( MyTelegramConnectedLoad value)?  load,TResult Function( MyTelegramConnectedComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MyTelegramConnectedInitial() when initial != null:
return initial(_that);case MyTelegramConnectedLoad() when load != null:
return load(_that);case MyTelegramConnectedComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MyTelegramConnectedInitial value)  initial,required TResult Function( MyTelegramConnectedLoad value)  load,required TResult Function( MyTelegramConnectedComplited value)  complited,}){
final _that = this;
switch (_that) {
case MyTelegramConnectedInitial():
return initial(_that);case MyTelegramConnectedLoad():
return load(_that);case MyTelegramConnectedComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MyTelegramConnectedInitial value)?  initial,TResult? Function( MyTelegramConnectedLoad value)?  load,TResult? Function( MyTelegramConnectedComplited value)?  complited,}){
final _that = this;
switch (_that) {
case MyTelegramConnectedInitial() when initial != null:
return initial(_that);case MyTelegramConnectedLoad() when load != null:
return load(_that);case MyTelegramConnectedComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function( List<TelegramUser> tgUserList)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MyTelegramConnectedInitial() when initial != null:
return initial();case MyTelegramConnectedLoad() when load != null:
return load();case MyTelegramConnectedComplited() when complited != null:
return complited(_that.tgUserList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function( List<TelegramUser> tgUserList)  complited,}) {final _that = this;
switch (_that) {
case MyTelegramConnectedInitial():
return initial();case MyTelegramConnectedLoad():
return load();case MyTelegramConnectedComplited():
return complited(_that.tgUserList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function( List<TelegramUser> tgUserList)?  complited,}) {final _that = this;
switch (_that) {
case MyTelegramConnectedInitial() when initial != null:
return initial();case MyTelegramConnectedLoad() when load != null:
return load();case MyTelegramConnectedComplited() when complited != null:
return complited(_that.tgUserList);case _:
  return null;

}
}

}

/// @nodoc


class MyTelegramConnectedInitial implements MyTelegramConnectedState {
  const MyTelegramConnectedInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyTelegramConnectedInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyTelegramConnectedState.initial()';
}


}




/// @nodoc


class MyTelegramConnectedLoad implements MyTelegramConnectedState {
  const MyTelegramConnectedLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyTelegramConnectedLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyTelegramConnectedState.load()';
}


}




/// @nodoc


class MyTelegramConnectedComplited implements MyTelegramConnectedState {
  const MyTelegramConnectedComplited({required final  List<TelegramUser> tgUserList}): _tgUserList = tgUserList;
  

 final  List<TelegramUser> _tgUserList;
 List<TelegramUser> get tgUserList {
  if (_tgUserList is EqualUnmodifiableListView) return _tgUserList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tgUserList);
}


/// Create a copy of MyTelegramConnectedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyTelegramConnectedComplitedCopyWith<MyTelegramConnectedComplited> get copyWith => _$MyTelegramConnectedComplitedCopyWithImpl<MyTelegramConnectedComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyTelegramConnectedComplited&&const DeepCollectionEquality().equals(other._tgUserList, _tgUserList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tgUserList));

@override
String toString() {
  return 'MyTelegramConnectedState.complited(tgUserList: $tgUserList)';
}


}

/// @nodoc
abstract mixin class $MyTelegramConnectedComplitedCopyWith<$Res> implements $MyTelegramConnectedStateCopyWith<$Res> {
  factory $MyTelegramConnectedComplitedCopyWith(MyTelegramConnectedComplited value, $Res Function(MyTelegramConnectedComplited) _then) = _$MyTelegramConnectedComplitedCopyWithImpl;
@useResult
$Res call({
 List<TelegramUser> tgUserList
});




}
/// @nodoc
class _$MyTelegramConnectedComplitedCopyWithImpl<$Res>
    implements $MyTelegramConnectedComplitedCopyWith<$Res> {
  _$MyTelegramConnectedComplitedCopyWithImpl(this._self, this._then);

  final MyTelegramConnectedComplited _self;
  final $Res Function(MyTelegramConnectedComplited) _then;

/// Create a copy of MyTelegramConnectedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tgUserList = null,}) {
  return _then(MyTelegramConnectedComplited(
tgUserList: null == tgUserList ? _self._tgUserList : tgUserList // ignore: cast_nullable_to_non_nullable
as List<TelegramUser>,
  ));
}


}

// dart format on
