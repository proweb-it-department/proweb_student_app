// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'preview') String? get preview;@JsonKey(name: 'durations') int? get durations;@JsonKey(name: 'playlist') String? get playlist;@JsonKey(name: 'status') StatusVideoData? get status;@JsonKey(name: 'sample_times') List<int>? get sampleTimes;@JsonKey(name: 'size') int? get size;@JsonKey(name: 'raw_size') int? get rawSize;@JsonKey(name: 'processing_percentage') int? get processingPercentage;@JsonKey(name: 'time_codes') List<TimeCodes>? get timeCodes;@JsonKey(name: 'is_download') bool? get isDownload;@JsonKey(name: 'watched') List<Watched>? get watched;
/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoModelCopyWith<VideoModel> get copyWith => _$VideoModelCopyWithImpl<VideoModel>(this as VideoModel, _$identity);

  /// Serializes this VideoModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'VideoModel'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('preview', preview))..add(DiagnosticsProperty('durations', durations))..add(DiagnosticsProperty('playlist', playlist))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('sampleTimes', sampleTimes))..add(DiagnosticsProperty('size', size))..add(DiagnosticsProperty('rawSize', rawSize))..add(DiagnosticsProperty('processingPercentage', processingPercentage))..add(DiagnosticsProperty('timeCodes', timeCodes))..add(DiagnosticsProperty('isDownload', isDownload))..add(DiagnosticsProperty('watched', watched));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.durations, durations) || other.durations == durations)&&(identical(other.playlist, playlist) || other.playlist == playlist)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.sampleTimes, sampleTimes)&&(identical(other.size, size) || other.size == size)&&(identical(other.rawSize, rawSize) || other.rawSize == rawSize)&&(identical(other.processingPercentage, processingPercentage) || other.processingPercentage == processingPercentage)&&const DeepCollectionEquality().equals(other.timeCodes, timeCodes)&&(identical(other.isDownload, isDownload) || other.isDownload == isDownload)&&const DeepCollectionEquality().equals(other.watched, watched));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,title,description,slug,preview,durations,playlist,status,const DeepCollectionEquality().hash(sampleTimes),size,rawSize,processingPercentage,const DeepCollectionEquality().hash(timeCodes),isDownload,const DeepCollectionEquality().hash(watched)]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'VideoModel(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, title: $title, description: $description, slug: $slug, preview: $preview, durations: $durations, playlist: $playlist, status: $status, sampleTimes: $sampleTimes, size: $size, rawSize: $rawSize, processingPercentage: $processingPercentage, timeCodes: $timeCodes, isDownload: $isDownload, watched: $watched)';
}


}

/// @nodoc
abstract mixin class $VideoModelCopyWith<$Res>  {
  factory $VideoModelCopyWith(VideoModel value, $Res Function(VideoModel) _then) = _$VideoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'preview') String? preview,@JsonKey(name: 'durations') int? durations,@JsonKey(name: 'playlist') String? playlist,@JsonKey(name: 'status') StatusVideoData? status,@JsonKey(name: 'sample_times') List<int>? sampleTimes,@JsonKey(name: 'size') int? size,@JsonKey(name: 'raw_size') int? rawSize,@JsonKey(name: 'processing_percentage') int? processingPercentage,@JsonKey(name: 'time_codes') List<TimeCodes>? timeCodes,@JsonKey(name: 'is_download') bool? isDownload,@JsonKey(name: 'watched') List<Watched>? watched
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class _$VideoModelCopyWithImpl<$Res>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._self, this._then);

  final VideoModel _self;
  final $Res Function(VideoModel) _then;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? slug = freezed,Object? preview = freezed,Object? durations = freezed,Object? playlist = freezed,Object? status = freezed,Object? sampleTimes = freezed,Object? size = freezed,Object? rawSize = freezed,Object? processingPercentage = freezed,Object? timeCodes = freezed,Object? isDownload = freezed,Object? watched = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,durations: freezed == durations ? _self.durations : durations // ignore: cast_nullable_to_non_nullable
