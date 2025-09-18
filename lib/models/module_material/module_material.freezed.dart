// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModuleMaterial implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'module_id') int? get moduleId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'cover') String? get cover;@JsonKey(name: 'position') int? get position;@JsonKey(name: 'duration') int? get duration;@JsonKey(name: 'description') List<EditorJsBlock>? get description;@JsonKey(name: 'type') ModuleMaterialType? get type;@JsonKey(name: 'mentor') bool? get mentor;@JsonKey(name: 'middle_rating') String? get middleRating;
/// Create a copy of ModuleMaterial
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleMaterialCopyWith<ModuleMaterial> get copyWith => _$ModuleMaterialCopyWithImpl<ModuleMaterial>(this as ModuleMaterial, _$identity);

  /// Serializes this ModuleMaterial to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModuleMaterial'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('moduleId', moduleId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cover', cover))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('mentor', mentor))..add(DiagnosticsProperty('middleRating', middleRating));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleMaterial&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other.description, description)&&(identical(other.type, type) || other.type == type)&&(identical(other.mentor, mentor) || other.mentor == mentor)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,moduleId,name,cover,position,duration,const DeepCollectionEquality().hash(description),type,mentor,middleRating);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModuleMaterial(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, moduleId: $moduleId, name: $name, cover: $cover, position: $position, duration: $duration, description: $description, type: $type, mentor: $mentor, middleRating: $middleRating)';
}


}

/// @nodoc
abstract mixin class $ModuleMaterialCopyWith<$Res>  {
  factory $ModuleMaterialCopyWith(ModuleMaterial value, $Res Function(ModuleMaterial) _then) = _$ModuleMaterialCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'module_id') int? moduleId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'cover') String? cover,@JsonKey(name: 'position') int? position,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'description') List<EditorJsBlock>? description,@JsonKey(name: 'type') ModuleMaterialType? type,@JsonKey(name: 'mentor') bool? mentor,@JsonKey(name: 'middle_rating') String? middleRating
});




}
/// @nodoc
class _$ModuleMaterialCopyWithImpl<$Res>
    implements $ModuleMaterialCopyWith<$Res> {
  _$ModuleMaterialCopyWithImpl(this._self, this._then);

  final ModuleMaterial _self;
  final $Res Function(ModuleMaterial) _then;

/// Create a copy of ModuleMaterial
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? moduleId = freezed,Object? name = freezed,Object? cover = freezed,Object? position = freezed,Object? duration = freezed,Object? description = freezed,Object? type = freezed,Object? mentor = freezed,Object? middleRating = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as List<EditorJsBlock>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ModuleMaterialType?,mentor: freezed == mentor ? _self.mentor : mentor // ignore: cast_nullable_to_non_nullable
as bool?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ModuleMaterial].
extension ModuleMaterialPatterns on ModuleMaterial {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModuleMaterial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModuleMaterial() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModuleMaterial value)  $default,){
final _that = this;
switch (_that) {
case _ModuleMaterial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModuleMaterial value)?  $default,){
final _that = this;
switch (_that) {
case _ModuleMaterial() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'module_id')  int? moduleId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'description')  List<EditorJsBlock>? description, @JsonKey(name: 'type')  ModuleMaterialType? type, @JsonKey(name: 'mentor')  bool? mentor, @JsonKey(name: 'middle_rating')  String? middleRating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModuleMaterial() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.moduleId,_that.name,_that.cover,_that.position,_that.duration,_that.description,_that.type,_that.mentor,_that.middleRating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'module_id')  int? moduleId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'description')  List<EditorJsBlock>? description, @JsonKey(name: 'type')  ModuleMaterialType? type, @JsonKey(name: 'mentor')  bool? mentor, @JsonKey(name: 'middle_rating')  String? middleRating)  $default,) {final _that = this;
switch (_that) {
case _ModuleMaterial():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.moduleId,_that.name,_that.cover,_that.position,_that.duration,_that.description,_that.type,_that.mentor,_that.middleRating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'module_id')  int? moduleId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'description')  List<EditorJsBlock>? description, @JsonKey(name: 'type')  ModuleMaterialType? type, @JsonKey(name: 'mentor')  bool? mentor, @JsonKey(name: 'middle_rating')  String? middleRating)?  $default,) {final _that = this;
switch (_that) {
case _ModuleMaterial() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.id,_that.moduleId,_that.name,_that.cover,_that.position,_that.duration,_that.description,_that.type,_that.mentor,_that.middleRating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModuleMaterial with DiagnosticableTreeMixin implements ModuleMaterial {
  const _ModuleMaterial({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'id') this.id, @JsonKey(name: 'module_id') this.moduleId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'cover') this.cover, @JsonKey(name: 'position') this.position, @JsonKey(name: 'duration') this.duration, @JsonKey(name: 'description') final  List<EditorJsBlock>? description, @JsonKey(name: 'type') this.type, @JsonKey(name: 'mentor') this.mentor, @JsonKey(name: 'middle_rating') this.middleRating}): _description = description;
  factory _ModuleMaterial.fromJson(Map<String, dynamic> json) => _$ModuleMaterialFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'module_id') final  int? moduleId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'cover') final  String? cover;
