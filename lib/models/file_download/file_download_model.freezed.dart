// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_download_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileDownloadModel {

 String get displayName; int get id; String get link; int get createdAt; int get progress; ProgressTypeDownloadVideo get progressType; String? get key;
/// Create a copy of FileDownloadModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileDownloadModelCopyWith<FileDownloadModel> get copyWith => _$FileDownloadModelCopyWithImpl<FileDownloadModel>(this as FileDownloadModel, _$identity);

  /// Serializes this FileDownloadModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileDownloadModel&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.id, id) || other.id == id)&&(identical(other.link, link) || other.link == link)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.progressType, progressType) || other.progressType == progressType)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,id,link,createdAt,progress,progressType,key);

@override
String toString() {
  return 'FileDownloadModel(displayName: $displayName, id: $id, link: $link, createdAt: $createdAt, progress: $progress, progressType: $progressType, key: $key)';
}


}

/// @nodoc
abstract mixin class $FileDownloadModelCopyWith<$Res>  {
  factory $FileDownloadModelCopyWith(FileDownloadModel value, $Res Function(FileDownloadModel) _then) = _$FileDownloadModelCopyWithImpl;
@useResult
$Res call({
 String displayName, int id, String link, int createdAt, int progress, ProgressTypeDownloadVideo progressType, String? key
});




}
/// @nodoc
class _$FileDownloadModelCopyWithImpl<$Res>
    implements $FileDownloadModelCopyWith<$Res> {
  _$FileDownloadModelCopyWithImpl(this._self, this._then);

  final FileDownloadModel _self;
  final $Res Function(FileDownloadModel) _then;

/// Create a copy of FileDownloadModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,Object? id = null,Object? link = null,Object? createdAt = null,Object? progress = null,Object? progressType = null,Object? key = freezed,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,progressType: null == progressType ? _self.progressType : progressType // ignore: cast_nullable_to_non_nullable
as ProgressTypeDownloadVideo,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FileDownloadModel].
extension FileDownloadModelPatterns on FileDownloadModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileDownloadModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileDownloadModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileDownloadModel value)  $default,){
final _that = this;
switch (_that) {
case _FileDownloadModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileDownloadModel value)?  $default,){
final _that = this;
switch (_that) {
case _FileDownloadModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String displayName,  int id,  String link,  int createdAt,  int progress,  ProgressTypeDownloadVideo progressType,  String? key)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileDownloadModel() when $default != null:
return $default(_that.displayName,_that.id,_that.link,_that.createdAt,_that.progress,_that.progressType,_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String displayName,  int id,  String link,  int createdAt,  int progress,  ProgressTypeDownloadVideo progressType,  String? key)  $default,) {final _that = this;
switch (_that) {
case _FileDownloadModel():
return $default(_that.displayName,_that.id,_that.link,_that.createdAt,_that.progress,_that.progressType,_that.key);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String displayName,  int id,  String link,  int createdAt,  int progress,  ProgressTypeDownloadVideo progressType,  String? key)?  $default,) {final _that = this;
switch (_that) {
case _FileDownloadModel() when $default != null:
return $default(_that.displayName,_that.id,_that.link,_that.createdAt,_that.progress,_that.progressType,_that.key);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileDownloadModel implements FileDownloadModel {
  const _FileDownloadModel({required this.displayName, required this.id, required this.link, required this.createdAt, required this.progress, required this.progressType, this.key});
  factory _FileDownloadModel.fromJson(Map<String, dynamic> json) => _$FileDownloadModelFromJson(json);

@override final  String displayName;
@override final  int id;
@override final  String link;
@override final  int createdAt;
@override final  int progress;
@override final  ProgressTypeDownloadVideo progressType;
@override final  String? key;

/// Create a copy of FileDownloadModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileDownloadModelCopyWith<_FileDownloadModel> get copyWith => __$FileDownloadModelCopyWithImpl<_FileDownloadModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileDownloadModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileDownloadModel&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.id, id) || other.id == id)&&(identical(other.link, link) || other.link == link)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.progressType, progressType) || other.progressType == progressType)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,id,link,createdAt,progress,progressType,key);

@override
String toString() {
  return 'FileDownloadModel(displayName: $displayName, id: $id, link: $link, createdAt: $createdAt, progress: $progress, progressType: $progressType, key: $key)';
}


}

/// @nodoc
abstract mixin class _$FileDownloadModelCopyWith<$Res> implements $FileDownloadModelCopyWith<$Res> {
  factory _$FileDownloadModelCopyWith(_FileDownloadModel value, $Res Function(_FileDownloadModel) _then) = __$FileDownloadModelCopyWithImpl;
@override @useResult
$Res call({
 String displayName, int id, String link, int createdAt, int progress, ProgressTypeDownloadVideo progressType, String? key
});




}
/// @nodoc
class __$FileDownloadModelCopyWithImpl<$Res>
    implements _$FileDownloadModelCopyWith<$Res> {
  __$FileDownloadModelCopyWithImpl(this._self, this._then);

  final _FileDownloadModel _self;
  final $Res Function(_FileDownloadModel) _then;

/// Create a copy of FileDownloadModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? id = null,Object? link = null,Object? createdAt = null,Object? progress = null,Object? progressType = null,Object? key = freezed,}) {
  return _then(_FileDownloadModel(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,progressType: null == progressType ? _self.progressType : progressType // ignore: cast_nullable_to_non_nullable
as ProgressTypeDownloadVideo,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
