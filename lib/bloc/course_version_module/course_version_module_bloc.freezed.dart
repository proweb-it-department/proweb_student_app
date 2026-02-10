// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_version_module_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseVersionModuleEvent {

 int get versionId;
/// Create a copy of CourseVersionModuleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseVersionModuleEventCopyWith<CourseVersionModuleEvent> get copyWith => _$CourseVersionModuleEventCopyWithImpl<CourseVersionModuleEvent>(this as CourseVersionModuleEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseVersionModuleEvent&&(identical(other.versionId, versionId) || other.versionId == versionId));
}


@override
int get hashCode => Object.hash(runtimeType,versionId);

@override
String toString() {
  return 'CourseVersionModuleEvent(versionId: $versionId)';
}


}

/// @nodoc
abstract mixin class $CourseVersionModuleEventCopyWith<$Res>  {
  factory $CourseVersionModuleEventCopyWith(CourseVersionModuleEvent value, $Res Function(CourseVersionModuleEvent) _then) = _$CourseVersionModuleEventCopyWithImpl;
@useResult
$Res call({
 int versionId
});




}
/// @nodoc
class _$CourseVersionModuleEventCopyWithImpl<$Res>
    implements $CourseVersionModuleEventCopyWith<$Res> {
  _$CourseVersionModuleEventCopyWithImpl(this._self, this._then);

  final CourseVersionModuleEvent _self;
  final $Res Function(CourseVersionModuleEvent) _then;

/// Create a copy of CourseVersionModuleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? versionId = null,}) {
  return _then(_self.copyWith(
versionId: null == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseVersionModuleEvent].
extension CourseVersionModuleEventPatterns on CourseVersionModuleEvent {
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
return started(_that.versionId);}
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


class _Started implements CourseVersionModuleEvent {
  const _Started({required this.versionId});
  

@override final  int versionId;

/// Create a copy of CourseVersionModuleEvent
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
  return 'CourseVersionModuleEvent.started(versionId: $versionId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $CourseVersionModuleEventCopyWith<$Res> {
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

/// Create a copy of CourseVersionModuleEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? versionId = null,}) {
  return _then(_Started(
versionId: null == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CourseVersionModuleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseVersionModuleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseVersionModuleState()';
}


}

/// @nodoc
class $CourseVersionModuleStateCopyWith<$Res>  {
$CourseVersionModuleStateCopyWith(CourseVersionModuleState _, $Res Function(CourseVersionModuleState) __);
}


/// Adds pattern-matching-related methods to [CourseVersionModuleState].
extension CourseVersionModuleStatePatterns on CourseVersionModuleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CourseVersionModuleInitail value)?  initial,TResult Function( CourseVersionModuleError value)?  error,TResult Function( CourseVersionModuleComplited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CourseVersionModuleInitail() when initial != null:
return initial(_that);case CourseVersionModuleError() when error != null:
return error(_that);case CourseVersionModuleComplited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CourseVersionModuleInitail value)  initial,required TResult Function( CourseVersionModuleError value)  error,required TResult Function( CourseVersionModuleComplited value)  complited,}){
final _that = this;
switch (_that) {
case CourseVersionModuleInitail():
return initial(_that);case CourseVersionModuleError():
return error(_that);case CourseVersionModuleComplited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CourseVersionModuleInitail value)?  initial,TResult? Function( CourseVersionModuleError value)?  error,TResult? Function( CourseVersionModuleComplited value)?  complited,}){
final _that = this;
switch (_that) {
case CourseVersionModuleInitail() when initial != null:
return initial(_that);case CourseVersionModuleError() when error != null:
return error(_that);case CourseVersionModuleComplited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  error,TResult Function( List<CourseVersionModel> modules)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CourseVersionModuleInitail() when initial != null:
return initial();case CourseVersionModuleError() when error != null:
return error();case CourseVersionModuleComplited() when complited != null:
return complited(_that.modules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  error,required TResult Function( List<CourseVersionModel> modules)  complited,}) {final _that = this;
switch (_that) {
case CourseVersionModuleInitail():
return initial();case CourseVersionModuleError():
return error();case CourseVersionModuleComplited():
return complited(_that.modules);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  error,TResult? Function( List<CourseVersionModel> modules)?  complited,}) {final _that = this;
switch (_that) {
case CourseVersionModuleInitail() when initial != null:
return initial();case CourseVersionModuleError() when error != null:
return error();case CourseVersionModuleComplited() when complited != null:
return complited(_that.modules);case _:
  return null;

}
}

}

/// @nodoc


class CourseVersionModuleInitail implements CourseVersionModuleState {
  const CourseVersionModuleInitail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseVersionModuleInitail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseVersionModuleState.initial()';
}


}




/// @nodoc


class CourseVersionModuleError implements CourseVersionModuleState {
  const CourseVersionModuleError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseVersionModuleError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseVersionModuleState.error()';
}


}




/// @nodoc


class CourseVersionModuleComplited implements CourseVersionModuleState {
  const CourseVersionModuleComplited({required final  List<CourseVersionModel> modules}): _modules = modules;
  

 final  List<CourseVersionModel> _modules;
 List<CourseVersionModel> get modules {
  if (_modules is EqualUnmodifiableListView) return _modules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modules);
}


/// Create a copy of CourseVersionModuleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseVersionModuleComplitedCopyWith<CourseVersionModuleComplited> get copyWith => _$CourseVersionModuleComplitedCopyWithImpl<CourseVersionModuleComplited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseVersionModuleComplited&&const DeepCollectionEquality().equals(other._modules, _modules));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_modules));

@override
String toString() {
  return 'CourseVersionModuleState.complited(modules: $modules)';
}


}

/// @nodoc
abstract mixin class $CourseVersionModuleComplitedCopyWith<$Res> implements $CourseVersionModuleStateCopyWith<$Res> {
  factory $CourseVersionModuleComplitedCopyWith(CourseVersionModuleComplited value, $Res Function(CourseVersionModuleComplited) _then) = _$CourseVersionModuleComplitedCopyWithImpl;
@useResult
$Res call({
 List<CourseVersionModel> modules
});




}
/// @nodoc
class _$CourseVersionModuleComplitedCopyWithImpl<$Res>
    implements $CourseVersionModuleComplitedCopyWith<$Res> {
  _$CourseVersionModuleComplitedCopyWithImpl(this._self, this._then);

  final CourseVersionModuleComplited _self;
  final $Res Function(CourseVersionModuleComplited) _then;

/// Create a copy of CourseVersionModuleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? modules = null,}) {
  return _then(CourseVersionModuleComplited(
modules: null == modules ? _self._modules : modules // ignore: cast_nullable_to_non_nullable
as List<CourseVersionModel>,
  ));
}


}

// dart format on