as int?,playlist: freezed == playlist ? _self.playlist : playlist // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusVideoData?,sampleTimes: freezed == sampleTimes ? _self.sampleTimes : sampleTimes // ignore: cast_nullable_to_non_nullable
as List<int>?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,rawSize: freezed == rawSize ? _self.rawSize : rawSize // ignore: cast_nullable_to_non_nullable
as int?,processingPercentage: freezed == processingPercentage ? _self.processingPercentage : processingPercentage // ignore: cast_nullable_to_non_nullable
as int?,timeCodes: freezed == timeCodes ? _self.timeCodes : timeCodes // ignore: cast_nullable_to_non_nullable
as List<TimeCodes>?,isDownload: freezed == isDownload ? _self.isDownload : isDownload // ignore: cast_nullable_to_non_nullable
as bool?,watched: freezed == watched ? _self.watched : watched // ignore: cast_nullable_to_non_nullable
as List<Watched>?,
  ));
}
/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoModel].
extension VideoModelPatterns on VideoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoModel value)  $default,){
final _that = this;
switch (_that) {
case _VideoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoModel value)?  $default,){
final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'preview')  String? preview, @JsonKey(name: 'durations')  int? durations, @JsonKey(name: 'playlist')  String? playlist, @JsonKey(name: 'status')  StatusVideoData? status, @JsonKey(name: 'sample_times')  List<int>? sampleTimes, @JsonKey(name: 'size')  int? size, @JsonKey(name: 'raw_size')  int? rawSize, @JsonKey(name: 'processing_percentage')  int? processingPercentage, @JsonKey(name: 'time_codes')  List<TimeCodes>? timeCodes, @JsonKey(name: 'is_download')  bool? isDownload, @JsonKey(name: 'watched')  List<Watched>? watched)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.title,_that.description,_that.slug,_that.preview,_that.durations,_that.playlist,_that.status,_that.sampleTimes,_that.size,_that.rawSize,_that.processingPercentage,_that.timeCodes,_that.isDownload,_that.watched);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'preview')  String? preview, @JsonKey(name: 'durations')  int? durations, @JsonKey(name: 'playlist')  String? playlist, @JsonKey(name: 'status')  StatusVideoData? status, @JsonKey(name: 'sample_times')  List<int>? sampleTimes, @JsonKey(name: 'size')  int? size, @JsonKey(name: 'raw_size')  int? rawSize, @JsonKey(name: 'processing_percentage')  int? processingPercentage, @JsonKey(name: 'time_codes')  List<TimeCodes>? timeCodes, @JsonKey(name: 'is_download')  bool? isDownload, @JsonKey(name: 'watched')  List<Watched>? watched)  $default,) {final _that = this;
switch (_that) {
case _VideoModel():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.title,_that.description,_that.slug,_that.preview,_that.durations,_that.playlist,_that.status,_that.sampleTimes,_that.size,_that.rawSize,_that.processingPercentage,_that.timeCodes,_that.isDownload,_that.watched);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'preview')  String? preview, @JsonKey(name: 'durations')  int? durations, @JsonKey(name: 'playlist')  String? playlist, @JsonKey(name: 'status')  StatusVideoData? status, @JsonKey(name: 'sample_times')  List<int>? sampleTimes, @JsonKey(name: 'size')  int? size, @JsonKey(name: 'raw_size')  int? rawSize, @JsonKey(name: 'processing_percentage')  int? processingPercentage, @JsonKey(name: 'time_codes')  List<TimeCodes>? timeCodes, @JsonKey(name: 'is_download')  bool? isDownload, @JsonKey(name: 'watched')  List<Watched>? watched)?  $default,) {final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.title,_that.description,_that.slug,_that.preview,_that.durations,_that.playlist,_that.status,_that.sampleTimes,_that.size,_that.rawSize,_that.processingPercentage,_that.timeCodes,_that.isDownload,_that.watched);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoModel with DiagnosticableTreeMixin implements VideoModel {
  const _VideoModel({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title, @JsonKey(name: 'description') this.description, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'preview') this.preview, @JsonKey(name: 'durations') this.durations, @JsonKey(name: 'playlist') this.playlist, @JsonKey(name: 'status') this.status, @JsonKey(name: 'sample_times') final  List<int>? sampleTimes, @JsonKey(name: 'size') this.size, @JsonKey(name: 'raw_size') this.rawSize, @JsonKey(name: 'processing_percentage') this.processingPercentage, @JsonKey(name: 'time_codes') final  List<TimeCodes>? timeCodes, @JsonKey(name: 'is_download') this.isDownload, @JsonKey(name: 'watched') final  List<Watched>? watched}): _sampleTimes = sampleTimes,_timeCodes = timeCodes,_watched = watched;
  factory _VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'preview') final  String? preview;
