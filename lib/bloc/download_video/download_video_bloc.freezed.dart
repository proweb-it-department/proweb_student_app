// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadVideoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadVideoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoEvent()';
}


}

/// @nodoc
class $DownloadVideoEventCopyWith<$Res>  {
$DownloadVideoEventCopyWith(DownloadVideoEvent _, $Res Function(DownloadVideoEvent) __);
}


/// Adds pattern-matching-related methods to [DownloadVideoEvent].
extension DownloadVideoEventPatterns on DownloadVideoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _DownloadVideoDownloader value)?  download,TResult Function( _DownloadVideoDelete value)?  delete,TResult Function( _DownloadVideoDeleteAll value)?  deleteAll,TResult Function( _DownloadVideoDeleteAllNotStorage value)?  deleteAllNotStorage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DownloadVideoDownloader() when download != null:
return download(_that);case _DownloadVideoDelete() when delete != null:
return delete(_that);case _DownloadVideoDeleteAll() when deleteAll != null:
return deleteAll(_that);case _DownloadVideoDeleteAllNotStorage() when deleteAllNotStorage != null:
return deleteAllNotStorage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _DownloadVideoDownloader value)  download,required TResult Function( _DownloadVideoDelete value)  delete,required TResult Function( _DownloadVideoDeleteAll value)  deleteAll,required TResult Function( _DownloadVideoDeleteAllNotStorage value)  deleteAllNotStorage,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _DownloadVideoDownloader():
return download(_that);case _DownloadVideoDelete():
return delete(_that);case _DownloadVideoDeleteAll():
return deleteAll(_that);case _DownloadVideoDeleteAllNotStorage():
return deleteAllNotStorage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _DownloadVideoDownloader value)?  download,TResult? Function( _DownloadVideoDelete value)?  delete,TResult? Function( _DownloadVideoDeleteAll value)?  deleteAll,TResult? Function( _DownloadVideoDeleteAllNotStorage value)?  deleteAllNotStorage,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DownloadVideoDownloader() when download != null:
return download(_that);case _DownloadVideoDelete() when delete != null:
return delete(_that);case _DownloadVideoDeleteAll() when deleteAll != null:
return deleteAll(_that);case _DownloadVideoDeleteAllNotStorage() when deleteAllNotStorage != null:
return deleteAllNotStorage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( VideoSendetModel download)?  download,TResult Function( String slug)?  delete,TResult Function()?  deleteAll,TResult Function()?  deleteAllNotStorage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DownloadVideoDownloader() when download != null:
return download(_that.download);case _DownloadVideoDelete() when delete != null:
return delete(_that.slug);case _DownloadVideoDeleteAll() when deleteAll != null:
return deleteAll();case _DownloadVideoDeleteAllNotStorage() when deleteAllNotStorage != null:
return deleteAllNotStorage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( VideoSendetModel download)  download,required TResult Function( String slug)  delete,required TResult Function()  deleteAll,required TResult Function()  deleteAllNotStorage,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _DownloadVideoDownloader():
return download(_that.download);case _DownloadVideoDelete():
return delete(_that.slug);case _DownloadVideoDeleteAll():
return deleteAll();case _DownloadVideoDeleteAllNotStorage():
return deleteAllNotStorage();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( VideoSendetModel download)?  download,TResult? Function( String slug)?  delete,TResult? Function()?  deleteAll,TResult? Function()?  deleteAllNotStorage,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DownloadVideoDownloader() when download != null:
return download(_that.download);case _DownloadVideoDelete() when delete != null:
return delete(_that.slug);case _DownloadVideoDeleteAll() when deleteAll != null:
return deleteAll();case _DownloadVideoDeleteAllNotStorage() when deleteAllNotStorage != null:
return deleteAllNotStorage();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DownloadVideoEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoEvent.started()';
}


}




/// @nodoc


class _DownloadVideoDownloader implements DownloadVideoEvent {
  const _DownloadVideoDownloader({required this.download});
  

 final  VideoSendetModel download;

/// Create a copy of DownloadVideoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadVideoDownloaderCopyWith<_DownloadVideoDownloader> get copyWith => __$DownloadVideoDownloaderCopyWithImpl<_DownloadVideoDownloader>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadVideoDownloader&&(identical(other.download, download) || other.download == download));
}


@override
int get hashCode => Object.hash(runtimeType,download);

@override
String toString() {
  return 'DownloadVideoEvent.download(download: $download)';
}


}

/// @nodoc
abstract mixin class _$DownloadVideoDownloaderCopyWith<$Res> implements $DownloadVideoEventCopyWith<$Res> {
  factory _$DownloadVideoDownloaderCopyWith(_DownloadVideoDownloader value, $Res Function(_DownloadVideoDownloader) _then) = __$DownloadVideoDownloaderCopyWithImpl;
@useResult
$Res call({
 VideoSendetModel download
});


$VideoSendetModelCopyWith<$Res> get download;

}
/// @nodoc
class __$DownloadVideoDownloaderCopyWithImpl<$Res>
    implements _$DownloadVideoDownloaderCopyWith<$Res> {
  __$DownloadVideoDownloaderCopyWithImpl(this._self, this._then);

  final _DownloadVideoDownloader _self;
  final $Res Function(_DownloadVideoDownloader) _then;

/// Create a copy of DownloadVideoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? download = null,}) {
  return _then(_DownloadVideoDownloader(
download: null == download ? _self.download : download // ignore: cast_nullable_to_non_nullable
as VideoSendetModel,
  ));
}

/// Create a copy of DownloadVideoEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoSendetModelCopyWith<$Res> get download {
  
  return $VideoSendetModelCopyWith<$Res>(_self.download, (value) {
    return _then(_self.copyWith(download: value));
  });
}
}

