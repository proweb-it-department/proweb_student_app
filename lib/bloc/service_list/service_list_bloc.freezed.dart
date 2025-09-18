// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServiceListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServiceListEvent()';
}


}

/// @nodoc
class $ServiceListEventCopyWith<$Res>  {
$ServiceListEventCopyWith(ServiceListEvent _, $Res Function(ServiceListEvent) __);
}


/// Adds pattern-matching-related methods to [ServiceListEvent].
extension ServiceListEventPatterns on ServiceListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Buy value)?  buy,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Buy() when buy != null:
return buy(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Buy value)  buy,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Buy():
return buy(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Buy value)?  buy,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Buy() when buy != null:
return buy(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offset,  int limit)?  started,TResult Function( int serviceId,  int studentId)?  buy,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset,_that.limit);case _Buy() when buy != null:
return buy(_that.serviceId,_that.studentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offset,  int limit)  started,required TResult Function( int serviceId,  int studentId)  buy,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.offset,_that.limit);case _Buy():
return buy(_that.serviceId,_that.studentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offset,  int limit)?  started,TResult? Function( int serviceId,  int studentId)?  buy,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset,_that.limit);case _Buy() when buy != null:
return buy(_that.serviceId,_that.studentId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ServiceListEvent {
  const _Started({required this.offset, required this.limit});
  

 final  int offset;
 final  int limit;

/// Create a copy of ServiceListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit);

@override
String toString() {
  return 'ServiceListEvent.started(offset: $offset, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $ServiceListEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 int offset, int limit
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of ServiceListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? limit = null,}) {
  return _then(_Started(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Buy implements ServiceListEvent {
  const _Buy({required this.serviceId, required this.studentId});
  

 final  int serviceId;
 final  int studentId;

/// Create a copy of ServiceListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyCopyWith<_Buy> get copyWith => __$BuyCopyWithImpl<_Buy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Buy&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.studentId, studentId) || other.studentId == studentId));
}


@override
int get hashCode => Object.hash(runtimeType,serviceId,studentId);

@override
String toString() {
  return 'ServiceListEvent.buy(serviceId: $serviceId, studentId: $studentId)';
}


}

/// @nodoc
abstract mixin class _$BuyCopyWith<$Res> implements $ServiceListEventCopyWith<$Res> {
  factory _$BuyCopyWith(_Buy value, $Res Function(_Buy) _then) = __$BuyCopyWithImpl;
@useResult
$Res call({
 int serviceId, int studentId
});




}
/// @nodoc
class __$BuyCopyWithImpl<$Res>
    implements _$BuyCopyWith<$Res> {
  __$BuyCopyWithImpl(this._self, this._then);

  final _Buy _self;
  final $Res Function(_Buy) _then;

/// Create a copy of ServiceListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? studentId = null,}) {
  return _then(_Buy(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ServiceListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServiceListState()';
}


}

/// @nodoc
class $ServiceListStateCopyWith<$Res>  {
$ServiceListStateCopyWith(ServiceListState _, $Res Function(ServiceListState) __);
}


/// Adds pattern-matching-related methods to [ServiceListState].
extension ServiceListStatePatterns on ServiceListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Load value)?  load,TResult Function( _Complited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Load value)  load,required TResult Function( _Complited value)  complited,}){
final _that = this;
switch (_that) {
case _Load():
return load(_that);case _Complited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Load value)?  load,TResult? Function( _Complited value)?  complited,}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( ResponseLazeList<ServiseForSale> services,  bool load)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Complited() when complited != null:
return complited(_that.services,_that.load);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( ResponseLazeList<ServiseForSale> services,  bool load)  complited,}) {final _that = this;
switch (_that) {
case _Load():
return load();case _Complited():
return complited(_that.services,_that.load);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( ResponseLazeList<ServiseForSale> services,  bool load)?  complited,}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Complited() when complited != null:
return complited(_that.services,_that.load);case _:
  return null;

}
}

}

/// @nodoc


class _Load implements ServiceListState {
  const _Load();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServiceListState.load()';
}


}




/// @nodoc


class _Complited implements ServiceListState {
  const _Complited({required this.services, required this.load});
  

 final  ResponseLazeList<ServiseForSale> services;
 final  bool load;

/// Create a copy of ServiceListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplitedCopyWith<_Complited> get copyWith => __$ComplitedCopyWithImpl<_Complited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complited&&(identical(other.services, services) || other.services == services)&&(identical(other.load, load) || other.load == load));
}


@override
int get hashCode => Object.hash(runtimeType,services,load);

@override
String toString() {
  return 'ServiceListState.complited(services: $services, load: $load)';
}


}

/// @nodoc
abstract mixin class _$ComplitedCopyWith<$Res> implements $ServiceListStateCopyWith<$Res> {
  factory _$ComplitedCopyWith(_Complited value, $Res Function(_Complited) _then) = __$ComplitedCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<ServiseForSale> services, bool load
});




}
/// @nodoc
class __$ComplitedCopyWithImpl<$Res>
    implements _$ComplitedCopyWith<$Res> {
  __$ComplitedCopyWithImpl(this._self, this._then);

  final _Complited _self;
  final $Res Function(_Complited) _then;

/// Create a copy of ServiceListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? services = null,Object? load = null,}) {
  return _then(_Complited(
services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<ServiseForSale>,load: null == load ? _self.load : load // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