@override@JsonKey(name: 'durations') final  int? durations;
@override@JsonKey(name: 'playlist') final  String? playlist;
@override@JsonKey(name: 'status') final  StatusVideoData? status;
 final  List<int>? _sampleTimes;
@override@JsonKey(name: 'sample_times') List<int>? get sampleTimes {
  final value = _sampleTimes;
  if (value == null) return null;
  if (_sampleTimes is EqualUnmodifiableListView) return _sampleTimes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'size') final  int? size;
@override@JsonKey(name: 'raw_size') final  int? rawSize;
@override@JsonKey(name: 'processing_percentage') final  int? processingPercentage;
 final  List<TimeCodes>? _timeCodes;
@override@JsonKey(name: 'time_codes') List<TimeCodes>? get timeCodes {
  final value = _timeCodes;
  if (value == null) return null;
  if (_timeCodes is EqualUnmodifiableListView) return _timeCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'is_download') final  bool? isDownload;
 final  List<Watched>? _watched;
@override@JsonKey(name: 'watched') List<Watched>? get watched {
  final value = _watched;
  if (value == null) return null;
  if (_watched is EqualUnmodifiableListView) return _watched;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoModelCopyWith<_VideoModel> get copyWith => __$VideoModelCopyWithImpl<_VideoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'VideoModel'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('preview', preview))..add(DiagnosticsProperty('durations', durations))..add(DiagnosticsProperty('playlist', playlist))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('sampleTimes', sampleTimes))..add(DiagnosticsProperty('size', size))..add(DiagnosticsProperty('rawSize', rawSize))..add(DiagnosticsProperty('processingPercentage', processingPercentage))..add(DiagnosticsProperty('timeCodes', timeCodes))..add(DiagnosticsProperty('isDownload', isDownload))..add(DiagnosticsProperty('watched', watched));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.durations, durations) || other.durations == durations)&&(identical(other.playlist, playlist) || other.playlist == playlist)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._sampleTimes, _sampleTimes)&&(identical(other.size, size) || other.size == size)&&(identical(other.rawSize, rawSize) || other.rawSize == rawSize)&&(identical(other.processingPercentage, processingPercentage) || other.processingPercentage == processingPercentage)&&const DeepCollectionEquality().equals(other._timeCodes, _timeCodes)&&(identical(other.isDownload, isDownload) || other.isDownload == isDownload)&&const DeepCollectionEquality().equals(other._watched, _watched));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,title,description,slug,preview,durations,playlist,status,const DeepCollectionEquality().hash(_sampleTimes),size,rawSize,processingPercentage,const DeepCollectionEquality().hash(_timeCodes),isDownload,const DeepCollectionEquality().hash(_watched)]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'VideoModel(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, title: $title, description: $description, slug: $slug, preview: $preview, durations: $durations, playlist: $playlist, status: $status, sampleTimes: $sampleTimes, size: $size, rawSize: $rawSize, processingPercentage: $processingPercentage, timeCodes: $timeCodes, isDownload: $isDownload, watched: $watched)';
}


}

/// @nodoc
abstract mixin class _$VideoModelCopyWith<$Res> implements $VideoModelCopyWith<$Res> {
  factory _$VideoModelCopyWith(_VideoModel value, $Res Function(_VideoModel) _then) = __$VideoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'preview') String? preview,@JsonKey(name: 'durations') int? durations,@JsonKey(name: 'playlist') String? playlist,@JsonKey(name: 'status') StatusVideoData? status,@JsonKey(name: 'sample_times') List<int>? sampleTimes,@JsonKey(name: 'size') int? size,@JsonKey(name: 'raw_size') int? rawSize,@JsonKey(name: 'processing_percentage') int? processingPercentage,@JsonKey(name: 'time_codes') List<TimeCodes>? timeCodes,@JsonKey(name: 'is_download') bool? isDownload,@JsonKey(name: 'watched') List<Watched>? watched
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class __$VideoModelCopyWithImpl<$Res>
    implements _$VideoModelCopyWith<$Res> {
  __$VideoModelCopyWithImpl(this._self, this._then);

  final _VideoModel _self;
  final $Res Function(_VideoModel) _then;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? slug = freezed,Object? preview = freezed,Object? durations = freezed,Object? playlist = freezed,Object? status = freezed,Object? sampleTimes = freezed,Object? size = freezed,Object? rawSize = freezed,Object? processingPercentage = freezed,Object? timeCodes = freezed,Object? isDownload = freezed,Object? watched = freezed,}) {
  return _then(_VideoModel(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,durations: freezed == durations ? _self.durations : durations // ignore: cast_nullable_to_non_nullable
as int?,playlist: freezed == playlist ? _self.playlist : playlist // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusVideoData?,sampleTimes: freezed == sampleTimes ? _self._sampleTimes : sampleTimes // ignore: cast_nullable_to_non_nullable
as List<int>?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,rawSize: freezed == rawSize ? _self.rawSize : rawSize // ignore: cast_nullable_to_non_nullable
as int?,processingPercentage: freezed == processingPercentage ? _self.processingPercentage : processingPercentage // ignore: cast_nullable_to_non_nullable
as int?,timeCodes: freezed == timeCodes ? _self._timeCodes : timeCodes // ignore: cast_nullable_to_non_nullable
as List<TimeCodes>?,isDownload: freezed == isDownload ? _self.isDownload : isDownload // ignore: cast_nullable_to_non_nullable
as bool?,watched: freezed == watched ? _self._watched : watched // ignore: cast_nullable_to_non_nullable
as List<Watched>?,
  ));
}

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get updatedBy {
    if (_self.updatedBy == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.updatedBy!, (value) {
    return _then(_self.copyWith(updatedBy: value));
  });
}
}


