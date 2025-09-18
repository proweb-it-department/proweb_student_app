// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coworking_list_reserve_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoworkingListReserveEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoworkingListReserveEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoworkingListReserveEvent()';
}


}

/// @nodoc
class $CoworkingListReserveEventCopyWith<$Res>  {
$CoworkingListReserveEventCopyWith(CoworkingListReserveEvent _, $Res Function(CoworkingListReserveEvent) __);
}


/// Adds pattern-matching-related methods to [CoworkingListReserveEvent].
extension CoworkingListReserveEventPatterns on CoworkingListReserveEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _CoworkingListReserve value)?  reserve,TResult Function( _CoworkingListUpdate value)?  update,TResult Function( _CoworkingListDelete value)?  closed,TResult Function( _CoworkingListUpdateWs value)?  updateWS,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _CoworkingListReserve() when reserve != null:
return reserve(_that);case _CoworkingListUpdate() when update != null:
return update(_that);case _CoworkingListDelete() when closed != null:
return closed(_that);case _CoworkingListUpdateWs() when updateWS != null:
return updateWS(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _CoworkingListReserve value)  reserve,required TResult Function( _CoworkingListUpdate value)  update,required TResult Function( _CoworkingListDelete value)  closed,required TResult Function( _CoworkingListUpdateWs value)  updateWS,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _CoworkingListReserve():
return reserve(_that);case _CoworkingListUpdate():
return update(_that);case _CoworkingListDelete():
return closed(_that);case _CoworkingListUpdateWs():
return updateWS(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _CoworkingListReserve value)?  reserve,TResult? Function( _CoworkingListUpdate value)?  update,TResult? Function( _CoworkingListDelete value)?  closed,TResult? Function( _CoworkingListUpdateWs value)?  updateWS,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _CoworkingListReserve() when reserve != null:
return reserve(_that);case _CoworkingListUpdate() when update != null:
return update(_that);case _CoworkingListDelete() when closed != null:
return closed(_that);case _CoworkingListUpdateWs() when updateWS != null:
return updateWS(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offset)?  started,TResult Function( int seatId,  String date,  String reserveTime,  int groupId)?  reserve,TResult Function( int visitId,  int seatId,  String reserveTime)?  update,TResult Function( int visitId)?  closed,TResult Function( CoworkingListReserve visite)?  updateWS,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset);case _CoworkingListReserve() when reserve != null:
return reserve(_that.seatId,_that.date,_that.reserveTime,_that.groupId);case _CoworkingListUpdate() when update != null:
return update(_that.visitId,_that.seatId,_that.reserveTime);case _CoworkingListDelete() when closed != null:
return closed(_that.visitId);case _CoworkingListUpdateWs() when updateWS != null:
return updateWS(_that.visite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offset)  started,required TResult Function( int seatId,  String date,  String reserveTime,  int groupId)  reserve,required TResult Function( int visitId,  int seatId,  String reserveTime)  update,required TResult Function( int visitId)  closed,required TResult Function( CoworkingListReserve visite)  updateWS,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.offset);case _CoworkingListReserve():
return reserve(_that.seatId,_that.date,_that.reserveTime,_that.groupId);case _CoworkingListUpdate():
return update(_that.visitId,_that.seatId,_that.reserveTime);case _CoworkingListDelete():
return closed(_that.visitId);case _CoworkingListUpdateWs():
return updateWS(_that.visite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offset)?  started,TResult? Function( int seatId,  String date,  String reserveTime,  int groupId)?  reserve,TResult? Function( int visitId,  int seatId,  String reserveTime)?  update,TResult? Function( int visitId)?  closed,TResult? Function( CoworkingListReserve visite)?  updateWS,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset);case _CoworkingListReserve() when reserve != null:
return reserve(_that.seatId,_that.date,_that.reserveTime,_that.groupId);case _CoworkingListUpdate() when update != null:
return update(_that.visitId,_that.seatId,_that.reserveTime);case _CoworkingListDelete() when closed != null:
return closed(_that.visitId);case _CoworkingListUpdateWs() when updateWS != null:
return updateWS(_that.visite);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CoworkingListReserveEvent {
  const _Started({required this.offset});
  

 final  int offset;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'CoworkingListReserveEvent.started(offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $CoworkingListReserveEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 int offset
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? offset = null,}) {
  return _then(_Started(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CoworkingListReserve implements CoworkingListReserveEvent {
  const _CoworkingListReserve({required this.seatId, required this.date, required this.reserveTime, required this.groupId});
  

 final  int seatId;
 final  String date;
 final  String reserveTime;
 final  int groupId;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoworkingListReserveCopyWith<_CoworkingListReserve> get copyWith => __$CoworkingListReserveCopyWithImpl<_CoworkingListReserve>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingListReserve&&(identical(other.seatId, seatId) || other.seatId == seatId)&&(identical(other.date, date) || other.date == date)&&(identical(other.reserveTime, reserveTime) || other.reserveTime == reserveTime)&&(identical(other.groupId, groupId) || other.groupId == groupId));
}


@override
int get hashCode => Object.hash(runtimeType,seatId,date,reserveTime,groupId);

@override
String toString() {
  return 'CoworkingListReserveEvent.reserve(seatId: $seatId, date: $date, reserveTime: $reserveTime, groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class _$CoworkingListReserveCopyWith<$Res> implements $CoworkingListReserveEventCopyWith<$Res> {
  factory _$CoworkingListReserveCopyWith(_CoworkingListReserve value, $Res Function(_CoworkingListReserve) _then) = __$CoworkingListReserveCopyWithImpl;
@useResult
$Res call({
 int seatId, String date, String reserveTime, int groupId
});




}
/// @nodoc
class __$CoworkingListReserveCopyWithImpl<$Res>
    implements _$CoworkingListReserveCopyWith<$Res> {
  __$CoworkingListReserveCopyWithImpl(this._self, this._then);

  final _CoworkingListReserve _self;
  final $Res Function(_CoworkingListReserve) _then;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? seatId = null,Object? date = null,Object? reserveTime = null,Object? groupId = null,}) {
  return _then(_CoworkingListReserve(
seatId: null == seatId ? _self.seatId : seatId // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,reserveTime: null == reserveTime ? _self.reserveTime : reserveTime // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CoworkingListUpdate implements CoworkingListReserveEvent {
  const _CoworkingListUpdate({required this.visitId, required this.seatId, required this.reserveTime});
  

 final  int visitId;
 final  int seatId;
 final  String reserveTime;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoworkingListUpdateCopyWith<_CoworkingListUpdate> get copyWith => __$CoworkingListUpdateCopyWithImpl<_CoworkingListUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingListUpdate&&(identical(other.visitId, visitId) || other.visitId == visitId)&&(identical(other.seatId, seatId) || other.seatId == seatId)&&(identical(other.reserveTime, reserveTime) || other.reserveTime == reserveTime));
}


@override
int get hashCode => Object.hash(runtimeType,visitId,seatId,reserveTime);

@override
String toString() {
  return 'CoworkingListReserveEvent.update(visitId: $visitId, seatId: $seatId, reserveTime: $reserveTime)';
}


}

/// @nodoc
abstract mixin class _$CoworkingListUpdateCopyWith<$Res> implements $CoworkingListReserveEventCopyWith<$Res> {
  factory _$CoworkingListUpdateCopyWith(_CoworkingListUpdate value, $Res Function(_CoworkingListUpdate) _then) = __$CoworkingListUpdateCopyWithImpl;
@useResult
$Res call({
 int visitId, int seatId, String reserveTime
});




}
/// @nodoc
class __$CoworkingListUpdateCopyWithImpl<$Res>
    implements _$CoworkingListUpdateCopyWith<$Res> {
  __$CoworkingListUpdateCopyWithImpl(this._self, this._then);

  final _CoworkingListUpdate _self;
  final $Res Function(_CoworkingListUpdate) _then;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? visitId = null,Object? seatId = null,Object? reserveTime = null,}) {
  return _then(_CoworkingListUpdate(
visitId: null == visitId ? _self.visitId : visitId // ignore: cast_nullable_to_non_nullable
as int,seatId: null == seatId ? _self.seatId : seatId // ignore: cast_nullable_to_non_nullable
as int,reserveTime: null == reserveTime ? _self.reserveTime : reserveTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CoworkingListDelete implements CoworkingListReserveEvent {
  const _CoworkingListDelete({required this.visitId});
  

 final  int visitId;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoworkingListDeleteCopyWith<_CoworkingListDelete> get copyWith => __$CoworkingListDeleteCopyWithImpl<_CoworkingListDelete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingListDelete&&(identical(other.visitId, visitId) || other.visitId == visitId));
}


@override
int get hashCode => Object.hash(runtimeType,visitId);

@override
String toString() {
  return 'CoworkingListReserveEvent.closed(visitId: $visitId)';
}


}

/// @nodoc
abstract mixin class _$CoworkingListDeleteCopyWith<$Res> implements $CoworkingListReserveEventCopyWith<$Res> {
  factory _$CoworkingListDeleteCopyWith(_CoworkingListDelete value, $Res Function(_CoworkingListDelete) _then) = __$CoworkingListDeleteCopyWithImpl;
@useResult
$Res call({
 int visitId
});




}
/// @nodoc
class __$CoworkingListDeleteCopyWithImpl<$Res>
    implements _$CoworkingListDeleteCopyWith<$Res> {
  __$CoworkingListDeleteCopyWithImpl(this._self, this._then);

  final _CoworkingListDelete _self;
  final $Res Function(_CoworkingListDelete) _then;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? visitId = null,}) {
  return _then(_CoworkingListDelete(
visitId: null == visitId ? _self.visitId : visitId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CoworkingListUpdateWs implements CoworkingListReserveEvent {
  const _CoworkingListUpdateWs({required this.visite});
  

 final  CoworkingListReserve visite;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoworkingListUpdateWsCopyWith<_CoworkingListUpdateWs> get copyWith => __$CoworkingListUpdateWsCopyWithImpl<_CoworkingListUpdateWs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingListUpdateWs&&(identical(other.visite, visite) || other.visite == visite));
}


@override
int get hashCode => Object.hash(runtimeType,visite);

@override
String toString() {
  return 'CoworkingListReserveEvent.updateWS(visite: $visite)';
}


}

/// @nodoc
abstract mixin class _$CoworkingListUpdateWsCopyWith<$Res> implements $CoworkingListReserveEventCopyWith<$Res> {
  factory _$CoworkingListUpdateWsCopyWith(_CoworkingListUpdateWs value, $Res Function(_CoworkingListUpdateWs) _then) = __$CoworkingListUpdateWsCopyWithImpl;
@useResult
$Res call({
 CoworkingListReserve visite
});


$CoworkingListReserveCopyWith<$Res> get visite;

}
/// @nodoc
class __$CoworkingListUpdateWsCopyWithImpl<$Res>
    implements _$CoworkingListUpdateWsCopyWith<$Res> {
  __$CoworkingListUpdateWsCopyWithImpl(this._self, this._then);

  final _CoworkingListUpdateWs _self;
  final $Res Function(_CoworkingListUpdateWs) _then;

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? visite = null,}) {
  return _then(_CoworkingListUpdateWs(
visite: null == visite ? _self.visite : visite // ignore: cast_nullable_to_non_nullable
as CoworkingListReserve,
  ));
}

