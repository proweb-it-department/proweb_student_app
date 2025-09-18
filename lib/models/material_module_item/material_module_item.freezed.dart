// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_module_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaterialModuleItem implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by_id') int? get createdById;@JsonKey(name: 'updated_by_id') int? get updatedById;@JsonKey(name: 'files') List<Files>? get files;@JsonKey(name: 'videos') List<Videos>? get videos;@JsonKey(name: 'questions') List<Questions>? get questions;@JsonKey(name: 'module') Module? get module;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'cover') String? get cover;@JsonKey(name: 'position') int? get position;@JsonKey(name: 'duration') int? get duration;@JsonKey(name: 'description') List<EditorJsBlock>? get description;@JsonKey(name: 'type') ModuleMaterialType? get type;@JsonKey(name: 'mentor') bool? get mentor;@JsonKey(name: 'middle_rating') String? get middleRating;
/// Create a copy of MaterialModuleItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialModuleItemCopyWith<MaterialModuleItem> get copyWith => _$MaterialModuleItemCopyWithImpl<MaterialModuleItem>(this as MaterialModuleItem, _$identity);

  /// Serializes this MaterialModuleItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MaterialModuleItem'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('files', files))..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('questions', questions))..add(DiagnosticsProperty('module', module))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cover', cover))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('mentor', mentor))..add(DiagnosticsProperty('middleRating', middleRating));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialModuleItem&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&const DeepCollectionEquality().equals(other.files, files)&&const DeepCollectionEquality().equals(other.videos, videos)&&const DeepCollectionEquality().equals(other.questions, questions)&&(identical(other.module, module) || other.module == module)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other.description, description)&&(identical(other.type, type) || other.type == type)&&(identical(other.mentor, mentor) || other.mentor == mentor)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,const DeepCollectionEquality().hash(files),const DeepCollectionEquality().hash(videos),const DeepCollectionEquality().hash(questions),module,id,name,cover,position,duration,const DeepCollectionEquality().hash(description),type,mentor,middleRating);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MaterialModuleItem(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, files: $files, videos: $videos, questions: $questions, module: $module, id: $id, name: $name, cover: $cover, position: $position, duration: $duration, description: $description, type: $type, mentor: $mentor, middleRating: $middleRating)';
}


}

/// @nodoc
abstract mixin class $MaterialModuleItemCopyWith<$Res>  {
  factory $MaterialModuleItemCopyWith(MaterialModuleItem value, $Res Function(MaterialModuleItem) _then) = _$MaterialModuleItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'files') List<Files>? files,@JsonKey(name: 'videos') List<Videos>? videos,@JsonKey(name: 'questions') List<Questions>? questions,@JsonKey(name: 'module') Module? module,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'cover') String? cover,@JsonKey(name: 'position') int? position,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'description') List<EditorJsBlock>? description,@JsonKey(name: 'type') ModuleMaterialType? type,@JsonKey(name: 'mentor') bool? mentor,@JsonKey(name: 'middle_rating') String? middleRating
});


$ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class _$MaterialModuleItemCopyWithImpl<$Res>
    implements $MaterialModuleItemCopyWith<$Res> {
  _$MaterialModuleItemCopyWithImpl(this._self, this._then);

  final MaterialModuleItem _self;
  final $Res Function(MaterialModuleItem) _then;

/// Create a copy of MaterialModuleItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? files = freezed,Object? videos = freezed,Object? questions = freezed,Object? module = freezed,Object? id = freezed,Object? name = freezed,Object? cover = freezed,Object? position = freezed,Object? duration = freezed,Object? description = freezed,Object? type = freezed,Object? mentor = freezed,Object? middleRating = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,files: freezed == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<Files>?,videos: freezed == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<Videos>?,questions: freezed == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<Questions>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
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
/// Create a copy of MaterialModuleItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// Adds pattern-matching-related methods to [MaterialModuleItem].
extension MaterialModuleItemPatterns on MaterialModuleItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialModuleItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialModuleItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialModuleItem value)  $default,){
final _that = this;
switch (_that) {
case _MaterialModuleItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialModuleItem value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialModuleItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'files')  List<Files>? files, @JsonKey(name: 'videos')  List<Videos>? videos, @JsonKey(name: 'questions')  List<Questions>? questions, @JsonKey(name: 'module')  Module? module, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'description')  List<EditorJsBlock>? description, @JsonKey(name: 'type')  ModuleMaterialType? type, @JsonKey(name: 'mentor')  bool? mentor, @JsonKey(name: 'middle_rating')  String? middleRating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialModuleItem() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.files,_that.videos,_that.questions,_that.module,_that.id,_that.name,_that.cover,_that.position,_that.duration,_that.description,_that.type,_that.mentor,_that.middleRating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'files')  List<Files>? files, @JsonKey(name: 'videos')  List<Videos>? videos, @JsonKey(name: 'questions')  List<Questions>? questions, @JsonKey(name: 'module')  Module? module, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'description')  List<EditorJsBlock>? description, @JsonKey(name: 'type')  ModuleMaterialType? type, @JsonKey(name: 'mentor')  bool? mentor, @JsonKey(name: 'middle_rating')  String? middleRating)  $default,) {final _that = this;
switch (_that) {
case _MaterialModuleItem():
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.files,_that.videos,_that.questions,_that.module,_that.id,_that.name,_that.cover,_that.position,_that.duration,_that.description,_that.type,_that.mentor,_that.middleRating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by_id')  int? createdById, @JsonKey(name: 'updated_by_id')  int? updatedById, @JsonKey(name: 'files')  List<Files>? files, @JsonKey(name: 'videos')  List<Videos>? videos, @JsonKey(name: 'questions')  List<Questions>? questions, @JsonKey(name: 'module')  Module? module, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'cover')  String? cover, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'description')  List<EditorJsBlock>? description, @JsonKey(name: 'type')  ModuleMaterialType? type, @JsonKey(name: 'mentor')  bool? mentor, @JsonKey(name: 'middle_rating')  String? middleRating)?  $default,) {final _that = this;
switch (_that) {
case _MaterialModuleItem() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdById,_that.updatedById,_that.files,_that.videos,_that.questions,_that.module,_that.id,_that.name,_that.cover,_that.position,_that.duration,_that.description,_that.type,_that.mentor,_that.middleRating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaterialModuleItem with DiagnosticableTreeMixin implements MaterialModuleItem {
  const _MaterialModuleItem({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by_id') this.createdById, @JsonKey(name: 'updated_by_id') this.updatedById, @JsonKey(name: 'files') final  List<Files>? files, @JsonKey(name: 'videos') final  List<Videos>? videos, @JsonKey(name: 'questions') final  List<Questions>? questions, @JsonKey(name: 'module') this.module, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'cover') this.cover, @JsonKey(name: 'position') this.position, @JsonKey(name: 'duration') this.duration, @JsonKey(name: 'description') final  List<EditorJsBlock>? description, @JsonKey(name: 'type') this.type, @JsonKey(name: 'mentor') this.mentor, @JsonKey(name: 'middle_rating') this.middleRating}): _files = files,_videos = videos,_questions = questions,_description = description;
  factory _MaterialModuleItem.fromJson(Map<String, dynamic> json) => _$MaterialModuleItemFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by_id') final  int? createdById;
@override@JsonKey(name: 'updated_by_id') final  int? updatedById;
 final  List<Files>? _files;
@override@JsonKey(name: 'files') List<Files>? get files {
  final value = _files;
  if (value == null) return null;
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Videos>? _videos;
@override@JsonKey(name: 'videos') List<Videos>? get videos {
  final value = _videos;
  if (value == null) return null;
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Questions>? _questions;
@override@JsonKey(name: 'questions') List<Questions>? get questions {
  final value = _questions;
  if (value == null) return null;
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'module') final  Module? module;
@override@JsonKey(name: 'id') final  int? id;
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

/// Create a copy of MaterialModuleItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialModuleItemCopyWith<_MaterialModuleItem> get copyWith => __$MaterialModuleItemCopyWithImpl<_MaterialModuleItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialModuleItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MaterialModuleItem'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdById', createdById))..add(DiagnosticsProperty('updatedById', updatedById))..add(DiagnosticsProperty('files', files))..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('questions', questions))..add(DiagnosticsProperty('module', module))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cover', cover))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('mentor', mentor))..add(DiagnosticsProperty('middleRating', middleRating));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialModuleItem&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&const DeepCollectionEquality().equals(other._files, _files)&&const DeepCollectionEquality().equals(other._videos, _videos)&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.module, module) || other.module == module)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other._description, _description)&&(identical(other.type, type) || other.type == type)&&(identical(other.mentor, mentor) || other.mentor == mentor)&&(identical(other.middleRating, middleRating) || other.middleRating == middleRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdById,updatedById,const DeepCollectionEquality().hash(_files),const DeepCollectionEquality().hash(_videos),const DeepCollectionEquality().hash(_questions),module,id,name,cover,position,duration,const DeepCollectionEquality().hash(_description),type,mentor,middleRating);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MaterialModuleItem(createdAt: $createdAt, updatedAt: $updatedAt, createdById: $createdById, updatedById: $updatedById, files: $files, videos: $videos, questions: $questions, module: $module, id: $id, name: $name, cover: $cover, position: $position, duration: $duration, description: $description, type: $type, mentor: $mentor, middleRating: $middleRating)';
}


}

/// @nodoc
abstract mixin class _$MaterialModuleItemCopyWith<$Res> implements $MaterialModuleItemCopyWith<$Res> {
  factory _$MaterialModuleItemCopyWith(_MaterialModuleItem value, $Res Function(_MaterialModuleItem) _then) = __$MaterialModuleItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by_id') int? createdById,@JsonKey(name: 'updated_by_id') int? updatedById,@JsonKey(name: 'files') List<Files>? files,@JsonKey(name: 'videos') List<Videos>? videos,@JsonKey(name: 'questions') List<Questions>? questions,@JsonKey(name: 'module') Module? module,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'cover') String? cover,@JsonKey(name: 'position') int? position,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'description') List<EditorJsBlock>? description,@JsonKey(name: 'type') ModuleMaterialType? type,@JsonKey(name: 'mentor') bool? mentor,@JsonKey(name: 'middle_rating') String? middleRating
});


@override $ModuleCopyWith<$Res>? get module;

}
/// @nodoc
class __$MaterialModuleItemCopyWithImpl<$Res>
    implements _$MaterialModuleItemCopyWith<$Res> {
  __$MaterialModuleItemCopyWithImpl(this._self, this._then);

  final _MaterialModuleItem _self;
  final $Res Function(_MaterialModuleItem) _then;

/// Create a copy of MaterialModuleItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdById = freezed,Object? updatedById = freezed,Object? files = freezed,Object? videos = freezed,Object? questions = freezed,Object? module = freezed,Object? id = freezed,Object? name = freezed,Object? cover = freezed,Object? position = freezed,Object? duration = freezed,Object? description = freezed,Object? type = freezed,Object? mentor = freezed,Object? middleRating = freezed,}) {
  return _then(_MaterialModuleItem(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as int?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as int?,files: freezed == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<Files>?,videos: freezed == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<Videos>?,questions: freezed == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<Questions>?,module: freezed == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as Module?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
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

/// Create a copy of MaterialModuleItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModuleCopyWith<$Res>? get module {
    if (_self.module == null) {
    return null;
  }

  return $ModuleCopyWith<$Res>(_self.module!, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
mixin _$Files implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'material_id') int? get materialId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'file') String? get file;@JsonKey(name: 'position') int? get position;
/// Create a copy of Files
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilesCopyWith<Files> get copyWith => _$FilesCopyWithImpl<Files>(this as Files, _$identity);

  /// Serializes this Files to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Files'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('materialId', materialId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Files&&(identical(other.id, id) || other.id == id)&&(identical(other.materialId, materialId) || other.materialId == materialId)&&(identical(other.name, name) || other.name == name)&&(identical(other.file, file) || other.file == file)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,materialId,name,file,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Files(id: $id, materialId: $materialId, name: $name, file: $file, position: $position)';
}


}

/// @nodoc
abstract mixin class $FilesCopyWith<$Res>  {
  factory $FilesCopyWith(Files value, $Res Function(Files) _then) = _$FilesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'material_id') int? materialId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'file') String? file,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class _$FilesCopyWithImpl<$Res>
    implements $FilesCopyWith<$Res> {
  _$FilesCopyWithImpl(this._self, this._then);

  final Files _self;
  final $Res Function(Files) _then;

/// Create a copy of Files
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? materialId = freezed,Object? name = freezed,Object? file = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,materialId: freezed == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Files].
extension FilesPatterns on Files {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Files value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Files() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Files value)  $default,){
final _that = this;
switch (_that) {
case _Files():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Files value)?  $default,){
final _that = this;
switch (_that) {
case _Files() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'material_id')  int? materialId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'file')  String? file, @JsonKey(name: 'position')  int? position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Files() when $default != null:
return $default(_that.id,_that.materialId,_that.name,_that.file,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'material_id')  int? materialId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'file')  String? file, @JsonKey(name: 'position')  int? position)  $default,) {final _that = this;
switch (_that) {
case _Files():
return $default(_that.id,_that.materialId,_that.name,_that.file,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'material_id')  int? materialId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'file')  String? file, @JsonKey(name: 'position')  int? position)?  $default,) {final _that = this;
switch (_that) {
case _Files() when $default != null:
return $default(_that.id,_that.materialId,_that.name,_that.file,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Files with DiagnosticableTreeMixin implements Files {
  const _Files({@JsonKey(name: 'id') this.id, @JsonKey(name: 'material_id') this.materialId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'file') this.file, @JsonKey(name: 'position') this.position});
  factory _Files.fromJson(Map<String, dynamic> json) => _$FilesFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'material_id') final  int? materialId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'file') final  String? file;
@override@JsonKey(name: 'position') final  int? position;

/// Create a copy of Files
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilesCopyWith<_Files> get copyWith => __$FilesCopyWithImpl<_Files>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Files'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('materialId', materialId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Files&&(identical(other.id, id) || other.id == id)&&(identical(other.materialId, materialId) || other.materialId == materialId)&&(identical(other.name, name) || other.name == name)&&(identical(other.file, file) || other.file == file)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,materialId,name,file,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Files(id: $id, materialId: $materialId, name: $name, file: $file, position: $position)';
}


}