@override@JsonKey(name: 'position') final  int? position;
@override@JsonKey(name: 'duration') final  int? duration;
 final  List<EditorJsBlock>? _description;
@override@JsonKey(name: 'description') List<EditorJsBlock>? get description {
  final value = _description;
  if (value == null) return null;
  if (_description is EqualUnmodifiableListView) return _description;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'type') final  ModuleMaterialType? type;
@override@JsonKey(name: 'mentor') final  bool? mentor;
@override@JsonKey(name: 'middle_rating') final  String? middleRating;

/// Create a copy of ModuleMaterial
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleMaterialCopyWith<_ModuleMaterial> get copyWith => __$ModuleMaterialCopyWithImpl<_ModuleMaterial>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleMaterialToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModuleMaterial'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('moduleId', moduleId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cover', cover))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('mentor', mentor))..add(DiagnosticsProperty('middleRating', middleRating));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModuleMaterial&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other._description, _description)&&(identical(other.type, type) || other.type == type)&&(identical(other.mentor, mentor) || other.mentor == mentor)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,id,moduleId,name,cover,position,duration,const DeepCollectionEquality().hash(_description),type,mentor,middleRating);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModuleMaterial(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, id: $id, moduleId: $moduleId, name: $name, cover: $cover, position: $position, duration: $duration, description: $description, type: $type, mentor: $mentor, middleRating: $middleRating)';
}


}

/// @nodoc
abstract mixin class _$ModuleMaterialCopyWith<$Res> implements $ModuleMaterialCopyWith<$Res> {
  factory _$ModuleMaterialCopyWith(_ModuleMaterial value, $Res Function(_ModuleMaterial) _then) = __$ModuleMaterialCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'id') int? id,@JsonKey(name: 'module_id') int? moduleId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'cover') String? cover,@JsonKey(name: 'position') int? position,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'description') List<EditorJsBlock>? description,@JsonKey(name: 'type') ModuleMaterialType? type,@JsonKey(name: 'mentor') bool? mentor,@JsonKey(name: 'middle_rating') String? middleRating
});




}
/// @nodoc
class __$ModuleMaterialCopyWithImpl<$Res>
    implements _$ModuleMaterialCopyWith<$Res> {
  __$ModuleMaterialCopyWithImpl(this._self, this._then);

  final _ModuleMaterial _self;
  final $Res Function(_ModuleMaterial) _then;

/// Create a copy of ModuleMaterial
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? id = freezed,Object? moduleId = freezed,Object? name = freezed,Object? cover = freezed,Object? position = freezed,Object? duration = freezed,Object? description = freezed,Object? type = freezed,Object? mentor = freezed,Object? middleRating = freezed,}) {
  return _then(_ModuleMaterial(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moduleId: freezed == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self._description : description // ignore: cast_nullable_to_non_nullable
as List<EditorJsBlock>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ModuleMaterialType?,mentor: freezed == mentor ? _self.mentor : mentor // ignore: cast_nullable_to_non_nullable
as bool?,middleRating: freezed == middleRating ? _self.middleRating : middleRating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