/// @nodoc
mixin _$TimeCodes implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'time') int? get time;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'preview') String? get preview;
/// Create a copy of TimeCodes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeCodesCopyWith<TimeCodes> get copyWith => _$TimeCodesCopyWithImpl<TimeCodes>(this as TimeCodes, _$identity);

  /// Serializes this TimeCodes to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimeCodes'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('time', time))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('preview', preview));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeCodes&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.time, time) || other.time == time)&&(identical(other.name, name) || other.name == name)&&(identical(other.preview, preview) || other.preview == preview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,time,name,preview);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimeCodes(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, time: $time, name: $name, preview: $preview)';
}


}

/// @nodoc
abstract mixin class $TimeCodesCopyWith<$Res>  {
  factory $TimeCodesCopyWith(TimeCodes value, $Res Function(TimeCodes) _then) = _$TimeCodesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'time') int? time,@JsonKey(name: 'name') String? name,@JsonKey(name: 'preview') String? preview
});




}
/// @nodoc
class _$TimeCodesCopyWithImpl<$Res>
    implements $TimeCodesCopyWith<$Res> {
  _$TimeCodesCopyWithImpl(this._self, this._then);

  final TimeCodes _self;
  final $Res Function(TimeCodes) _then;

/// Create a copy of TimeCodes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? time = freezed,Object? name = freezed,Object? preview = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeCodes].
extension TimeCodesPatterns on TimeCodes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeCodes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeCodes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeCodes value)  $default,){
final _that = this;
switch (_that) {
case _TimeCodes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeCodes value)?  $default,){
final _that = this;
switch (_that) {
case _TimeCodes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'time')  int? time, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'preview')  String? preview)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeCodes() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.time,_that.name,_that.preview);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'time')  int? time, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'preview')  String? preview)  $default,) {final _that = this;
switch (_that) {
case _TimeCodes():
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.time,_that.name,_that.preview);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'time')  int? time, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'preview')  String? preview)?  $default,) {final _that = this;
switch (_that) {
case _TimeCodes() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.time,_that.name,_that.preview);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeCodes with DiagnosticableTreeMixin implements TimeCodes {
  const _TimeCodes({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'id') this.id, @JsonKey(name: 'time') this.time, @JsonKey(name: 'name') this.name, @JsonKey(name: 'preview') this.preview});
  factory _TimeCodes.fromJson(Map<String, dynamic> json) => _$TimeCodesFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'time') final  int? time;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'preview') final  String? preview;

/// Create a copy of TimeCodes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeCodesCopyWith<_TimeCodes> get copyWith => __$TimeCodesCopyWithImpl<_TimeCodes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeCodesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimeCodes'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('time', time))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('preview', preview));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeCodes&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.time, time) || other.time == time)&&(identical(other.name, name) || other.name == name)&&(identical(other.preview, preview) || other.preview == preview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,time,name,preview);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimeCodes(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, time: $time, name: $name, preview: $preview)';
}


}