/// @nodoc
abstract mixin class _$FilesCopyWith<$Res> implements $FilesCopyWith<$Res> {
  factory _$FilesCopyWith(_Files value, $Res Function(_Files) _then) = __$FilesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'material_id') int? materialId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'file') String? file,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class __$FilesCopyWithImpl<$Res>
    implements _$FilesCopyWith<$Res> {
  __$FilesCopyWithImpl(this._self, this._then);

  final _Files _self;
  final $Res Function(_Files) _then;

/// Create a copy of Files
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? materialId = freezed,Object? name = freezed,Object? file = freezed,Object? position = freezed,}) {
  return _then(_Files(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,materialId: freezed == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Videos implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'material_id') int? get materialId;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'position') int? get position; VideoModel? get video;
/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideosCopyWith<Videos> get copyWith => _$VideosCopyWithImpl<Videos>(this as Videos, _$identity);

  /// Serializes this Videos to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Videos'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('materialId', materialId))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('video', video));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Videos&&(identical(other.id, id) || other.id == id)&&(identical(other.materialId, materialId) || other.materialId == materialId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.position, position) || other.position == position)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,materialId,slug,position,video);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Videos(id: $id, materialId: $materialId, slug: $slug, position: $position, video: $video)';
}


}

/// @nodoc
abstract mixin class $VideosCopyWith<$Res>  {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) _then) = _$VideosCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'material_id') int? materialId,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'position') int? position, VideoModel? video
});