/// Create a copy of CoworkingListReserveEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoworkingListReserveCopyWith<$Res> get visite {
  
  return $CoworkingListReserveCopyWith<$Res>(_self.visite, (value) {
    return _then(_self.copyWith(visite: value));
  });
}
}

/// @nodoc
mixin _$CoworkingListReserveState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoworkingListReserveState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoworkingListReserveState()';
}


}

/// @nodoc
class $CoworkingListReserveStateCopyWith<$Res>  {
$CoworkingListReserveStateCopyWith(CoworkingListReserveState _, $Res Function(CoworkingListReserveState) __);
}


/// Adds pattern-matching-related methods to [CoworkingListReserveState].
extension CoworkingListReserveStatePatterns on CoworkingListReserveState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _CoworkingListReserveList value)?  list,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CoworkingListReserveList() when list != null:
return list(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _CoworkingListReserveList value)  list,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _CoworkingListReserveList():
return list(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _CoworkingListReserveList value)?  list,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CoworkingListReserveList() when list != null:
return list(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int count,  List<CoworkingListReserve> list,  bool reservate)?  list,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CoworkingListReserveList() when list != null:
return list(_that.count,_that.list,_that.reservate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int count,  List<CoworkingListReserve> list,  bool reservate)  list,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _CoworkingListReserveList():
return list(_that.count,_that.list,_that.reservate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int count,  List<CoworkingListReserve> list,  bool reservate)?  list,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CoworkingListReserveList() when list != null:
return list(_that.count,_that.list,_that.reservate);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CoworkingListReserveState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoworkingListReserveState.initial()';
}


}




