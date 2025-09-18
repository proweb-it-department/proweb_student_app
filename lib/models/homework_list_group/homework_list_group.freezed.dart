// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework_list_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeworkListGroup implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'checked') bool? get checked;@JsonKey(name: 'checked_at') String? get checkedAt;@JsonKey(name: 'deadline_lesson_number') int? get deadlineLessonNumber;@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'material_deleted') bool? get materialDeleted;@JsonKey(name: 'group_id') int? get groupId;@JsonKey(name: 'homework') Homework? get homework;@JsonKey(name: 'has_material') bool? get hasMaterial;
/// Create a copy of HomeworkListGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeworkListGroupCopyWith<HomeworkListGroup> get copyWith => _$HomeworkListGroupCopyWithImpl<HomeworkListGroup>(this as HomeworkListGroup, _$identity);

  /// Serializes this HomeworkListGroup to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeworkListGroup'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('checked', checked))..add(DiagnosticsProperty('checkedAt', checkedAt))..add(DiagnosticsProperty('deadlineLessonNumber', deadlineLessonNumber))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('materialDeleted', materialDeleted))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('homework', homework))..add(DiagnosticsProperty('hasMaterial', hasMaterial));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkListGroup&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.score, score) || other.score == score)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.deadlineLessonNumber, deadlineLessonNumber) || other.deadlineLessonNumber == deadlineLessonNumber)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.materialDeleted, materialDeleted) || other.materialDeleted == materialDeleted)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.homework, homework) || other.homework == homework)&&(identical(other.hasMaterial, hasMaterial) || other.hasMaterial == hasMaterial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,score,checked,checkedAt,deadlineLessonNumber,studentId,materialDeleted,groupId,homework,hasMaterial);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeworkListGroup(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, score: $score, checked: $checked, checkedAt: $checkedAt, deadlineLessonNumber: $deadlineLessonNumber, studentId: $studentId, materialDeleted: $materialDeleted, groupId: $groupId, homework: $homework, hasMaterial: $hasMaterial)';
}


}