$VideoModelCopyWith<$Res>? get video;

}
/// @nodoc
class _$VideosCopyWithImpl<$Res>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._self, this._then);

  final Videos _self;
  final $Res Function(Videos) _then;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? materialId = freezed,Object? slug = freezed,Object? position = freezed,Object? video = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,materialId: freezed == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as VideoModel?,
  ));
}
/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoModelCopyWith<$Res>? get video {
    if (_self.video == null) {
    return null;
  }

  return $VideoModelCopyWith<$Res>(_self.video!, (value) {
    return _then(_self.copyWith(video: value));
  });
}
}


/// Adds pattern-matching-related methods to [Videos].
extension VideosPatterns on Videos {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Videos value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Videos() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Videos value)  $default,){
final _that = this;
switch (_that) {
case _Videos():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Videos value)?  $default,){
final _that = this;
switch (_that) {
case _Videos() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'material_id')  int? materialId, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'position')  int? position,  VideoModel? video)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Videos() when $default != null:
return $default(_that.id,_that.materialId,_that.slug,_that.position,_that.video);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'material_id')  int? materialId, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'position')  int? position,  VideoModel? video)  $default,) {final _that = this;
switch (_that) {
case _Videos():
return $default(_that.id,_that.materialId,_that.slug,_that.position,_that.video);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'material_id')  int? materialId, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'position')  int? position,  VideoModel? video)?  $default,) {final _that = this;
switch (_that) {
case _Videos() when $default != null:
return $default(_that.id,_that.materialId,_that.slug,_that.position,_that.video);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Videos with DiagnosticableTreeMixin implements Videos {
  const _Videos({@JsonKey(name: 'id') this.id, @JsonKey(name: 'material_id') this.materialId, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'position') this.position, this.video});
  factory _Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'material_id') final  int? materialId;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'position') final  int? position;
