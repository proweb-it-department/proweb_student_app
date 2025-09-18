// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_version_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseVersionEvent {

 int get versionId;
/// Create a copy of CourseVersionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseVersionEventCopyWith<CourseVersionEvent> get copyWith => _$CourseVersionEventCopyWithImpl<CourseVersionEvent>(this as CourseVersionEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseVersionEvent&&(identical(other.versionId, versionId) || other.versionId == versionId));
}


@override
int get hashCode => Object.hash(runtimeType,versionId);

@override
String toString() {
  return 'CourseVersionEvent(versionId: $versionId)';
}


}

/// @nodoc
abstract mixin class $CourseVersionEventCopyWith<$Res>  {
  factory $CourseVersionEventCopyWith(CourseVersionEvent value, $Res Function(CourseVersionEvent) _then) = _$CourseVersionEventCopyWithImpl;
@useResult
$Res call({
 int versionId
});




}
/// @nodoc
class _$CourseVersionEventCopyWithImpl<$Res>
    implements $CourseVersionEventCopyWith<$Res> {
  _$CourseVersionEventCopyWithImpl(this._self, this._then);

  final CourseVersionEvent _self;
  final $Res Function(CourseVersionEvent) _then;

/// Create a copy of CourseVersionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? versionId = null,}) {
  return _then(_self.copyWith(
versionId: null == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseVersionEvent].
extension CourseVersionEventPatterns on CourseVersionEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int versionId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.versionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int versionId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.versionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int versionId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.versionId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CourseVersionEvent {
  const _Started({required this.versionId});
  

@override final  int versionId;

/// Create a copy of CourseVersionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.versionId, versionId) || other.versionId == versionId));
}


@override
int get hashCode => Object.hash(runtimeType,versionId);

@override
String toString() {
  return 'CourseVersionEvent.started(versionId: $versionId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $CourseVersionEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int versionId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of CourseVersionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? versionId = null,}) {
  return _then(_Started(
versionId: null == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CourseVersionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseVersionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseVersionState()';
}


}

/// @nodoc
class $CourseVersionStateCopyWith<$Res>  {
$CourseVersionStateCopyWith(CourseVersionState _, $Res Function(CourseVersionState) __);
}


/// Adds pattern-matching-related methods to [CourseVersionState].
extension CourseVersionStatePatterns on CourseVersionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _CourseVersionLoad value)?  load,TResult Function( _CourseVersionError value)?  error,TResult Function( _CourseVersionComplited value)?  complite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CourseVersionLoad() when load != null:
return load(_that);case _CourseVersionError() when error != null:
return error(_that);case _CourseVersionComplited() when complite != null:
return complite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _CourseVersionLoad value)  load,required TResult Function( _CourseVersionError value)  error,required TResult Function( _CourseVersionComplited value)  complite,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _CourseVersionLoad():
return load(_that);case _CourseVersionError():
return error(_that);case _CourseVersionComplited():
return complite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _CourseVersionLoad value)?  load,TResult? Function( _CourseVersionError value)?  error,TResult? Function( _CourseVersionComplited value)?  complite,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CourseVersionLoad() when load != null:
return load(_that);case _CourseVersionError() when error != null:
return error(_that);case _CourseVersionComplited() when complite != null:
return complite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function()?  error,TResult Function( List<CourseVersionModel> modules)?  complite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CourseVersionLoad() when load != null:
return load();case _CourseVersionError() when error != null:
return error();case _CourseVersionComplited() when complite != null:
return complite(_that.modules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function()  error,required TResult Function( List<CourseVersionModel> modules)  complite,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _CourseVersionLoad():
return load();case _CourseVersionError():
return error();case _CourseVersionComplited():
return complite(_that.modules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function()?  error,TResult? Function( List<CourseVersionModel> modules)?  complite,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CourseVersionLoad() when load != null:
return load();case _CourseVersionError() when error != null:
return error();case _CourseVersionComplited() when complite != null:
return complite(_that.modules);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CourseVersionState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseVersionState.initial()';
}


}




/// @nodoc


class _CourseVersionLoad implements CourseVersionState {
  const _CourseVersionLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseVersionLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseVersionState.load()';
}


}




/// @nodoc


class _CourseVersionError implements CourseVersionState {
  const _CourseVersionError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseVersionError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseVersionState.error()';
}


}




/// @nodoc


class _CourseVersionComplited implements CourseVersionState {
  const _CourseVersionComplited({required final  List<CourseVersionModel> modules}): _modules = modules;
  

 final  List<CourseVersionModel> _modules;
 List<CourseVersionModel> get modules {
  if (_modules is EqualUnmodifiableListView) return _modules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modules);
}


/// Create a copy of CourseVersionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseVersionComplitedCopyWith<_CourseVersionComplited> get copyWith => __$CourseVersionComplitedCopyWithImpl<_CourseVersionComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseVersionComplited&&const DeepCollectionEquality().equals(other._modules, _modules));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_modules));

@override
String toString() {
  return 'CourseVersionState.complite(modules: $modules)';
}


}

/// @nodoc
abstract mixin class _$CourseVersionComplitedCopyWith<$Res> implements $CourseVersionStateCopyWith<$Res> {
  factory _$CourseVersionComplitedCopyWith(_CourseVersionComplited value, $Res Function(_CourseVersionComplited) _then) = __$CourseVersionComplitedCopyWithImpl;
@useResult
$Res call({
 List<CourseVersionModel> modules
});




}
/// @nodoc
class __$CourseVersionComplitedCopyWithImpl<$Res>
    implements _$CourseVersionComplitedCopyWith<$Res> {
  __$CourseVersionComplitedCopyWithImpl(this._self, this._then);

  final _CourseVersionComplited _self;
  final $Res Function(_CourseVersionComplited) _then;

/// Create a copy of CourseVersionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? modules = null,}) {
  return _then(_CourseVersionComplited(
modules: null == modules ? _self._modules : modules // ignore: cast_nullable_to_non_nullable
as List<CourseVersionModel>,
  ));
}


}

// dart format on