/// @nodoc
abstract mixin class $HomeworkListGroupCopyWith<$Res>  {
  factory $HomeworkListGroupCopyWith(HomeworkListGroup value, $Res Function(HomeworkListGroup) _then) = _$HomeworkListGroupCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'score') int? score,@JsonKey(name: 'checked') bool? checked,@JsonKey(name: 'checked_at') String? checkedAt,@JsonKey(name: 'deadline_lesson_number') int? deadlineLessonNumber,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'material_deleted') bool? materialDeleted,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'homework') Homework? homework,@JsonKey(name: 'has_material') bool? hasMaterial
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;$HomeworkCopyWith<$Res>? get homework;

}
/// @nodoc
class _$HomeworkListGroupCopyWithImpl<$Res>
    implements $HomeworkListGroupCopyWith<$Res> {
  _$HomeworkListGroupCopyWithImpl(this._self, this._then);

  final HomeworkListGroup _self;
  final $Res Function(HomeworkListGroup) _then;

/// Create a copy of HomeworkListGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? score = freezed,Object? checked = freezed,Object? checkedAt = freezed,Object? deadlineLessonNumber = freezed,Object? studentId = freezed,Object? materialDeleted = freezed,Object? groupId = freezed,Object? homework = freezed,Object? hasMaterial = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,checked: freezed == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as bool?,checkedAt: freezed == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as String?,deadlineLessonNumber: freezed == deadlineLessonNumber ? _self.deadlineLessonNumber : deadlineLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,materialDeleted: freezed == materialDeleted ? _self.materialDeleted : materialDeleted // ignore: cast_nullable_to_non_nullable
as bool?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,homework: freezed == homework ? _self.homework : homework // ignore: cast_nullable_to_non_nullable
as Homework?,hasMaterial: freezed == hasMaterial ? _self.hasMaterial : hasMaterial // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of HomeworkListGroup
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
}/// Create a copy of HomeworkListGroup
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
}/// Create a copy of HomeworkListGroup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeworkCopyWith<$Res>? get homework {
    if (_self.homework == null) {
    return null;
  }

  return $HomeworkCopyWith<$Res>(_self.homework!, (value) {
    return _then(_self.copyWith(homework: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeworkListGroup].
extension HomeworkListGroupPatterns on HomeworkListGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeworkListGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeworkListGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeworkListGroup value)  $default,){
final _that = this;
switch (_that) {
case _HomeworkListGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeworkListGroup value)?  $default,){
final _that = this;
switch (_that) {
case _HomeworkListGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'checked')  bool? checked, @JsonKey(name: 'checked_at')  String? checkedAt, @JsonKey(name: 'deadline_lesson_number')  int? deadlineLessonNumber, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'material_deleted')  bool? materialDeleted, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'homework')  Homework? homework, @JsonKey(name: 'has_material')  bool? hasMaterial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeworkListGroup() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.score,_that.checked,_that.checkedAt,_that.deadlineLessonNumber,_that.studentId,_that.materialDeleted,_that.groupId,_that.homework,_that.hasMaterial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'checked')  bool? checked, @JsonKey(name: 'checked_at')  String? checkedAt, @JsonKey(name: 'deadline_lesson_number')  int? deadlineLessonNumber, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'material_deleted')  bool? materialDeleted, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'homework')  Homework? homework, @JsonKey(name: 'has_material')  bool? hasMaterial)  $default,) {final _that = this;
switch (_that) {
case _HomeworkListGroup():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.score,_that.checked,_that.checkedAt,_that.deadlineLessonNumber,_that.studentId,_that.materialDeleted,_that.groupId,_that.homework,_that.hasMaterial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'checked')  bool? checked, @JsonKey(name: 'checked_at')  String? checkedAt, @JsonKey(name: 'deadline_lesson_number')  int? deadlineLessonNumber, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'material_deleted')  bool? materialDeleted, @JsonKey(name: 'group_id')  int? groupId, @JsonKey(name: 'homework')  Homework? homework, @JsonKey(name: 'has_material')  bool? hasMaterial)?  $default,) {final _that = this;
switch (_that) {
case _HomeworkListGroup() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.score,_that.checked,_that.checkedAt,_that.deadlineLessonNumber,_that.studentId,_that.materialDeleted,_that.groupId,_that.homework,_that.hasMaterial);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeworkListGroup with DiagnosticableTreeMixin implements HomeworkListGroup {
  const _HomeworkListGroup({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'score') this.score, @JsonKey(name: 'checked') this.checked, @JsonKey(name: 'checked_at') this.checkedAt, @JsonKey(name: 'deadline_lesson_number') this.deadlineLessonNumber, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'material_deleted') this.materialDeleted, @JsonKey(name: 'group_id') this.groupId, @JsonKey(name: 'homework') this.homework, @JsonKey(name: 'has_material') this.hasMaterial});
  factory _HomeworkListGroup.fromJson(Map<String, dynamic> json) => _$HomeworkListGroupFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'score') final  int? score;
@override@JsonKey(name: 'checked') final  bool? checked;
@override@JsonKey(name: 'checked_at') final  String? checkedAt;
@override@JsonKey(name: 'deadline_lesson_number') final  int? deadlineLessonNumber;
@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'material_deleted') final  bool? materialDeleted;
@override@JsonKey(name: 'group_id') final  int? groupId;
@override@JsonKey(name: 'homework') final  Homework? homework;
@override@JsonKey(name: 'has_material') final  bool? hasMaterial;

/// Create a copy of HomeworkListGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkListGroupCopyWith<_HomeworkListGroup> get copyWith => __$HomeworkListGroupCopyWithImpl<_HomeworkListGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeworkListGroupToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeworkListGroup'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('checked', checked))..add(DiagnosticsProperty('checkedAt', checkedAt))..add(DiagnosticsProperty('deadlineLessonNumber', deadlineLessonNumber))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('materialDeleted', materialDeleted))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('homework', homework))..add(DiagnosticsProperty('hasMaterial', hasMaterial));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkListGroup&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.score, score) || other.score == score)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.deadlineLessonNumber, deadlineLessonNumber) || other.deadlineLessonNumber == deadlineLessonNumber)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.materialDeleted, materialDeleted) || other.materialDeleted == materialDeleted)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.homework, homework) || other.homework == homework)&&(identical(other.hasMaterial, hasMaterial) || other.hasMaterial == hasMaterial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,score,checked,checkedAt,deadlineLessonNumber,studentId,materialDeleted,groupId,homework,hasMaterial);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeworkListGroup(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, score: $score, checked: $checked, checkedAt: $checkedAt, deadlineLessonNumber: $deadlineLessonNumber, studentId: $studentId, materialDeleted: $materialDeleted, groupId: $groupId, homework: $homework, hasMaterial: $hasMaterial)';
}


}