@override final  VideoModel? video;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideosCopyWith<_Videos> get copyWith => __$VideosCopyWithImpl<_Videos>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideosToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Videos'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('materialId', materialId))..add(DiagnosticsProperty('slug', slug))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('video', video));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Videos&&(identical(other.id, id) || other.id == id)&&(identical(other.materialId, materialId) || other.materialId == materialId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.position, position) || other.position == position)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,materialId,slug,position,video);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Videos(id: $id, materialId: $materialId, slug: $slug, position: $position, video: $video)';
}


}

/// @nodoc
abstract mixin class _$VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$VideosCopyWith(_Videos value, $Res Function(_Videos) _then) = __$VideosCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'material_id') int? materialId,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'position') int? position, VideoModel? video
});


@override $VideoModelCopyWith<$Res>? get video;

}
/// @nodoc
class __$VideosCopyWithImpl<$Res>
    implements _$VideosCopyWith<$Res> {
  __$VideosCopyWithImpl(this._self, this._then);

  final _Videos _self;
  final $Res Function(_Videos) _then;

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? materialId = freezed,Object? slug = freezed,Object? position = freezed,Object? video = freezed,}) {
  return _then(_Videos(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,materialId: freezed == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as VideoModel?,
  ));
}

/// Create a copy of Videos
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoModelCopyWith<$Res>? get video {
    if (_self.video == null) {
    return null;
  }

  return $VideoModelCopyWith<$Res>(_self.video!, (value) {
    return _then(_self.copyWith(video: value));
  });
}
}


/// @nodoc
mixin _$Questions implements DiagnosticableTreeMixin {

@JsonKey(name: 'answers') List<Answers>? get answers;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'material_id') int? get materialId;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'video') String? get video;@JsonKey(name: 'multiselect') bool? get multiselect;@JsonKey(name: 'position') int? get position;
/// Create a copy of Questions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionsCopyWith<Questions> get copyWith => _$QuestionsCopyWithImpl<Questions>(this as Questions, _$identity);

  /// Serializes this Questions to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Questions'))
    ..add(DiagnosticsProperty('answers', answers))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('materialId', materialId))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('multiselect', multiselect))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Questions&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.id, id) || other.id == id)&&(identical(other.materialId, materialId) || other.materialId == materialId)&&(identical(other.text, text) || other.text == text)&&(identical(other.score, score) || other.score == score)&&(identical(other.image, image) || other.image == image)&&(identical(other.video, video) || other.video == video)&&(identical(other.multiselect, multiselect) || other.multiselect == multiselect)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers),id,materialId,text,score,image,video,multiselect,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Questions(answers: $answers, id: $id, materialId: $materialId, text: $text, score: $score, image: $image, video: $video, multiselect: $multiselect, position: $position)';
}


}