/// @nodoc


class _DownloadVideoDelete implements DownloadVideoEvent {
  const _DownloadVideoDelete({required this.slug});
  

 final  String slug;

/// Create a copy of DownloadVideoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadVideoDeleteCopyWith<_DownloadVideoDelete> get copyWith => __$DownloadVideoDeleteCopyWithImpl<_DownloadVideoDelete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadVideoDelete&&(identical(other.slug, slug) || other.slug == slug));
}


@override
int get hashCode => Object.hash(runtimeType,slug);

@override
String toString() {
  return 'DownloadVideoEvent.delete(slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$DownloadVideoDeleteCopyWith<$Res> implements $DownloadVideoEventCopyWith<$Res> {
  factory _$DownloadVideoDeleteCopyWith(_DownloadVideoDelete value, $Res Function(_DownloadVideoDelete) _then) = __$DownloadVideoDeleteCopyWithImpl;
@useResult
$Res call({
 String slug
});




}
/// @nodoc
class __$DownloadVideoDeleteCopyWithImpl<$Res>
    implements _$DownloadVideoDeleteCopyWith<$Res> {
  __$DownloadVideoDeleteCopyWithImpl(this._self, this._then);

  final _DownloadVideoDelete _self;
  final $Res Function(_DownloadVideoDelete) _then;

/// Create a copy of DownloadVideoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slug = null,}) {
  return _then(_DownloadVideoDelete(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DownloadVideoDeleteAll implements DownloadVideoEvent {
  const _DownloadVideoDeleteAll();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadVideoDeleteAll);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoEvent.deleteAll()';
}


}




/// @nodoc


class _DownloadVideoDeleteAllNotStorage implements DownloadVideoEvent {
  const _DownloadVideoDeleteAllNotStorage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadVideoDeleteAllNotStorage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoEvent.deleteAllNotStorage()';
}


}




/// @nodoc
mixin _$DownloadVideoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadVideoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoState()';
}


}

/// @nodoc
class $DownloadVideoStateCopyWith<$Res>  {
$DownloadVideoStateCopyWith(DownloadVideoState _, $Res Function(DownloadVideoState) __);
}


/// Adds pattern-matching-related methods to [DownloadVideoState].
extension DownloadVideoStatePatterns on DownloadVideoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _DownloadVideoVideos value)?  download,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _DownloadVideoVideos() when download != null:
return download(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _DownloadVideoVideos value)  download,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _DownloadVideoVideos():
return download(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _DownloadVideoVideos value)?  download,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _DownloadVideoVideos() when download != null:
return download(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( VideoSendetModel? download,  List<VideoSavedData> downloaders)?  download,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _DownloadVideoVideos() when download != null:
return download(_that.download,_that.downloaders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( VideoSendetModel? download,  List<VideoSavedData> downloaders)  download,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _DownloadVideoVideos():
return download(_that.download,_that.downloaders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( VideoSendetModel? download,  List<VideoSavedData> downloaders)?  download,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _DownloadVideoVideos() when download != null:
return download(_that.download,_that.downloaders);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DownloadVideoState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadVideoState.initial()';
}


}




/// @nodoc


class _DownloadVideoVideos implements DownloadVideoState {
  const _DownloadVideoVideos({this.download, required final  List<VideoSavedData> downloaders}): _downloaders = downloaders;
  

 final  VideoSendetModel? download;
 final  List<VideoSavedData> _downloaders;
 List<VideoSavedData> get downloaders {
  if (_downloaders is EqualUnmodifiableListView) return _downloaders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_downloaders);
}


/// Create a copy of DownloadVideoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadVideoVideosCopyWith<_DownloadVideoVideos> get copyWith => __$DownloadVideoVideosCopyWithImpl<_DownloadVideoVideos>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadVideoVideos&&(identical(other.download, download) || other.download == download)&&const DeepCollectionEquality().equals(other._downloaders, _downloaders));
}


@override
int get hashCode => Object.hash(runtimeType,download,const DeepCollectionEquality().hash(_downloaders));

@override
String toString() {
  return 'DownloadVideoState.download(download: $download, downloaders: $downloaders)';
}


}

/// @nodoc
abstract mixin class _$DownloadVideoVideosCopyWith<$Res> implements $DownloadVideoStateCopyWith<$Res> {
  factory _$DownloadVideoVideosCopyWith(_DownloadVideoVideos value, $Res Function(_DownloadVideoVideos) _then) = __$DownloadVideoVideosCopyWithImpl;
@useResult
$Res call({
 VideoSendetModel? download, List<VideoSavedData> downloaders
});


$VideoSendetModelCopyWith<$Res>? get download;

}
/// @nodoc
class __$DownloadVideoVideosCopyWithImpl<$Res>
    implements _$DownloadVideoVideosCopyWith<$Res> {
  __$DownloadVideoVideosCopyWithImpl(this._self, this._then);

  final _DownloadVideoVideos _self;
  final $Res Function(_DownloadVideoVideos) _then;

/// Create a copy of DownloadVideoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? download = freezed,Object? downloaders = null,}) {
  return _then(_DownloadVideoVideos(
download: freezed == download ? _self.download : download // ignore: cast_nullable_to_non_nullable
as VideoSendetModel?,downloaders: null == downloaders ? _self._downloaders : downloaders // ignore: cast_nullable_to_non_nullable
as List<VideoSavedData>,
  ));
}

/// Create a copy of DownloadVideoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoSendetModelCopyWith<$Res>? get download {
    if (_self.download == null) {
    return null;
  }

  return $VideoSendetModelCopyWith<$Res>(_self.download!, (value) {
    return _then(_self.copyWith(download: value));
  });
}
}

// dart format on
