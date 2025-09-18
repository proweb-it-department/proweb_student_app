// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_module_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaterialModuleViewEvent {

 int get materialId;
/// Create a copy of MaterialModuleViewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialModuleViewEventCopyWith<MaterialModuleViewEvent> get copyWith => _$MaterialModuleViewEventCopyWithImpl<MaterialModuleViewEvent>(this as MaterialModuleViewEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialModuleViewEvent&&(identical(other.materialId, materialId) || other.materialId == materialId));
}


@override
int get hashCode => Object.hash(runtimeType,materialId);

@override
String toString() {
  return 'MaterialModuleViewEvent(materialId: $materialId)';
}


}

/// @nodoc
abstract mixin class $MaterialModuleViewEventCopyWith<$Res>  {
  factory $MaterialModuleViewEventCopyWith(MaterialModuleViewEvent value, $Res Function(MaterialModuleViewEvent) _then) = _$MaterialModuleViewEventCopyWithImpl;
@useResult
$Res call({
 int materialId
});




}
/// @nodoc
class _$MaterialModuleViewEventCopyWithImpl<$Res>
    implements $MaterialModuleViewEventCopyWith<$Res> {
  _$MaterialModuleViewEventCopyWithImpl(this._self, this._then);

  final MaterialModuleViewEvent _self;
  final $Res Function(MaterialModuleViewEvent) _then;

/// Create a copy of MaterialModuleViewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materialId = null,}) {
  return _then(_self.copyWith(
materialId: null == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MaterialModuleViewEvent].
extension MaterialModuleViewEventPatterns on MaterialModuleViewEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int materialId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.materialId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int materialId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.materialId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int materialId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.materialId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MaterialModuleViewEvent {
  const _Started({required this.materialId});
  

@override final  int materialId;

/// Create a copy of MaterialModuleViewEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.materialId, materialId) || other.materialId == materialId));
}


@override
int get hashCode => Object.hash(runtimeType,materialId);

@override
String toString() {
  return 'MaterialModuleViewEvent.started(materialId: $materialId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $MaterialModuleViewEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int materialId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of MaterialModuleViewEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? materialId = null,}) {
  return _then(_Started(
materialId: null == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MaterialModuleViewState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialModuleViewState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaterialModuleViewState()';
}


}

/// @nodoc
class $MaterialModuleViewStateCopyWith<$Res>  {
$MaterialModuleViewStateCopyWith(MaterialModuleViewState _, $Res Function(MaterialModuleViewState) __);
}


/// Adds pattern-matching-related methods to [MaterialModuleViewState].
extension MaterialModuleViewStatePatterns on MaterialModuleViewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Load value)?  load,TResult Function( _Error value)?  error,TResult Function( _Complited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Load() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Load value)  load,required TResult Function( _Error value)  error,required TResult Function( _Complited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Load():
return load(_that);case _Error():
return error(_that);case _Complited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Load value)?  load,TResult? Function( _Error value)?  error,TResult? Function( _Complited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Load() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( MaterialModuleItem meterial)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Load() when load != null:
return load();case _Error() when error != null:
return error();case _Complited() when complited != null:
return complited(_that.meterial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( MaterialModuleItem meterial)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Load():
return load();case _Error():
return error();case _Complited():
return complited(_that.meterial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( MaterialModuleItem meterial)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Load() when load != null:
return load();case _Error() when error != null:
return error();case _Complited() when complited != null:
return complited(_that.meterial);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MaterialModuleViewState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaterialModuleViewState.initial()';
}


}




/// @nodoc


class _Load implements MaterialModuleViewState {
  const _Load();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaterialModuleViewState.load()';
}


}




/// @nodoc


class _Error implements MaterialModuleViewState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaterialModuleViewState.error()';
}


}




/// @nodoc


class _Complited implements MaterialModuleViewState {
  const _Complited({required this.meterial});
  

 final  MaterialModuleItem meterial;

/// Create a copy of MaterialModuleViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplitedCopyWith<_Complited> get copyWith => __$ComplitedCopyWithImpl<_Complited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complited&&(identical(other.meterial, meterial) || other.meterial == meterial));
}


@override
int get hashCode => Object.hash(runtimeType,meterial);

@override
String toString() {
  return 'MaterialModuleViewState.complited(meterial: $meterial)';
}


}

/// @nodoc
abstract mixin class _$ComplitedCopyWith<$Res> implements $MaterialModuleViewStateCopyWith<$Res> {
  factory _$ComplitedCopyWith(_Complited value, $Res Function(_Complited) _then) = __$ComplitedCopyWithImpl;
@useResult
$Res call({
 MaterialModuleItem meterial
});


$MaterialModuleItemCopyWith<$Res> get meterial;

}
/// @nodoc
class __$ComplitedCopyWithImpl<$Res>
    implements _$ComplitedCopyWith<$Res> {
  __$ComplitedCopyWithImpl(this._self, this._then);

  final _Complited _self;
  final $Res Function(_Complited) _then;

/// Create a copy of MaterialModuleViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meterial = null,}) {
  return _then(_Complited(
meterial: null == meterial ? _self.meterial : meterial // ignore: cast_nullable_to_non_nullable
as MaterialModuleItem,
  ));
}

/// Create a copy of MaterialModuleViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialModuleItemCopyWith<$Res> get meterial {
  
  return $MaterialModuleItemCopyWith<$Res>(_self.meterial, (value) {
    return _then(_self.copyWith(meterial: value));
  });
}
}

// dart format on
