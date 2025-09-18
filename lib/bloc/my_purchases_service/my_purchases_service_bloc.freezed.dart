// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_purchases_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyPurchasesServiceEvent {

 int get offset; int get limit;
/// Create a copy of MyPurchasesServiceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyPurchasesServiceEventCopyWith<MyPurchasesServiceEvent> get copyWith => _$MyPurchasesServiceEventCopyWithImpl<MyPurchasesServiceEvent>(this as MyPurchasesServiceEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPurchasesServiceEvent&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit);

@override
String toString() {
  return 'MyPurchasesServiceEvent(offset: $offset, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $MyPurchasesServiceEventCopyWith<$Res>  {
  factory $MyPurchasesServiceEventCopyWith(MyPurchasesServiceEvent value, $Res Function(MyPurchasesServiceEvent) _then) = _$MyPurchasesServiceEventCopyWithImpl;
@useResult
$Res call({
 int offset, int limit
});




}
/// @nodoc
class _$MyPurchasesServiceEventCopyWithImpl<$Res>
    implements $MyPurchasesServiceEventCopyWith<$Res> {
  _$MyPurchasesServiceEventCopyWithImpl(this._self, this._then);

  final MyPurchasesServiceEvent _self;
  final $Res Function(MyPurchasesServiceEvent) _then;

/// Create a copy of MyPurchasesServiceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,Object? limit = null,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MyPurchasesServiceEvent].
extension MyPurchasesServiceEventPatterns on MyPurchasesServiceEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offset,  int limit)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offset,  int limit)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.offset,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offset,  int limit)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset,_that.limit);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MyPurchasesServiceEvent {
  const _Started({required this.offset, required this.limit});
  

@override final  int offset;
@override final  int limit;

/// Create a copy of MyPurchasesServiceEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'MyPurchasesServiceEvent.started(offset: $offset, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $MyPurchasesServiceEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
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

/// Create a copy of MyPurchasesServiceEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? limit = null,}) {
  return _then(_Started(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MyPurchasesServiceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPurchasesServiceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyPurchasesServiceState()';
}


}

/// @nodoc
class $MyPurchasesServiceStateCopyWith<$Res>  {
$MyPurchasesServiceStateCopyWith(MyPurchasesServiceState _, $Res Function(MyPurchasesServiceState) __);
}


/// Adds pattern-matching-related methods to [MyPurchasesServiceState].
extension MyPurchasesServiceStatePatterns on MyPurchasesServiceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  load,TResult Function( _Complited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when load != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  load,required TResult Function( _Complited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  load,TResult? Function( _Complited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when load != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( ResponseLazeList<MyPurchasesService> services,  bool load)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when load != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( ResponseLazeList<MyPurchasesService> services,  bool load)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( ResponseLazeList<MyPurchasesService> services,  bool load)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when load != null:
return load();case _Complited() when complited != null:
return complited(_that.services,_that.load);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MyPurchasesServiceState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyPurchasesServiceState.load()';
}


}




/// @nodoc


class _Complited implements MyPurchasesServiceState {
  const _Complited({required this.services, required this.load});
  

 final  ResponseLazeList<MyPurchasesService> services;
 final  bool load;

/// Create a copy of MyPurchasesServiceState
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
  return 'MyPurchasesServiceState.complited(services: $services, load: $load)';
}


}

/// @nodoc
abstract mixin class _$ComplitedCopyWith<$Res> implements $MyPurchasesServiceStateCopyWith<$Res> {
  factory _$ComplitedCopyWith(_Complited value, $Res Function(_Complited) _then) = __$ComplitedCopyWithImpl;
@useResult
$Res call({
 ResponseLazeList<MyPurchasesService> services, bool load
});




}
/// @nodoc
class __$ComplitedCopyWithImpl<$Res>
    implements _$ComplitedCopyWith<$Res> {
  __$ComplitedCopyWithImpl(this._self, this._then);

  final _Complited _self;
  final $Res Function(_Complited) _then;

/// Create a copy of MyPurchasesServiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? services = null,Object? load = null,}) {
  return _then(_Complited(
services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as ResponseLazeList<MyPurchasesService>,load: null == load ? _self.load : load // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
