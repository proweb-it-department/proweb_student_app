// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_statistic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyStatisticEvent {

 int? get groupId;
/// Create a copy of MyStatisticEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyStatisticEventCopyWith<MyStatisticEvent> get copyWith => _$MyStatisticEventCopyWithImpl<MyStatisticEvent>(this as MyStatisticEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyStatisticEvent&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,groupId);

@override
String toString() {
  return 'MyStatisticEvent(groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class $MyStatisticEventCopyWith<$Res>  {
  factory $MyStatisticEventCopyWith(MyStatisticEvent value, $Res Function(MyStatisticEvent) _then) = _$MyStatisticEventCopyWithImpl;
@useResult
$Res call({
 int? groupId
});




}
/// @nodoc
class _$MyStatisticEventCopyWithImpl<$Res>
    implements $MyStatisticEventCopyWith<$Res> {
  _$MyStatisticEventCopyWithImpl(this._self, this._then);

  final MyStatisticEvent _self;
  final $Res Function(MyStatisticEvent) _then;

/// Create a copy of MyStatisticEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = freezed,}) {
  return _then(_self.copyWith(
groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyStatisticEvent].
extension MyStatisticEventPatterns on MyStatisticEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? groupId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? groupId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.groupId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? groupId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.groupId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MyStatisticEvent {
  const _Started({this.groupId});
  

@override final  int? groupId;

/// Create a copy of MyStatisticEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'MyStatisticEvent.started(groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $MyStatisticEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int? groupId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of MyStatisticEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = freezed,}) {
  return _then(_Started(
groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$MyStatisticState {

 MyStatistic get data; UserTotalPosition get position;
/// Create a copy of MyStatisticState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyStatisticStateCopyWith<MyStatisticState> get copyWith => _$MyStatisticStateCopyWithImpl<MyStatisticState>(this as MyStatisticState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyStatisticState&&(identical(other.data, data) || other.data == data)&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,data,position);

@override
String toString() {
  return 'MyStatisticState(data: $data, position: $position)';
}


}

/// @nodoc
abstract mixin class $MyStatisticStateCopyWith<$Res>  {
  factory $MyStatisticStateCopyWith(MyStatisticState value, $Res Function(MyStatisticState) _then) = _$MyStatisticStateCopyWithImpl;
@useResult
$Res call({
 MyStatistic data, UserTotalPosition position
});


$MyStatisticCopyWith<$Res> get data;$UserTotalPositionCopyWith<$Res> get position;

}
/// @nodoc
class _$MyStatisticStateCopyWithImpl<$Res>
    implements $MyStatisticStateCopyWith<$Res> {
  _$MyStatisticStateCopyWithImpl(this._self, this._then);

  final MyStatisticState _self;
  final $Res Function(MyStatisticState) _then;

/// Create a copy of MyStatisticState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? position = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MyStatistic,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as UserTotalPosition,
  ));
}
/// Create a copy of MyStatisticState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyStatisticCopyWith<$Res> get data {
  
  return $MyStatisticCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of MyStatisticState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserTotalPositionCopyWith<$Res> get position {
  
  return $UserTotalPositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyStatisticState].
extension MyStatisticStatePatterns on MyStatisticState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MyStatisticStateData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MyStatisticStateData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MyStatisticStateData value)  data,}){
final _that = this;
switch (_that) {
case MyStatisticStateData():
return data(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MyStatisticStateData value)?  data,}){
final _that = this;
switch (_that) {
case MyStatisticStateData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MyStatistic data,  UserTotalPosition position)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MyStatisticStateData() when data != null:
return data(_that.data,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MyStatistic data,  UserTotalPosition position)  data,}) {final _that = this;
switch (_that) {
case MyStatisticStateData():
return data(_that.data,_that.position);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MyStatistic data,  UserTotalPosition position)?  data,}) {final _that = this;
switch (_that) {
case MyStatisticStateData() when data != null:
return data(_that.data,_that.position);case _:
  return null;

}
}

}

/// @nodoc


class MyStatisticStateData implements MyStatisticState {
  const MyStatisticStateData({required this.data, required this.position});
  

@override final  MyStatistic data;
@override final  UserTotalPosition position;

/// Create a copy of MyStatisticState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyStatisticStateDataCopyWith<MyStatisticStateData> get copyWith => _$MyStatisticStateDataCopyWithImpl<MyStatisticStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyStatisticStateData&&(identical(other.data, data) || other.data == data)&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,data,position);

@override
String toString() {
  return 'MyStatisticState.data(data: $data, position: $position)';
}


}

/// @nodoc
abstract mixin class $MyStatisticStateDataCopyWith<$Res> implements $MyStatisticStateCopyWith<$Res> {
  factory $MyStatisticStateDataCopyWith(MyStatisticStateData value, $Res Function(MyStatisticStateData) _then) = _$MyStatisticStateDataCopyWithImpl;
@override @useResult
$Res call({
 MyStatistic data, UserTotalPosition position
});


@override $MyStatisticCopyWith<$Res> get data;@override $UserTotalPositionCopyWith<$Res> get position;

}
/// @nodoc
class _$MyStatisticStateDataCopyWithImpl<$Res>
    implements $MyStatisticStateDataCopyWith<$Res> {
  _$MyStatisticStateDataCopyWithImpl(this._self, this._then);

  final MyStatisticStateData _self;
  final $Res Function(MyStatisticStateData) _then;

/// Create a copy of MyStatisticState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? position = null,}) {
  return _then(MyStatisticStateData(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MyStatistic,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as UserTotalPosition,
  ));
}

/// Create a copy of MyStatisticState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyStatisticCopyWith<$Res> get data {
  
  return $MyStatisticCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of MyStatisticState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserTotalPositionCopyWith<$Res> get position {
  
  return $UserTotalPositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}

// dart format on