/// @nodoc
abstract mixin class _$TimeCodesCopyWith<$Res> implements $TimeCodesCopyWith<$Res> {
  factory _$TimeCodesCopyWith(_TimeCodes value, $Res Function(_TimeCodes) _then) = __$TimeCodesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'time') int? time,@JsonKey(name: 'name') String? name,@JsonKey(name: 'preview') String? preview
});




}
/// @nodoc
class __$TimeCodesCopyWithImpl<$Res>
    implements _$TimeCodesCopyWith<$Res> {
  __$TimeCodesCopyWithImpl(this._self, this._then);

  final _TimeCodes _self;
  final $Res Function(_TimeCodes) _then;

/// Create a copy of TimeCodes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? time = freezed,Object? name = freezed,Object? preview = freezed,}) {
  return _then(_TimeCodes(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Watched implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'durations') int? get durations;@JsonKey(name: 'watched') bool? get watched;
/// Create a copy of Watched
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchedCopyWith<Watched> get copyWith => _$WatchedCopyWithImpl<Watched>(this as Watched, _$identity);

  /// Serializes this Watched to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Watched'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('durations', durations))..add(DiagnosticsProperty('watched', watched));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Watched&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.durations, durations) || other.durations == durations)&&(identical(other.watched, watched) || other.watched == watched));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,durations,watched);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Watched(createdAt: $createdAt, updatedAt: $updatedAt, durations: $durations, watched: $watched)';
}


}

/// @nodoc
abstract mixin class $WatchedCopyWith<$Res>  {
  factory $WatchedCopyWith(Watched value, $Res Function(Watched) _then) = _$WatchedCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'durations') int? durations,@JsonKey(name: 'watched') bool? watched
});




}
/// @nodoc
class _$WatchedCopyWithImpl<$Res>
    implements $WatchedCopyWith<$Res> {
  _$WatchedCopyWithImpl(this._self, this._then);

  final Watched _self;
  final $Res Function(Watched) _then;

/// Create a copy of Watched
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? durations = freezed,Object? watched = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,durations: freezed == durations ? _self.durations : durations // ignore: cast_nullable_to_non_nullable
as int?,watched: freezed == watched ? _self.watched : watched // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Watched].
extension WatchedPatterns on Watched {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Watched value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Watched() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Watched value)  $default,){
final _that = this;
switch (_that) {
case _Watched():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Watched value)?  $default,){
final _that = this;
switch (_that) {
case _Watched() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'durations')  int? durations, @JsonKey(name: 'watched')  bool? watched)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Watched() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.durations,_that.watched);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'durations')  int? durations, @JsonKey(name: 'watched')  bool? watched)  $default,) {final _that = this;
switch (_that) {
case _Watched():
return $default(_that.createdAt,_that.updatedAt,_that.durations,_that.watched);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'durations')  int? durations, @JsonKey(name: 'watched')  bool? watched)?  $default,) {final _that = this;
switch (_that) {
case _Watched() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.durations,_that.watched);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Watched with DiagnosticableTreeMixin implements Watched {
  const _Watched({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'durations') this.durations, @JsonKey(name: 'watched') this.watched});
  factory _Watched.fromJson(Map<String, dynamic> json) => _$WatchedFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'durations') final  int? durations;
@override@JsonKey(name: 'watched') final  bool? watched;

/// Create a copy of Watched
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchedCopyWith<_Watched> get copyWith => __$WatchedCopyWithImpl<_Watched>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WatchedToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Watched'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('durations', durations))..add(DiagnosticsProperty('watched', watched));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Watched&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.durations, durations) || other.durations == durations)&&(identical(other.watched, watched) || other.watched == watched));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,durations,watched);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Watched(createdAt: $createdAt, updatedAt: $updatedAt, durations: $durations, watched: $watched)';
}


}

/// @nodoc
abstract mixin class _$WatchedCopyWith<$Res> implements $WatchedCopyWith<$Res> {
  factory _$WatchedCopyWith(_Watched value, $Res Function(_Watched) _then) = __$WatchedCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'durations') int? durations,@JsonKey(name: 'watched') bool? watched
});




}
/// @nodoc
class __$WatchedCopyWithImpl<$Res>
    implements _$WatchedCopyWith<$Res> {
  __$WatchedCopyWithImpl(this._self, this._then);

  final _Watched _self;
  final $Res Function(_Watched) _then;

/// Create a copy of Watched
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? durations = freezed,Object? watched = freezed,}) {
  return _then(_Watched(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,durations: freezed == durations ? _self.durations : durations // ignore: cast_nullable_to_non_nullable
as int?,watched: freezed == watched ? _self.watched : watched // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
