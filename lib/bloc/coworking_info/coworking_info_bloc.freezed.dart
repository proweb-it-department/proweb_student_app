// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coworking_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoworkingInfoEvent {

 String get languageCode;
/// Create a copy of CoworkingInfoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoworkingInfoEventCopyWith<CoworkingInfoEvent> get copyWith => _$CoworkingInfoEventCopyWithImpl<CoworkingInfoEvent>(this as CoworkingInfoEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoworkingInfoEvent&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'CoworkingInfoEvent(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $CoworkingInfoEventCopyWith<$Res>  {
  factory $CoworkingInfoEventCopyWith(CoworkingInfoEvent value, $Res Function(CoworkingInfoEvent) _then) = _$CoworkingInfoEventCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class _$CoworkingInfoEventCopyWithImpl<$Res>
    implements $CoworkingInfoEventCopyWith<$Res> {
  _$CoworkingInfoEventCopyWithImpl(this._self, this._then);

  final CoworkingInfoEvent _self;
  final $Res Function(CoworkingInfoEvent) _then;

/// Create a copy of CoworkingInfoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languageCode = null,}) {
  return _then(_self.copyWith(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CoworkingInfoEvent].
extension CoworkingInfoEventPatterns on CoworkingInfoEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.languageCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.languageCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.languageCode);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CoworkingInfoEvent {
  const _Started({required this.languageCode});
  

@override final  String languageCode;

/// Create a copy of CoworkingInfoEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'CoworkingInfoEvent.started(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $CoworkingInfoEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of CoworkingInfoEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(_Started(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CoworkingInfoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoworkingInfoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoworkingInfoState()';
}


}

/// @nodoc
class $CoworkingInfoStateCopyWith<$Res>  {
$CoworkingInfoStateCopyWith(CoworkingInfoState _, $Res Function(CoworkingInfoState) __);
}


/// Adds pattern-matching-related methods to [CoworkingInfoState].
extension CoworkingInfoStatePatterns on CoworkingInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _CoworkingInfoLoad value)?  load,TResult Function( _CoworkingInfoError value)?  error,TResult Function( _CoworkingInfoComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CoworkingInfoLoad() when load != null:
return load(_that);case _CoworkingInfoError() when error != null:
return error(_that);case _CoworkingInfoComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _CoworkingInfoLoad value)  load,required TResult Function( _CoworkingInfoError value)  error,required TResult Function( _CoworkingInfoComplited value)  complited,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _CoworkingInfoLoad():
return load(_that);case _CoworkingInfoError():
return error(_that);case _CoworkingInfoComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _CoworkingInfoLoad value)?  load,TResult? Function( _CoworkingInfoError value)?  error,TResult? Function( _CoworkingInfoComplited value)?  complited,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CoworkingInfoLoad() when load != null:
return load(_that);case _CoworkingInfoError() when error != null:
return error(_that);case _CoworkingInfoComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( CoworkingInfo info)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CoworkingInfoLoad() when load != null:
return load();case _CoworkingInfoError() when error != null:
return error();case _CoworkingInfoComplited() when complited != null:
return complited(_that.info);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( CoworkingInfo info)  complited,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _CoworkingInfoLoad():
return load();case _CoworkingInfoError():
return error();case _CoworkingInfoComplited():
return complited(_that.info);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( CoworkingInfo info)?  complited,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CoworkingInfoLoad() when load != null:
return load();case _CoworkingInfoError() when error != null:
return error();case _CoworkingInfoComplited() when complited != null:
return complited(_that.info);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CoworkingInfoState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoworkingInfoState.initial()';
}


}




/// @nodoc


class _CoworkingInfoLoad implements CoworkingInfoState {
  const _CoworkingInfoLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingInfoLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoworkingInfoState.load()';
}


}




/// @nodoc


class _CoworkingInfoError implements CoworkingInfoState {
  const _CoworkingInfoError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingInfoError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoworkingInfoState.error()';
}


}




/// @nodoc


class _CoworkingInfoComplited implements CoworkingInfoState {
  const _CoworkingInfoComplited({required this.info});
  

 final  CoworkingInfo info;

/// Create a copy of CoworkingInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoworkingInfoComplitedCopyWith<_CoworkingInfoComplited> get copyWith => __$CoworkingInfoComplitedCopyWithImpl<_CoworkingInfoComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoworkingInfoComplited&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString() {
  return 'CoworkingInfoState.complited(info: $info)';
}


}

/// @nodoc
abstract mixin class _$CoworkingInfoComplitedCopyWith<$Res> implements $CoworkingInfoStateCopyWith<$Res> {
  factory _$CoworkingInfoComplitedCopyWith(_CoworkingInfoComplited value, $Res Function(_CoworkingInfoComplited) _then) = __$CoworkingInfoComplitedCopyWithImpl;
@useResult
$Res call({
 CoworkingInfo info
});


$CoworkingInfoCopyWith<$Res> get info;

}
/// @nodoc
class __$CoworkingInfoComplitedCopyWithImpl<$Res>
    implements _$CoworkingInfoComplitedCopyWith<$Res> {
  __$CoworkingInfoComplitedCopyWithImpl(this._self, this._then);

  final _CoworkingInfoComplited _self;
  final $Res Function(_CoworkingInfoComplited) _then;

/// Create a copy of CoworkingInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(_CoworkingInfoComplited(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as CoworkingInfo,
  ));
}

/// Create a copy of CoworkingInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoworkingInfoCopyWith<$Res> get info {
  
  return $CoworkingInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

// dart format on