/// @nodoc
abstract mixin class _$HomeworkListGroupCopyWith<$Res> implements $HomeworkListGroupCopyWith<$Res> {
  factory _$HomeworkListGroupCopyWith(_HomeworkListGroup value, $Res Function(_HomeworkListGroup) _then) = __$HomeworkListGroupCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'score') int? score,@JsonKey(name: 'checked') bool? checked,@JsonKey(name: 'checked_at') String? checkedAt,@JsonKey(name: 'deadline_lesson_number') int? deadlineLessonNumber,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'material_deleted') bool? materialDeleted,@JsonKey(name: 'group_id') int? groupId,@JsonKey(name: 'homework') Homework? homework,@JsonKey(name: 'has_material') bool? hasMaterial
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;@override $HomeworkCopyWith<$Res>? get homework;

}
/// @nodoc
class __$HomeworkListGroupCopyWithImpl<$Res>
    implements _$HomeworkListGroupCopyWith<$Res> {
  __$HomeworkListGroupCopyWithImpl(this._self, this._then);

  final _HomeworkListGroup _self;
  final $Res Function(_HomeworkListGroup) _then;

/// Create a copy of HomeworkListGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? score = freezed,Object? checked = freezed,Object? checkedAt = freezed,Object? deadlineLessonNumber = freezed,Object? studentId = freezed,Object? materialDeleted = freezed,Object? groupId = freezed,Object? homework = freezed,Object? hasMaterial = freezed,}) {
  return _then(_HomeworkListGroup(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,checked: freezed == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as bool?,checkedAt: freezed == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as String?,deadlineLessonNumber: freezed == deadlineLessonNumber ? _self.deadlineLessonNumber : deadlineLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,materialDeleted: freezed == materialDeleted ? _self.materialDeleted : materialDeleted // ignore: cast_nullable_to_non_nullable
as bool?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,homework: freezed == homework ? _self.homework : homework // ignore: cast_nullable_to_non_nullable
as Homework?,hasMaterial: freezed == hasMaterial ? _self.hasMaterial : hasMaterial // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of HomeworkListGroup
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
}/// Create a copy of HomeworkListGroup
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
}/// Create a copy of HomeworkListGroup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeworkCopyWith<$Res>? get homework {
    if (_self.homework == null) {
    return null;
  }

  return $HomeworkCopyWith<$Res>(_self.homework!, (value) {
    return _then(_self.copyWith(homework: value));
  });
}
}


/// @nodoc
mixin _$Homework implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;
/// Create a copy of Homework
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeworkCopyWith<Homework> get copyWith => _$HomeworkCopyWithImpl<Homework>(this as Homework, _$identity);

  /// Serializes this Homework to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Homework'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Homework&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Homework(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $HomeworkCopyWith<$Res>  {
  factory $HomeworkCopyWith(Homework value, $Res Function(Homework) _then) = _$HomeworkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$HomeworkCopyWithImpl<$Res>
    implements $HomeworkCopyWith<$Res> {
  _$HomeworkCopyWithImpl(this._self, this._then);

  final Homework _self;
  final $Res Function(Homework) _then;

/// Create a copy of Homework
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Homework].
extension HomeworkPatterns on Homework {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Homework value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Homework() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Homework value)  $default,){
final _that = this;
switch (_that) {
case _Homework():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Homework value)?  $default,){
final _that = this;
switch (_that) {
case _Homework() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Homework() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _Homework():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Homework() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Homework with DiagnosticableTreeMixin implements Homework {
  const _Homework({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});
  factory _Homework.fromJson(Map<String, dynamic> json) => _$HomeworkFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of Homework
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkCopyWith<_Homework> get copyWith => __$HomeworkCopyWithImpl<_Homework>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeworkToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Homework'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Homework&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Homework(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$HomeworkCopyWith<$Res> implements $HomeworkCopyWith<$Res> {
  factory _$HomeworkCopyWith(_Homework value, $Res Function(_Homework) _then) = __$HomeworkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$HomeworkCopyWithImpl<$Res>
    implements _$HomeworkCopyWith<$Res> {
  __$HomeworkCopyWithImpl(this._self, this._then);

  final _Homework _self;
  final $Res Function(_Homework) _then;

/// Create a copy of Homework
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Homework(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