/// @nodoc
abstract mixin class $QuestionsCopyWith<$Res>  {
  factory $QuestionsCopyWith(Questions value, $Res Function(Questions) _then) = _$QuestionsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'answers') List<Answers>? answers,@JsonKey(name: 'id') int? id,@JsonKey(name: 'material_id') int? materialId,@JsonKey(name: 'text') String? text,@JsonKey(name: 'score') int? score,@JsonKey(name: 'image') String? image,@JsonKey(name: 'video') String? video,@JsonKey(name: 'multiselect') bool? multiselect,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class _$QuestionsCopyWithImpl<$Res>
    implements $QuestionsCopyWith<$Res> {
  _$QuestionsCopyWithImpl(this._self, this._then);

  final Questions _self;
  final $Res Function(Questions) _then;

/// Create a copy of Questions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = freezed,Object? id = freezed,Object? materialId = freezed,Object? text = freezed,Object? score = freezed,Object? image = freezed,Object? video = freezed,Object? multiselect = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<Answers>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,materialId: freezed == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,multiselect: freezed == multiselect ? _self.multiselect : multiselect // ignore: cast_nullable_to_non_nullable
as bool?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Questions].
extension QuestionsPatterns on Questions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Questions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Questions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Questions value)  $default,){
final _that = this;
switch (_that) {
case _Questions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Questions value)?  $default,){
final _that = this;
switch (_that) {
case _Questions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'answers')  List<Answers>? answers, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'material_id')  int? materialId, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'multiselect')  bool? multiselect, @JsonKey(name: 'position')  int? position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Questions() when $default != null:
return $default(_that.answers,_that.id,_that.materialId,_that.text,_that.score,_that.image,_that.video,_that.multiselect,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'answers')  List<Answers>? answers, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'material_id')  int? materialId, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'multiselect')  bool? multiselect, @JsonKey(name: 'position')  int? position)  $default,) {final _that = this;
switch (_that) {
case _Questions():
return $default(_that.answers,_that.id,_that.materialId,_that.text,_that.score,_that.image,_that.video,_that.multiselect,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'answers')  List<Answers>? answers, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'material_id')  int? materialId, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'multiselect')  bool? multiselect, @JsonKey(name: 'position')  int? position)?  $default,) {final _that = this;
switch (_that) {
case _Questions() when $default != null:
return $default(_that.answers,_that.id,_that.materialId,_that.text,_that.score,_that.image,_that.video,_that.multiselect,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Questions with DiagnosticableTreeMixin implements Questions {
  const _Questions({@JsonKey(name: 'answers') final  List<Answers>? answers, @JsonKey(name: 'id') this.id, @JsonKey(name: 'material_id') this.materialId, @JsonKey(name: 'text') this.text, @JsonKey(name: 'score') this.score, @JsonKey(name: 'image') this.image, @JsonKey(name: 'video') this.video, @JsonKey(name: 'multiselect') this.multiselect, @JsonKey(name: 'position') this.position}): _answers = answers;
  factory _Questions.fromJson(Map<String, dynamic> json) => _$QuestionsFromJson(json);

 final  List<Answers>? _answers;
@override@JsonKey(name: 'answers') List<Answers>? get answers {
  final value = _answers;
  if (value == null) return null;
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'material_id') final  int? materialId;
@override@JsonKey(name: 'text') final  String? text;
@override@JsonKey(name: 'score') final  int? score;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'video') final  String? video;
@override@JsonKey(name: 'multiselect') final  bool? multiselect;
@override@JsonKey(name: 'position') final  int? position;

/// Create a copy of Questions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionsCopyWith<_Questions> get copyWith => __$QuestionsCopyWithImpl<_Questions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Questions'))
    ..add(DiagnosticsProperty('answers', answers))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('materialId', materialId))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('multiselect', multiselect))..add(DiagnosticsProperty('position', position));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Questions&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.id, id) || other.id == id)&&(identical(other.materialId, materialId) || other.materialId == materialId)&&(identical(other.text, text) || other.text == text)&&(identical(other.score, score) || other.score == score)&&(identical(other.image, image) || other.image == image)&&(identical(other.video, video) || other.video == video)&&(identical(other.multiselect, multiselect) || other.multiselect == multiselect)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers),id,materialId,text,score,image,video,multiselect,position);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Questions(answers: $answers, id: $id, materialId: $materialId, text: $text, score: $score, image: $image, video: $video, multiselect: $multiselect, position: $position)';
}


}

