// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_data_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedDataInfoModel implements DiagnosticableTreeMixin {

 double? get video; double? get file; double? get all; double? get cache;
/// Create a copy of SavedDataInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedDataInfoModelCopyWith<SavedDataInfoModel> get copyWith => _$SavedDataInfoModelCopyWithImpl<SavedDataInfoModel>(this as SavedDataInfoModel, _$identity);

  /// Serializes this SavedDataInfoModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SavedDataInfoModel'))
    ..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('all', all))..add(DiagnosticsProperty('cache', cache));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedDataInfoModel&&(identical(other.video, video) || other.video == video)&&(identical(other.file, file) || other.file == file)&&(identical(other.all, all) || other.all == all)&&(identical(other.cache, cache) || other.cache == cache));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,video,file,all,cache);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SavedDataInfoModel(video: $video, file: $file, all: $all, cache: $cache)';
}


}

/// @nodoc
abstract mixin class $SavedDataInfoModelCopyWith<$Res>  {
  factory $SavedDataInfoModelCopyWith(SavedDataInfoModel value, $Res Function(SavedDataInfoModel) _then) = _$SavedDataInfoModelCopyWithImpl;
@useResult
$Res call({
 double? video, double? file, double? all, double? cache
});




}
/// @nodoc
class _$SavedDataInfoModelCopyWithImpl<$Res>
    implements $SavedDataInfoModelCopyWith<$Res> {
  _$SavedDataInfoModelCopyWithImpl(this._self, this._then);

  final SavedDataInfoModel _self;
  final $Res Function(SavedDataInfoModel) _then;

/// Create a copy of SavedDataInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? video = freezed,Object? file = freezed,Object? all = freezed,Object? cache = freezed,}) {
  return _then(_self.copyWith(
video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as double?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as double?,all: freezed == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as double?,cache: freezed == cache ? _self.cache : cache // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedDataInfoModel].
extension SavedDataInfoModelPatterns on SavedDataInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedDataInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedDataInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedDataInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _SavedDataInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedDataInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _SavedDataInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? video,  double? file,  double? all,  double? cache)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedDataInfoModel() when $default != null:
return $default(_that.video,_that.file,_that.all,_that.cache);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? video,  double? file,  double? all,  double? cache)  $default,) {final _that = this;
switch (_that) {
case _SavedDataInfoModel():
return $default(_that.video,_that.file,_that.all,_that.cache);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? video,  double? file,  double? all,  double? cache)?  $default,) {final _that = this;
switch (_that) {
case _SavedDataInfoModel() when $default != null:
return $default(_that.video,_that.file,_that.all,_that.cache);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedDataInfoModel with DiagnosticableTreeMixin implements SavedDataInfoModel {
  const _SavedDataInfoModel({this.video, this.file, this.all, this.cache});
  factory _SavedDataInfoModel.fromJson(Map<String, dynamic> json) => _$SavedDataInfoModelFromJson(json);

@override final  double? video;
@override final  double? file;
@override final  double? all;
@override final  double? cache;

/// Create a copy of SavedDataInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedDataInfoModelCopyWith<_SavedDataInfoModel> get copyWith => __$SavedDataInfoModelCopyWithImpl<_SavedDataInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedDataInfoModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SavedDataInfoModel'))
    ..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('all', all))..add(DiagnosticsProperty('cache', cache));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedDataInfoModel&&(identical(other.video, video) || other.video == video)&&(identical(other.file, file) || other.file == file)&&(identical(other.all, all) || other.all == all)&&(identical(other.cache, cache) || other.cache == cache));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,video,file,all,cache);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SavedDataInfoModel(video: $video, file: $file, all: $all, cache: $cache)';
}


}

/// @nodoc
abstract mixin class _$SavedDataInfoModelCopyWith<$Res> implements $SavedDataInfoModelCopyWith<$Res> {
  factory _$SavedDataInfoModelCopyWith(_SavedDataInfoModel value, $Res Function(_SavedDataInfoModel) _then) = __$SavedDataInfoModelCopyWithImpl;
@override @useResult
$Res call({
 double? video, double? file, double? all, double? cache
});




}
/// @nodoc
class __$SavedDataInfoModelCopyWithImpl<$Res>
    implements _$SavedDataInfoModelCopyWith<$Res> {
  __$SavedDataInfoModelCopyWithImpl(this._self, this._then);

  final _SavedDataInfoModel _self;
  final $Res Function(_SavedDataInfoModel) _then;

/// Create a copy of SavedDataInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? video = freezed,Object? file = freezed,Object? all = freezed,Object? cache = freezed,}) {
  return _then(_SavedDataInfoModel(
video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as double?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as double?,all: freezed == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as double?,cache: freezed == cache ? _self.cache : cache // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
