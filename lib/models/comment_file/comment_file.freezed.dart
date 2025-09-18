// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentFile implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;
/// Create a copy of CommentFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentFileCopyWith<CommentFile> get copyWith => _$CommentFileCopyWithImpl<CommentFile>(this as CommentFile, _$identity);

  /// Serializes this CommentFile to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommentFile'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentFile&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommentFile(id: $id)';
}


}

/// @nodoc
abstract mixin class $CommentFileCopyWith<$Res>  {
  factory $CommentFileCopyWith(CommentFile value, $Res Function(CommentFile) _then) = _$CommentFileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id
});




}
/// @nodoc
class _$CommentFileCopyWithImpl<$Res>
    implements $CommentFileCopyWith<$Res> {
  _$CommentFileCopyWithImpl(this._self, this._then);

  final CommentFile _self;
  final $Res Function(CommentFile) _then;

/// Create a copy of CommentFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentFile].
extension CommentFilePatterns on CommentFile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentFile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentFile value)  $default,){
final _that = this;
switch (_that) {
case _CommentFile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentFile value)?  $default,){
final _that = this;
switch (_that) {
case _CommentFile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentFile() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id)  $default,) {final _that = this;
switch (_that) {
case _CommentFile():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id)?  $default,) {final _that = this;
switch (_that) {
case _CommentFile() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentFile with DiagnosticableTreeMixin implements CommentFile {
  const _CommentFile({@JsonKey(name: 'id') this.id});
  factory _CommentFile.fromJson(Map<String, dynamic> json) => _$CommentFileFromJson(json);

@override@JsonKey(name: 'id') final  int? id;

/// Create a copy of CommentFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentFileCopyWith<_CommentFile> get copyWith => __$CommentFileCopyWithImpl<_CommentFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentFileToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommentFile'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentFile&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommentFile(id: $id)';
}


}

/// @nodoc
abstract mixin class _$CommentFileCopyWith<$Res> implements $CommentFileCopyWith<$Res> {
  factory _$CommentFileCopyWith(_CommentFile value, $Res Function(_CommentFile) _then) = __$CommentFileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id
});




}
/// @nodoc
class __$CommentFileCopyWithImpl<$Res>
    implements _$CommentFileCopyWith<$Res> {
  __$CommentFileCopyWithImpl(this._self, this._then);

  final _CommentFile _self;
  final $Res Function(_CommentFile) _then;

/// Create a copy of CommentFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_CommentFile(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