/// @nodoc
abstract mixin class _$QuestionsCopyWith<$Res> implements $QuestionsCopyWith<$Res> {
  factory _$QuestionsCopyWith(_Questions value, $Res Function(_Questions) _then) = __$QuestionsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'answers') List<Answers>? answers,@JsonKey(name: 'id') int? id,@JsonKey(name: 'material_id') int? materialId,@JsonKey(name: 'text') String? text,@JsonKey(name: 'score') int? score,@JsonKey(name: 'image') String? image,@JsonKey(name: 'video') String? video,@JsonKey(name: 'multiselect') bool? multiselect,@JsonKey(name: 'position') int? position
});




}
/// @nodoc
class __$QuestionsCopyWithImpl<$Res>
    implements _$QuestionsCopyWith<$Res> {
  __$QuestionsCopyWithImpl(this._self, this._then);

  final _Questions _self;
  final $Res Function(_Questions) _then;

/// Create a copy of Questions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = freezed,Object? id = freezed,Object? materialId = freezed,Object? text = freezed,Object? score = freezed,Object? image = freezed,Object? video = freezed,Object? multiselect = freezed,Object? position = freezed,}) {
  return _then(_Questions(
answers: freezed == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<Answers>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,materialId: freezed == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,multiselect: freezed == multiselect ? _self.multiselect : multiselect // ignore: cast_nullable_to_non_nullable
as bool?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Answers implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'question_id') int? get questionId;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'video') String? get video;@JsonKey(name: 'correct') bool? get correct;
/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswersCopyWith<Answers> get copyWith => _$AnswersCopyWithImpl<Answers>(this as Answers, _$identity);

  /// Serializes this Answers to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Answers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('questionId', questionId))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('correct', correct));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answers&&(identical(other.id, id) || other.id == id)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.text, text) || other.text == text)&&(identical(other.image, image) || other.image == image)&&(identical(other.video, video) || other.video == video)&&(identical(other.correct, correct) || other.correct == correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,questionId,text,image,video,correct);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Answers(id: $id, questionId: $questionId, text: $text, image: $image, video: $video, correct: $correct)';
}


}

/// @nodoc
abstract mixin class $AnswersCopyWith<$Res>  {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) _then) = _$AnswersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'question_id') int? questionId,@JsonKey(name: 'text') String? text,@JsonKey(name: 'image') String? image,@JsonKey(name: 'video') String? video,@JsonKey(name: 'correct') bool? correct
});




}
/// @nodoc
class _$AnswersCopyWithImpl<$Res>
    implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._self, this._then);

  final Answers _self;
  final $Res Function(Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? questionId = freezed,Object? text = freezed,Object? image = freezed,Object? video = freezed,Object? correct = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,correct: freezed == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Answers].
