// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyGroupsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyGroupsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGroupsEvent()';
}


}

/// @nodoc
class $MyGroupsEventCopyWith<$Res>  {
$MyGroupsEventCopyWith(MyGroupsEvent _, $Res Function(MyGroupsEvent) __);
}


/// Adds pattern-matching-related methods to [MyGroupsEvent].
extension MyGroupsEventPatterns on MyGroupsEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MyGroupsEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGroupsEvent.started()';
}


}




/// @nodoc
mixin _$MyGroupsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyGroupsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGroupsState()';
}


}

/// @nodoc
class $MyGroupsStateCopyWith<$Res>  {
$MyGroupsStateCopyWith(MyGroupsState _, $Res Function(MyGroupsState) __);
}


/// Adds pattern-matching-related methods to [MyGroupsState].
extension MyGroupsStatePatterns on MyGroupsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _MyGroupsComplited value)?  complited,TResult Function( _MyGroupsLoading value)?  loading,TResult Function( _MyGroupsErrorLoad value)?  errorLoad,TResult Function( _MyGroupsNotFound value)?  notFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _MyGroupsComplited() when complited != null:
return complited(_that);case _MyGroupsLoading() when loading != null:
return loading(_that);case _MyGroupsErrorLoad() when errorLoad != null:
return errorLoad(_that);case _MyGroupsNotFound() when notFound != null:
return notFound(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _MyGroupsComplited value)  complited,required TResult Function( _MyGroupsLoading value)  loading,required TResult Function( _MyGroupsErrorLoad value)  errorLoad,required TResult Function( _MyGroupsNotFound value)  notFound,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _MyGroupsComplited():
return complited(_that);case _MyGroupsLoading():
return loading(_that);case _MyGroupsErrorLoad():
return errorLoad(_that);case _MyGroupsNotFound():
return notFound(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _MyGroupsComplited value)?  complited,TResult? Function( _MyGroupsLoading value)?  loading,TResult? Function( _MyGroupsErrorLoad value)?  errorLoad,TResult? Function( _MyGroupsNotFound value)?  notFound,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _MyGroupsComplited() when complited != null:
return complited(_that);case _MyGroupsLoading() when loading != null:
return loading(_that);case _MyGroupsErrorLoad() when errorLoad != null:
return errorLoad(_that);case _MyGroupsNotFound() when notFound != null:
return notFound(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<MyGroupsItem> groups)?  complited,TResult Function()?  loading,TResult Function()?  errorLoad,TResult Function()?  notFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _MyGroupsComplited() when complited != null:
return complited(_that.groups);case _MyGroupsLoading() when loading != null:
return loading();case _MyGroupsErrorLoad() when errorLoad != null:
return errorLoad();case _MyGroupsNotFound() when notFound != null:
return notFound();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<MyGroupsItem> groups)  complited,required TResult Function()  loading,required TResult Function()  errorLoad,required TResult Function()  notFound,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _MyGroupsComplited():
return complited(_that.groups);case _MyGroupsLoading():
return loading();case _MyGroupsErrorLoad():
return errorLoad();case _MyGroupsNotFound():
return notFound();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<MyGroupsItem> groups)?  complited,TResult? Function()?  loading,TResult? Function()?  errorLoad,TResult? Function()?  notFound,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _MyGroupsComplited() when complited != null:
return complited(_that.groups);case _MyGroupsLoading() when loading != null:
return loading();case _MyGroupsErrorLoad() when errorLoad != null:
return errorLoad();case _MyGroupsNotFound() when notFound != null:
return notFound();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MyGroupsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGroupsState.initial()';
}


}




/// @nodoc


class _MyGroupsComplited implements MyGroupsState {
  const _MyGroupsComplited({required final  List<MyGroupsItem> groups}): _groups = groups;
  

 final  List<MyGroupsItem> _groups;
 List<MyGroupsItem> get groups {
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groups);
}


/// Create a copy of MyGroupsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyGroupsComplitedCopyWith<_MyGroupsComplited> get copyWith => __$MyGroupsComplitedCopyWithImpl<_MyGroupsComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyGroupsComplited&&const DeepCollectionEquality().equals(other._groups, _groups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_groups));

@override
String toString() {
  return 'MyGroupsState.complited(groups: $groups)';
}


}

/// @nodoc
abstract mixin class _$MyGroupsComplitedCopyWith<$Res> implements $MyGroupsStateCopyWith<$Res> {
  factory _$MyGroupsComplitedCopyWith(_MyGroupsComplited value, $Res Function(_MyGroupsComplited) _then) = __$MyGroupsComplitedCopyWithImpl;
@useResult
$Res call({
 List<MyGroupsItem> groups
});




}
/// @nodoc
class __$MyGroupsComplitedCopyWithImpl<$Res>
    implements _$MyGroupsComplitedCopyWith<$Res> {
  __$MyGroupsComplitedCopyWithImpl(this._self, this._then);

  final _MyGroupsComplited _self;
  final $Res Function(_MyGroupsComplited) _then;

/// Create a copy of MyGroupsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groups = null,}) {
  return _then(_MyGroupsComplited(
groups: null == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<MyGroupsItem>,
  ));
}


}

/// @nodoc


class _MyGroupsLoading implements MyGroupsState {
  const _MyGroupsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyGroupsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGroupsState.loading()';
}


}




/// @nodoc


class _MyGroupsErrorLoad implements MyGroupsState {
  const _MyGroupsErrorLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyGroupsErrorLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGroupsState.errorLoad()';
}


}




/// @nodoc


class _MyGroupsNotFound implements MyGroupsState {
  const _MyGroupsNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyGroupsNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGroupsState.notFound()';
}


}




// dart format on
