// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_center_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServiceCenterEvent {

 int get offset;
/// Create a copy of ServiceCenterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceCenterEventCopyWith<ServiceCenterEvent> get copyWith => _$ServiceCenterEventCopyWithImpl<ServiceCenterEvent>(this as ServiceCenterEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceCenterEvent&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'ServiceCenterEvent(offset: $offset)';
}


}

/// @nodoc
abstract mixin class $ServiceCenterEventCopyWith<$Res>  {
  factory $ServiceCenterEventCopyWith(ServiceCenterEvent value, $Res Function(ServiceCenterEvent) _then) = _$ServiceCenterEventCopyWithImpl;
@useResult
$Res call({
 int offset
});




}
/// @nodoc
class _$ServiceCenterEventCopyWithImpl<$Res>
    implements $ServiceCenterEventCopyWith<$Res> {
  _$ServiceCenterEventCopyWithImpl(this._self, this._then);

  final ServiceCenterEvent _self;
  final $Res Function(ServiceCenterEvent) _then;

/// Create a copy of ServiceCenterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceCenterEvent].
extension ServiceCenterEventPatterns on ServiceCenterEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offset)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offset)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.offset);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offset)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.offset);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ServiceCenterEvent {
  const _Started({required this.offset});
  

@override final  int offset;

/// Create a copy of ServiceCenterEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'ServiceCenterEvent.started(offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $ServiceCenterEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
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

/// Create a copy of ServiceCenterEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,}) {
  return _then(_Started(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ServiceCenterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceCenterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServiceCenterState()';
}


}

/// @nodoc
class $ServiceCenterStateCopyWith<$Res>  {
$ServiceCenterStateCopyWith(ServiceCenterState _, $Res Function(ServiceCenterState) __);
}


/// Adds pattern-matching-related methods to [ServiceCenterState].
extension ServiceCenterStatePatterns on ServiceCenterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServiceCenterInitial value)?  initial,TResult Function( ServiceCenterError value)?  error,TResult Function( ServiceCenterNotFound value)?  notFound,TResult Function( ServiceCenterComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServiceCenterInitial() when initial != null:
return initial(_that);case ServiceCenterError() when error != null:
return error(_that);case ServiceCenterNotFound() when notFound != null:
return notFound(_that);case ServiceCenterComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServiceCenterInitial value)  initial,required TResult Function( ServiceCenterError value)  error,required TResult Function( ServiceCenterNotFound value)  notFound,required TResult Function( ServiceCenterComplited value)  complited,}){
final _that = this;
switch (_that) {
case ServiceCenterInitial():
return initial(_that);case ServiceCenterError():
return error(_that);case ServiceCenterNotFound():
return notFound(_that);case ServiceCenterComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServiceCenterInitial value)?  initial,TResult? Function( ServiceCenterError value)?  error,TResult? Function( ServiceCenterNotFound value)?  notFound,TResult? Function( ServiceCenterComplited value)?  complited,}){
final _that = this;
switch (_that) {
case ServiceCenterInitial() when initial != null:
return initial(_that);case ServiceCenterError() when error != null:
return error(_that);case ServiceCenterNotFound() when notFound != null:
return notFound(_that);case ServiceCenterComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  error,TResult Function()?  notFound,TResult Function( List<ServiceCenter> list)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServiceCenterInitial() when initial != null:
return initial();case ServiceCenterError() when error != null:
return error();case ServiceCenterNotFound() when notFound != null:
return notFound();case ServiceCenterComplited() when complited != null:
return complited(_that.list);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  error,required TResult Function()  notFound,required TResult Function( List<ServiceCenter> list)  complited,}) {final _that = this;
switch (_that) {
case ServiceCenterInitial():
return initial();case ServiceCenterError():
return error();case ServiceCenterNotFound():
return notFound();case ServiceCenterComplited():
return complited(_that.list);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  error,TResult? Function()?  notFound,TResult? Function( List<ServiceCenter> list)?  complited,}) {final _that = this;
switch (_that) {
case ServiceCenterInitial() when initial != null:
return initial();case ServiceCenterError() when error != null:
return error();case ServiceCenterNotFound() when notFound != null:
return notFound();case ServiceCenterComplited() when complited != null:
return complited(_that.list);case _:
  return null;

}
}

}

/// @nodoc


class ServiceCenterInitial implements ServiceCenterState {
  const ServiceCenterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceCenterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServiceCenterState.initial()';
}


}




/// @nodoc


class ServiceCenterError implements ServiceCenterState {
  const ServiceCenterError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceCenterError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServiceCenterState.error()';
}


}




/// @nodoc


class ServiceCenterNotFound implements ServiceCenterState {
  const ServiceCenterNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceCenterNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServiceCenterState.notFound()';
}


}




/// @nodoc


class ServiceCenterComplited implements ServiceCenterState {
  const ServiceCenterComplited({required final  List<ServiceCenter> list}): _list = list;
  

 final  List<ServiceCenter> _list;
 List<ServiceCenter> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of ServiceCenterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceCenterComplitedCopyWith<ServiceCenterComplited> get copyWith => _$ServiceCenterComplitedCopyWithImpl<ServiceCenterComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceCenterComplited&&const DeepCollectionEquality().equals(other._list, _list));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'ServiceCenterState.complited(list: $list)';
}


}

/// @nodoc
abstract mixin class $ServiceCenterComplitedCopyWith<$Res> implements $ServiceCenterStateCopyWith<$Res> {
  factory $ServiceCenterComplitedCopyWith(ServiceCenterComplited value, $Res Function(ServiceCenterComplited) _then) = _$ServiceCenterComplitedCopyWithImpl;
@useResult
$Res call({
 List<ServiceCenter> list
});




}
/// @nodoc
class _$ServiceCenterComplitedCopyWithImpl<$Res>
    implements $ServiceCenterComplitedCopyWith<$Res> {
  _$ServiceCenterComplitedCopyWithImpl(this._self, this._then);

  final ServiceCenterComplited _self;
  final $Res Function(ServiceCenterComplited) _then;

/// Create a copy of ServiceCenterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,}) {
  return _then(ServiceCenterComplited(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<ServiceCenter>,
  ));
}


}

// dart format on