extension AnswersPatterns on Answers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Answers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Answers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Answers value)  $default,){
final _that = this;
switch (_that) {
case _Answers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Answers value)?  $default,){
final _that = this;
switch (_that) {
case _Answers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'question_id')  int? questionId, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'correct')  bool? correct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that.id,_that.questionId,_that.text,_that.image,_that.video,_that.correct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'question_id')  int? questionId, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'correct')  bool? correct)  $default,) {final _that = this;
switch (_that) {
case _Answers():
return $default(_that.id,_that.questionId,_that.text,_that.image,_that.video,_that.correct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'question_id')  int? questionId, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'video')  String? video, @JsonKey(name: 'correct')  bool? correct)?  $default,) {final _that = this;
switch (_that) {
case _Answers() when $default != null:
return $default(_that.id,_that.questionId,_that.text,_that.image,_that.video,_that.correct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Answers with DiagnosticableTreeMixin implements Answers {
  const _Answers({@JsonKey(name: 'id') this.id, @JsonKey(name: 'question_id') this.questionId, @JsonKey(name: 'text') this.text, @JsonKey(name: 'image') this.image, @JsonKey(name: 'video') this.video, @JsonKey(name: 'correct') this.correct});
  factory _Answers.fromJson(Map<String, dynamic> json) => _$AnswersFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'question_id') final  int? questionId;
@override@JsonKey(name: 'text') final  String? text;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'video') final  String? video;
@override@JsonKey(name: 'correct') final  bool? correct;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswersCopyWith<_Answers> get copyWith => __$AnswersCopyWithImpl<_Answers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Answers'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('questionId', questionId))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('video', video))..add(DiagnosticsProperty('correct', correct));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answers&&(identical(other.id, id) || other.id == id)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.text, text) || other.text == text)&&(identical(other.image, image) || other.image == image)&&(identical(other.video, video) || other.video == video)&&(identical(other.correct, correct) || other.correct == correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,questionId,text,image,video,correct);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Answers(id: $id, questionId: $questionId, text: $text, image: $image, video: $video, correct: $correct)';
}


}

/// @nodoc
abstract mixin class _$AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$AnswersCopyWith(_Answers value, $Res Function(_Answers) _then) = __$AnswersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'question_id') int? questionId,@JsonKey(name: 'text') String? text,@JsonKey(name: 'image') String? image,@JsonKey(name: 'video') String? video,@JsonKey(name: 'correct') bool? correct
});




}
/// @nodoc
class __$AnswersCopyWithImpl<$Res>
    implements _$AnswersCopyWith<$Res> {
  __$AnswersCopyWithImpl(this._self, this._then);

  final _Answers _self;
  final $Res Function(_Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? questionId = freezed,Object? text = freezed,Object? image = freezed,Object? video = freezed,Object? correct = freezed,}) {
  return _then(_Answers(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,correct: freezed == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$Module implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'position') int? get position;@JsonKey(name: 'status') String? get status;
/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleCopyWith<Module> get copyWith => _$ModuleCopyWithImpl<Module>(this as Module, _$identity);

  /// Serializes this Module to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Module'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('productId', productId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Module&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,name,description,position,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Module(id: $id, productId: $productId, name: $name, description: $description, position: $position, status: $status)';
}


}

/// @nodoc
abstract mixin class $ModuleCopyWith<$Res>  {
  factory $ModuleCopyWith(Module value, $Res Function(Module) _then) = _$ModuleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'position') int? position,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class _$ModuleCopyWithImpl<$Res>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._self, this._then);

  final Module _self;
  final $Res Function(Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productId = freezed,Object? name = freezed,Object? description = freezed,Object? position = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Module].
extension ModulePatterns on Module {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Module value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Module() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Module value)  $default,){
final _that = this;
switch (_that) {
case _Module():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Module value)?  $default,){
final _that = this;
switch (_that) {
case _Module() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Module() when $default != null:
return $default(_that.id,_that.productId,_that.name,_that.description,_that.position,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _Module():
return $default(_that.id,_that.productId,_that.name,_that.description,_that.position,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'position')  int? position, @JsonKey(name: 'status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Module() when $default != null:
return $default(_that.id,_that.productId,_that.name,_that.description,_that.position,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Module with DiagnosticableTreeMixin implements Module {
  const _Module({@JsonKey(name: 'id') this.id, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'position') this.position, @JsonKey(name: 'status') this.status});
  factory _Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'position') final  int? position;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleCopyWith<_Module> get copyWith => __$ModuleCopyWithImpl<_Module>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Module'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('productId', productId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Module&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,name,description,position,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Module(id: $id, productId: $productId, name: $name, description: $description, position: $position, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ModuleCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$ModuleCopyWith(_Module value, $Res Function(_Module) _then) = __$ModuleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'position') int? position,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class __$ModuleCopyWithImpl<$Res>
    implements _$ModuleCopyWith<$Res> {
  __$ModuleCopyWithImpl(this._self, this._then);

  final _Module _self;
  final $Res Function(_Module) _then;

/// Create a copy of Module
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = freezed,Object? name = freezed,Object? description = freezed,Object? position = freezed,Object? status = freezed,}) {
  return _then(_Module(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
