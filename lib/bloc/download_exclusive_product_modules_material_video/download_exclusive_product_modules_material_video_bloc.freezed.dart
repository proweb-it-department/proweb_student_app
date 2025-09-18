// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_exclusive_product_modules_material_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadExclusiveProductModulesMaterialVideoEvent {

 int get moduleId;
/// Create a copy of DownloadExclusiveProductModulesMaterialVideoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadExclusiveProductModulesMaterialVideoEventCopyWith<DownloadExclusiveProductModulesMaterialVideoEvent> get copyWith => _$DownloadExclusiveProductModulesMaterialVideoEventCopyWithImpl<DownloadExclusiveProductModulesMaterialVideoEvent>(this as DownloadExclusiveProductModulesMaterialVideoEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadExclusiveProductModulesMaterialVideoEvent&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId));
}


@override
int get hashCode => Object.hash(runtimeType,moduleId);

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideoEvent(moduleId: $moduleId)';
}


}

/// @nodoc
abstract mixin class $DownloadExclusiveProductModulesMaterialVideoEventCopyWith<$Res>  {
  factory $DownloadExclusiveProductModulesMaterialVideoEventCopyWith(DownloadExclusiveProductModulesMaterialVideoEvent value, $Res Function(DownloadExclusiveProductModulesMaterialVideoEvent) _then) = _$DownloadExclusiveProductModulesMaterialVideoEventCopyWithImpl;
@useResult
$Res call({
 int moduleId
});




}
/// @nodoc
class _$DownloadExclusiveProductModulesMaterialVideoEventCopyWithImpl<$Res>
    implements $DownloadExclusiveProductModulesMaterialVideoEventCopyWith<$Res> {
  _$DownloadExclusiveProductModulesMaterialVideoEventCopyWithImpl(this._self, this._then);

  final DownloadExclusiveProductModulesMaterialVideoEvent _self;
  final $Res Function(DownloadExclusiveProductModulesMaterialVideoEvent) _then;

/// Create a copy of DownloadExclusiveProductModulesMaterialVideoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? moduleId = null,}) {
  return _then(_self.copyWith(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadExclusiveProductModulesMaterialVideoEvent].
extension DownloadExclusiveProductModulesMaterialVideoEventPatterns on DownloadExclusiveProductModulesMaterialVideoEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int moduleId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.moduleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int moduleId)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.moduleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int moduleId)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.moduleId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DownloadExclusiveProductModulesMaterialVideoEvent {
  const _Started({required this.moduleId});
  

@override final  int moduleId;

/// Create a copy of DownloadExclusiveProductModulesMaterialVideoEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId));
}


@override
int get hashCode => Object.hash(runtimeType,moduleId);

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideoEvent.started(moduleId: $moduleId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $DownloadExclusiveProductModulesMaterialVideoEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 int moduleId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of DownloadExclusiveProductModulesMaterialVideoEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? moduleId = null,}) {
  return _then(_Started(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DownloadExclusiveProductModulesMaterialVideoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadExclusiveProductModulesMaterialVideoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideoState()';
}


}

/// @nodoc
class $DownloadExclusiveProductModulesMaterialVideoStateCopyWith<$Res>  {
$DownloadExclusiveProductModulesMaterialVideoStateCopyWith(DownloadExclusiveProductModulesMaterialVideoState _, $Res Function(DownloadExclusiveProductModulesMaterialVideoState) __);
}


/// Adds pattern-matching-related methods to [DownloadExclusiveProductModulesMaterialVideoState].
extension DownloadExclusiveProductModulesMaterialVideoStatePatterns on DownloadExclusiveProductModulesMaterialVideoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Load value)?  load,TResult Function( _Error value)?  error,TResult Function( _NotFound value)?  notFound,TResult Function( _Complited value)?  complited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Load value)  load,required TResult Function( _Error value)  error,required TResult Function( _NotFound value)  notFound,required TResult Function( _Complited value)  complited,}){
final _that = this;
switch (_that) {
case _Load():
return load(_that);case _Error():
return error(_that);case _NotFound():
return notFound(_that);case _Complited():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Load value)?  load,TResult? Function( _Error value)?  error,TResult? Function( _NotFound value)?  notFound,TResult? Function( _Complited value)?  complited,}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Complited() when complited != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function()?  error,TResult Function()?  notFound,TResult Function( List<ExclusiveProductModuleMaterialModelData> materials)?  complited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Complited() when complited != null:
return complited(_that.materials);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function()  error,required TResult Function()  notFound,required TResult Function( List<ExclusiveProductModuleMaterialModelData> materials)  complited,}) {final _that = this;
switch (_that) {
case _Load():
return load();case _Error():
return error();case _NotFound():
return notFound();case _Complited():
return complited(_that.materials);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function()?  error,TResult? Function()?  notFound,TResult? Function( List<ExclusiveProductModuleMaterialModelData> materials)?  complited,}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Complited() when complited != null:
return complited(_that.materials);case _:
  return null;

}
}

}

/// @nodoc


class _Load implements DownloadExclusiveProductModulesMaterialVideoState {
  const _Load();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideoState.load()';
}


}




/// @nodoc


class _Error implements DownloadExclusiveProductModulesMaterialVideoState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideoState.error()';
}


}




/// @nodoc


class _NotFound implements DownloadExclusiveProductModulesMaterialVideoState {
  const _NotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideoState.notFound()';
}


}




/// @nodoc


class _Complited implements DownloadExclusiveProductModulesMaterialVideoState {
  const _Complited({required final  List<ExclusiveProductModuleMaterialModelData> materials}): _materials = materials;
  

 final  List<ExclusiveProductModuleMaterialModelData> _materials;
 List<ExclusiveProductModuleMaterialModelData> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}


/// Create a copy of DownloadExclusiveProductModulesMaterialVideoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplitedCopyWith<_Complited> get copyWith => __$ComplitedCopyWithImpl<_Complited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complited&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideoState.complited(materials: $materials)';
}


}

/// @nodoc
abstract mixin class _$ComplitedCopyWith<$Res> implements $DownloadExclusiveProductModulesMaterialVideoStateCopyWith<$Res> {
  factory _$ComplitedCopyWith(_Complited value, $Res Function(_Complited) _then) = __$ComplitedCopyWithImpl;
@useResult
$Res call({
 List<ExclusiveProductModuleMaterialModelData> materials
});




}
/// @nodoc
class __$ComplitedCopyWithImpl<$Res>
    implements _$ComplitedCopyWith<$Res> {
  __$ComplitedCopyWithImpl(this._self, this._then);

  final _Complited _self;
  final $Res Function(_Complited) _then;

/// Create a copy of DownloadExclusiveProductModulesMaterialVideoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? materials = null,}) {
  return _then(_Complited(
materials: null == materials ? _self._materials : materials // ignore: cast_nullable_to_non_nullable
as List<ExclusiveProductModuleMaterialModelData>,
  ));
}


}

// dart format on
