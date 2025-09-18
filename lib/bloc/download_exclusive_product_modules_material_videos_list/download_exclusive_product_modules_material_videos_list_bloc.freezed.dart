// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_exclusive_product_modules_material_videos_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadExclusiveProductModulesMaterialVideosListEvent {

 int get materialId;
/// Create a copy of DownloadExclusiveProductModulesMaterialVideosListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadExclusiveProductModulesMaterialVideosListEventCopyWith<DownloadExclusiveProductModulesMaterialVideosListEvent> get copyWith => _$DownloadExclusiveProductModulesMaterialVideosListEventCopyWithImpl<DownloadExclusiveProductModulesMaterialVideosListEvent>(this as DownloadExclusiveProductModulesMaterialVideosListEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadExclusiveProductModulesMaterialVideosListEvent&&(identical(other.materialId, materialId) || other.materialId == materialId));
}


@override
int get hashCode => Object.hash(runtimeType,materialId);

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideosListEvent(materialId: $materialId)';
}


}

/// @nodoc
abstract mixin class $DownloadExclusiveProductModulesMaterialVideosListEventCopyWith<$Res>  {
  factory $DownloadExclusiveProductModulesMaterialVideosListEventCopyWith(DownloadExclusiveProductModulesMaterialVideosListEvent value, $Res Function(DownloadExclusiveProductModulesMaterialVideosListEvent) _then) = _$DownloadExclusiveProductModulesMaterialVideosListEventCopyWithImpl;
@useResult
$Res call({
 int materialId
});




}
/// @nodoc
class _$DownloadExclusiveProductModulesMaterialVideosListEventCopyWithImpl<$Res>
    implements $DownloadExclusiveProductModulesMaterialVideosListEventCopyWith<$Res> {
  _$DownloadExclusiveProductModulesMaterialVideosListEventCopyWithImpl(this._self, this._then);

  final DownloadExclusiveProductModulesMaterialVideosListEvent _self;
  final $Res Function(DownloadExclusiveProductModulesMaterialVideosListEvent) _then;

/// Create a copy of DownloadExclusiveProductModulesMaterialVideosListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materialId = null,}) {
  return _then(_self.copyWith(
materialId: null == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadExclusiveProductModulesMaterialVideosListEvent].
extension DownloadExclusiveProductModulesMaterialVideosListEventPatterns on DownloadExclusiveProductModulesMaterialVideosListEvent {
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


class _Started implements DownloadExclusiveProductModulesMaterialVideosListEvent {
  const _Started({required this.materialId});
  

@override final  int materialId;

/// Create a copy of DownloadExclusiveProductModulesMaterialVideosListEvent
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
  return 'DownloadExclusiveProductModulesMaterialVideosListEvent.started(materialId: $materialId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $DownloadExclusiveProductModulesMaterialVideosListEventCopyWith<$Res> {
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

/// Create a copy of DownloadExclusiveProductModulesMaterialVideosListEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? materialId = null,}) {
  return _then(_Started(
materialId: null == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DownloadExclusiveProductModulesMaterialVideosListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadExclusiveProductModulesMaterialVideosListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideosListState()';
}


}

/// @nodoc
class $DownloadExclusiveProductModulesMaterialVideosListStateCopyWith<$Res>  {
$DownloadExclusiveProductModulesMaterialVideosListStateCopyWith(DownloadExclusiveProductModulesMaterialVideosListState _, $Res Function(DownloadExclusiveProductModulesMaterialVideosListState) __);
}


/// Adds pattern-matching-related methods to [DownloadExclusiveProductModulesMaterialVideosListState].
extension DownloadExclusiveProductModulesMaterialVideosListStatePatterns on DownloadExclusiveProductModulesMaterialVideosListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Load value)?  load,TResult Function( _Error value)?  error,TResult Function( _NotFound value)?  notFound,TResult Function( _Complited value)?  coplited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Complited() when coplited != null:
return coplited(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Load value)  load,required TResult Function( _Error value)  error,required TResult Function( _NotFound value)  notFound,required TResult Function( _Complited value)  coplited,}){
final _that = this;
switch (_that) {
case _Load():
return load(_that);case _Error():
return error(_that);case _NotFound():
return notFound(_that);case _Complited():
return coplited(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Load value)?  load,TResult? Function( _Error value)?  error,TResult? Function( _NotFound value)?  notFound,TResult? Function( _Complited value)?  coplited,}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _Error() when error != null:
return error(_that);case _NotFound() when notFound != null:
return notFound(_that);case _Complited() when coplited != null:
return coplited(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function()?  error,TResult Function()?  notFound,TResult Function( List<VideoSavedData> videos)?  coplited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Complited() when coplited != null:
return coplited(_that.videos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function()  error,required TResult Function()  notFound,required TResult Function( List<VideoSavedData> videos)  coplited,}) {final _that = this;
switch (_that) {
case _Load():
return load();case _Error():
return error();case _NotFound():
return notFound();case _Complited():
return coplited(_that.videos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function()?  error,TResult? Function()?  notFound,TResult? Function( List<VideoSavedData> videos)?  coplited,}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load();case _Error() when error != null:
return error();case _NotFound() when notFound != null:
return notFound();case _Complited() when coplited != null:
return coplited(_that.videos);case _:
  return null;

}
}

}

/// @nodoc


class _Load implements DownloadExclusiveProductModulesMaterialVideosListState {
  const _Load();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideosListState.load()';
}


}




/// @nodoc


class _Error implements DownloadExclusiveProductModulesMaterialVideosListState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideosListState.error()';
}


}




/// @nodoc


class _NotFound implements DownloadExclusiveProductModulesMaterialVideosListState {
  const _NotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideosListState.notFound()';
}


}




/// @nodoc


class _Complited implements DownloadExclusiveProductModulesMaterialVideosListState {
  const _Complited({required final  List<VideoSavedData> videos}): _videos = videos;
  

 final  List<VideoSavedData> _videos;
 List<VideoSavedData> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}


/// Create a copy of DownloadExclusiveProductModulesMaterialVideosListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplitedCopyWith<_Complited> get copyWith => __$ComplitedCopyWithImpl<_Complited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complited&&const DeepCollectionEquality().equals(other._videos, _videos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_videos));

@override
String toString() {
  return 'DownloadExclusiveProductModulesMaterialVideosListState.coplited(videos: $videos)';
}


}

/// @nodoc
abstract mixin class _$ComplitedCopyWith<$Res> implements $DownloadExclusiveProductModulesMaterialVideosListStateCopyWith<$Res> {
  factory _$ComplitedCopyWith(_Complited value, $Res Function(_Complited) _then) = __$ComplitedCopyWithImpl;
@useResult
$Res call({
 List<VideoSavedData> videos
});




}
/// @nodoc
class __$ComplitedCopyWithImpl<$Res>
    implements _$ComplitedCopyWith<$Res> {
  __$ComplitedCopyWithImpl(this._self, this._then);

  final _Complited _self;
  final $Res Function(_Complited) _then;

/// Create a copy of DownloadExclusiveProductModulesMaterialVideosListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? videos = null,}) {
  return _then(_Complited(
videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<VideoSavedData>,
  ));
}


}

// dart format on