/// @nodoc


class _CoworkingListReserveList implements CoworkingListReserveState {
  const _CoworkingListReserveList({required this.count, required final  List<CoworkingListReserve> list, required this.reservate}): _list = list;
  

 final  int count;
 final  List<CoworkingListReserve> _list;
 List<CoworkingListReserve> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

 final  bool reservate;

/// Create a copy of CoworkingListReserveState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoworkingListReserveListCopyWith<_CoworkingListReserveList> get copyWith => __$CoworkingListReserveListCopyWithImpl<_CoworkingListReserveList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingListReserveList&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.reservate, reservate) || other.reservate == reservate));
}


@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(_list),reservate);

@override
String toString() {
  return 'CoworkingListReserveState.list(count: $count, list: $list, reservate: $reservate)';
}


}

/// @nodoc
abstract mixin class _$CoworkingListReserveListCopyWith<$Res> implements $CoworkingListReserveStateCopyWith<$Res> {
  factory _$CoworkingListReserveListCopyWith(_CoworkingListReserveList value, $Res Function(_CoworkingListReserveList) _then) = __$CoworkingListReserveListCopyWithImpl;
@useResult
$Res call({
 int count, List<CoworkingListReserve> list, bool reservate
});




}
/// @nodoc
class __$CoworkingListReserveListCopyWithImpl<$Res>
    implements _$CoworkingListReserveListCopyWith<$Res> {
  __$CoworkingListReserveListCopyWithImpl(this._self, this._then);

  final _CoworkingListReserveList _self;
  final $Res Function(_CoworkingListReserveList) _then;

/// Create a copy of CoworkingListReserveState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,Object? list = null,Object? reservate = null,}) {
  return _then(_CoworkingListReserveList(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<CoworkingListReserve>,reservate: null == reservate ? _self.reservate : reservate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
