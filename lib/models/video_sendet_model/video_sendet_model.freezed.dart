// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_sendet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoSendetModel {

 String get slug; String get playlist; int get progress; ProgressTypeDownloadVideo get progressType; String? get preview; String? get title; int? get size; int? get duration; String? get key;
/// Create a copy of VideoSendetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoSendetModelCopyWith<VideoSendetModel> get copyWith => _$VideoSendetModelCopyWithImpl<VideoSendetModel>(this as VideoSendetModel, _$identity);

  /// Serializes this VideoSendetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoSendetModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.playlist, playlist) || other.playlist == playlist)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.progressType, progressType) || other.progressType == progressType)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.title, title) || other.title == title)&&(identical(other.size, size) || other.size == size)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,playlist,progress,progressType,preview,title,size,duration,key);

@override
String toString() {
  return 'VideoSendetModel(slug: $slug, playlist: $playlist, progress: $progress, progressType: $progressType, preview: $preview, title: $title, size: $size, duration: $duration, key: $key)';
}


}

/// @nodoc
abstract mixin class $VideoSendetModelCopyWith<$Res>  {
  factory $VideoSendetModelCopyWith(VideoSendetModel value, $Res Function(VideoSendetModel) _then) = _$VideoSendetModelCopyWithImpl;
@useResult
$Res call({
 String slug, String playlist, int progress, ProgressTypeDownloadVideo progressType, String? preview, String? title, int? size, int? duration, String? key
});




}
/// @nodoc
class _$VideoSendetModelCopyWithImpl<$Res>
    implements $VideoSendetModelCopyWith<$Res> {
  _$VideoSendetModelCopyWithImpl(this._self, this._then);

  final VideoSendetModel _self;
  final $Res Function(VideoSendetModel) _then;

/// Create a copy of VideoSendetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? playlist = null,Object? progress = null,Object? progressType = null,Object? preview = freezed,Object? title = freezed,Object? size = freezed,Object? duration = freezed,Object? key = freezed,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,playlist: null == playlist ? _self.playlist : playlist // ignore: cast_nullable_to_non_nullable
as String,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,progressType: null == progressType ? _self.progressType : progressType // ignore: cast_nullable_to_non_nullable
as ProgressTypeDownloadVideo,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoSendetModel].
extension VideoSendetModelPatterns on VideoSendetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoSendetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoSendetModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoSendetModel value)  $default,){
final _that = this;
switch (_that) {
case _VideoSendetModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoSendetModel value)?  $default,){
final _that = this;
switch (_that) {
case _VideoSendetModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String playlist,  int progress,  ProgressTypeDownloadVideo progressType,  String? preview,  String? title,  int? size,  int? duration,  String? key)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoSendetModel() when $default != null:
return $default(_that.slug,_that.playlist,_that.progress,_that.progressType,_that.preview,_that.title,_that.size,_that.duration,_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String playlist,  int progress,  ProgressTypeDownloadVideo progressType,  String? preview,  String? title,  int? size,  int? duration,  String? key)  $default,) {final _that = this;
switch (_that) {
case _VideoSendetModel():
return $default(_that.slug,_that.playlist,_that.progress,_that.progressType,_that.preview,_that.title,_that.size,_that.duration,_that.key);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String playlist,  int progress,  ProgressTypeDownloadVideo progressType,  String? preview,  String? title,  int? size,  int? duration,  String? key)?  $default,) {final _that = this;
switch (_that) {
case _VideoSendetModel() when $default != null:
return $default(_that.slug,_that.playlist,_that.progress,_that.progressType,_that.preview,_that.title,_that.size,_that.duration,_that.key);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoSendetModel implements VideoSendetModel {
  const _VideoSendetModel({required this.slug, required this.playlist, required this.progress, required this.progressType, this.preview, this.title, this.size, this.duration, this.key});
  factory _VideoSendetModel.fromJson(Map<String, dynamic> json) => _$VideoSendetModelFromJson(json);

@override final  String slug;
@override final  String playlist;
@override final  int progress;
@override final  ProgressTypeDownloadVideo progressType;
@override final  String? preview;
@override final  String? title;
@override final  int? size;
@override final  int? duration;
@override final  String? key;

/// Create a copy of VideoSendetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoSendetModelCopyWith<_VideoSendetModel> get copyWith => __$VideoSendetModelCopyWithImpl<_VideoSendetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoSendetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoSendetModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.playlist, playlist) || other.playlist == playlist)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.progressType, progressType) || other.progressType == progressType)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.title, title) || other.title == title)&&(identical(other.size, size) || other.size == size)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,playlist,progress,progressType,preview,title,size,duration,key);

@override
String toString() {
  return 'VideoSendetModel(slug: $slug, playlist: $playlist, progress: $progress, progressType: $progressType, preview: $preview, title: $title, size: $size, duration: $duration, key: $key)';
}


}

/// @nodoc
abstract mixin class _$VideoSendetModelCopyWith<$Res> implements $VideoSendetModelCopyWith<$Res> {
  factory _$VideoSendetModelCopyWith(_VideoSendetModel value, $Res Function(_VideoSendetModel) _then) = __$VideoSendetModelCopyWithImpl;
@override @useResult
$Res call({
 String slug, String playlist, int progress, ProgressTypeDownloadVideo progressType, String? preview, String? title, int? size, int? duration, String? key
});




}
/// @nodoc
class __$VideoSendetModelCopyWithImpl<$Res>
    implements _$VideoSendetModelCopyWith<$Res> {
  __$VideoSendetModelCopyWithImpl(this._self, this._then);

  final _VideoSendetModel _self;
  final $Res Function(_VideoSendetModel) _then;

/// Create a copy of VideoSendetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? playlist = null,Object? progress = null,Object? progressType = null,Object? preview = freezed,Object? title = freezed,Object? size = freezed,Object? duration = freezed,Object? key = freezed,}) {
  return _then(_VideoSendetModel(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,playlist: null == playlist ? _self.playlist : playlist // ignore: cast_nullable_to_non_nullable
as String,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,progressType: null == progressType ? _self.progressType : progressType // ignore: cast_nullable_to_non_nullable
as ProgressTypeDownloadVideo,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
