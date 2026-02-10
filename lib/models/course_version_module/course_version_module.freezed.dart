// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_version_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseVersionModule implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'course_version_id') int? get courseVersionId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'sort') int? get sort;
/// Create a copy of CourseVersionModule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseVersionModuleCopyWith<CourseVersionModule> get copyWith => _$CourseVersionModuleCopyWithImpl<CourseVersionModule>(this as CourseVersionModule, _$identity);

  /// Serializes this CourseVersionModule to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CourseVersionModule'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('courseVersionId', courseVersionId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('sort', sort));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseVersionModule&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.courseVersionId, courseVersionId) || other.courseVersionId == courseVersionId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.sort, sort) || other.sort == sort));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,courseVersionId,name,description,sort);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CourseVersionModule(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, courseVersionId: $courseVersionId, name: $name, description: $description, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $CourseVersionModuleCopyWith<$Res>  {
  factory $CourseVersionModuleCopyWith(CourseVersionModule value, $Res Function(CourseVersionModule) _then) = _$CourseVersionModuleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'course_version_id') int? courseVersionId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'sort') int? sort
});




}
/// @nodoc
class _$CourseVersionModuleCopyWithImpl<$Res>
    implements $CourseVersionModuleCopyWith<$Res> {
  _$CourseVersionModuleCopyWithImpl(this._self, this._then);

  final CourseVersionModule _self;
  final $Res Function(CourseVersionModule) _then;

/// Create a copy of CourseVersionModule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? courseVersionId = freezed,Object? name = freezed,Object? description = freezed,Object? sort = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,courseVersionId: freezed == courseVersionId ? _self.courseVersionId : courseVersionId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseVersionModule].
extension CourseVersionModulePatterns on CourseVersionModule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseVersionModule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseVersionModule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseVersionModule value)  $default,){
final _that = this;
switch (_that) {
case _CourseVersionModule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseVersionModule value)?  $default,){
final _that = this;
switch (_that) {
case _CourseVersionModule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'course_version_id')  int? courseVersionId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'sort')  int? sort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseVersionModule() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.courseVersionId,_that.name,_that.description,_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'course_version_id')  int? courseVersionId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'sort')  int? sort)  $default,) {final _that = this;
switch (_that) {
case _CourseVersionModule():
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.courseVersionId,_that.name,_that.description,_that.sort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'course_version_id')  int? courseVersionId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'sort')  int? sort)?  $default,) {final _that = this;
switch (_that) {
case _CourseVersionModule() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.id,_that.courseVersionId,_that.name,_that.description,_that.sort);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseVersionModule with DiagnosticableTreeMixin implements CourseVersionModule {
  const _CourseVersionModule({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'id') this.id, @JsonKey(name: 'course_version_id') this.courseVersionId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'sort') this.sort});
  factory _CourseVersionModule.fromJson(Map<String, dynamic> json) => _$CourseVersionModuleFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'course_version_id') final  int? courseVersionId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'sort') final  int? sort;

/// Create a copy of CourseVersionModule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseVersionModuleCopyWith<_CourseVersionModule> get copyWith => __$CourseVersionModuleCopyWithImpl<_CourseVersionModule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseVersionModuleToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CourseVersionModule'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('courseVersionId', courseVersionId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('sort', sort));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseVersionModule&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.courseVersionId, courseVersionId) || other.courseVersionId == courseVersionId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.sort, sort) || other.sort == sort));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,id,courseVersionId,name,description,sort);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CourseVersionModule(createdAt: $createdAt, updatedAt: $updatedAt, id: $id, courseVersionId: $courseVersionId, name: $name, description: $description, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$CourseVersionModuleCopyWith<$Res> implements $CourseVersionModuleCopyWith<$Res> {
  factory _$CourseVersionModuleCopyWith(_CourseVersionModule value, $Res Function(_CourseVersionModule) _then) = __$CourseVersionModuleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'id') int? id,@JsonKey(name: 'course_version_id') int? courseVersionId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'sort') int? sort
});




}
/// @nodoc
class __$CourseVersionModuleCopyWithImpl<$Res>
    implements _$CourseVersionModuleCopyWith<$Res> {
  __$CourseVersionModuleCopyWithImpl(this._self, this._then);

  final _CourseVersionModule _self;
  final $Res Function(_CourseVersionModule) _then;

/// Create a copy of CourseVersionModule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? id = freezed,Object? courseVersionId = freezed,Object? name = freezed,Object? description = freezed,Object? sort = freezed,}) {
  return _then(_CourseVersionModule(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,courseVersionId: freezed == courseVersionId ? _self.courseVersionId : courseVersionId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
