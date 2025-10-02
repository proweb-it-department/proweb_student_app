// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework_student_relation_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeworkStudentRelationGroup implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'checked') bool? get checked;@JsonKey(name: 'checked_at') String? get checkedAt;@JsonKey(name: 'deadline_lesson_number') int? get deadlineLessonNumber;@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'material_deleted') bool? get materialDeleted;@JsonKey(name: 'student') Student? get student;@JsonKey(name: 'homework') Homework? get homework;@JsonKey(name: 'homework_materials') List<HomeworkMaterials>? get homeworkMaterials;@JsonKey(name: 'deadline_expired') bool? get deadlineExpired;@JsonKey(name: 'check_expired') bool? get checkExpired;@JsonKey(name: 'retake_check_expired') bool? get retakeCheckExpired;@JsonKey(name: 'last_lesson_number') int? get lastLessonNumber;@JsonKey(name: 'check_deadline_lesson_number') int? get checkDeadlineLessonNumber;@JsonKey(name: 'checked_retaken_at') String? get checkedRetakenAt;
/// Create a copy of HomeworkStudentRelationGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeworkStudentRelationGroupCopyWith<HomeworkStudentRelationGroup> get copyWith => _$HomeworkStudentRelationGroupCopyWithImpl<HomeworkStudentRelationGroup>(this as HomeworkStudentRelationGroup, _$identity);

  /// Serializes this HomeworkStudentRelationGroup to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeworkStudentRelationGroup'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('checked', checked))..add(DiagnosticsProperty('checkedAt', checkedAt))..add(DiagnosticsProperty('deadlineLessonNumber', deadlineLessonNumber))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('materialDeleted', materialDeleted))..add(DiagnosticsProperty('student', student))..add(DiagnosticsProperty('homework', homework))..add(DiagnosticsProperty('homeworkMaterials', homeworkMaterials))..add(DiagnosticsProperty('deadlineExpired', deadlineExpired))..add(DiagnosticsProperty('checkExpired', checkExpired))..add(DiagnosticsProperty('retakeCheckExpired', retakeCheckExpired))..add(DiagnosticsProperty('lastLessonNumber', lastLessonNumber))..add(DiagnosticsProperty('checkDeadlineLessonNumber', checkDeadlineLessonNumber))..add(DiagnosticsProperty('checkedRetakenAt', checkedRetakenAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkStudentRelationGroup&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.score, score) || other.score == score)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.deadlineLessonNumber, deadlineLessonNumber) || other.deadlineLessonNumber == deadlineLessonNumber)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.materialDeleted, materialDeleted) || other.materialDeleted == materialDeleted)&&(identical(other.student, student) || other.student == student)&&(identical(other.homework, homework) || other.homework == homework)&&const DeepCollectionEquality().equals(other.homeworkMaterials, homeworkMaterials)&&(identical(other.deadlineExpired, deadlineExpired) || other.deadlineExpired == deadlineExpired)&&(identical(other.checkExpired, checkExpired) || other.checkExpired == checkExpired)&&(identical(other.retakeCheckExpired, retakeCheckExpired) || other.retakeCheckExpired == retakeCheckExpired)&&(identical(other.lastLessonNumber, lastLessonNumber) || other.lastLessonNumber == lastLessonNumber)&&(identical(other.checkDeadlineLessonNumber, checkDeadlineLessonNumber) || other.checkDeadlineLessonNumber == checkDeadlineLessonNumber)&&(identical(other.checkedRetakenAt, checkedRetakenAt) || other.checkedRetakenAt == checkedRetakenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,score,checked,checkedAt,deadlineLessonNumber,studentId,materialDeleted,student,homework,const DeepCollectionEquality().hash(homeworkMaterials),deadlineExpired,checkExpired,retakeCheckExpired,lastLessonNumber,checkDeadlineLessonNumber,checkedRetakenAt]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeworkStudentRelationGroup(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, score: $score, checked: $checked, checkedAt: $checkedAt, deadlineLessonNumber: $deadlineLessonNumber, studentId: $studentId, materialDeleted: $materialDeleted, student: $student, homework: $homework, homeworkMaterials: $homeworkMaterials, deadlineExpired: $deadlineExpired, checkExpired: $checkExpired, retakeCheckExpired: $retakeCheckExpired, lastLessonNumber: $lastLessonNumber, checkDeadlineLessonNumber: $checkDeadlineLessonNumber, checkedRetakenAt: $checkedRetakenAt)';
}


}

/// @nodoc
abstract mixin class $HomeworkStudentRelationGroupCopyWith<$Res>  {
  factory $HomeworkStudentRelationGroupCopyWith(HomeworkStudentRelationGroup value, $Res Function(HomeworkStudentRelationGroup) _then) = _$HomeworkStudentRelationGroupCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'score') int? score,@JsonKey(name: 'checked') bool? checked,@JsonKey(name: 'checked_at') String? checkedAt,@JsonKey(name: 'deadline_lesson_number') int? deadlineLessonNumber,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'material_deleted') bool? materialDeleted,@JsonKey(name: 'student') Student? student,@JsonKey(name: 'homework') Homework? homework,@JsonKey(name: 'homework_materials') List<HomeworkMaterials>? homeworkMaterials,@JsonKey(name: 'deadline_expired') bool? deadlineExpired,@JsonKey(name: 'check_expired') bool? checkExpired,@JsonKey(name: 'retake_check_expired') bool? retakeCheckExpired,@JsonKey(name: 'last_lesson_number') int? lastLessonNumber,@JsonKey(name: 'check_deadline_lesson_number') int? checkDeadlineLessonNumber,@JsonKey(name: 'checked_retaken_at') String? checkedRetakenAt
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;$StudentCopyWith<$Res>? get student;$HomeworkCopyWith<$Res>? get homework;

}
/// @nodoc
class _$HomeworkStudentRelationGroupCopyWithImpl<$Res>
    implements $HomeworkStudentRelationGroupCopyWith<$Res> {
  _$HomeworkStudentRelationGroupCopyWithImpl(this._self, this._then);

  final HomeworkStudentRelationGroup _self;
  final $Res Function(HomeworkStudentRelationGroup) _then;

/// Create a copy of HomeworkStudentRelationGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? score = freezed,Object? checked = freezed,Object? checkedAt = freezed,Object? deadlineLessonNumber = freezed,Object? studentId = freezed,Object? materialDeleted = freezed,Object? student = freezed,Object? homework = freezed,Object? homeworkMaterials = freezed,Object? deadlineExpired = freezed,Object? checkExpired = freezed,Object? retakeCheckExpired = freezed,Object? lastLessonNumber = freezed,Object? checkDeadlineLessonNumber = freezed,Object? checkedRetakenAt = freezed,}) {
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
as bool?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,homework: freezed == homework ? _self.homework : homework // ignore: cast_nullable_to_non_nullable
as Homework?,homeworkMaterials: freezed == homeworkMaterials ? _self.homeworkMaterials : homeworkMaterials // ignore: cast_nullable_to_non_nullable
as List<HomeworkMaterials>?,deadlineExpired: freezed == deadlineExpired ? _self.deadlineExpired : deadlineExpired // ignore: cast_nullable_to_non_nullable
as bool?,checkExpired: freezed == checkExpired ? _self.checkExpired : checkExpired // ignore: cast_nullable_to_non_nullable
as bool?,retakeCheckExpired: freezed == retakeCheckExpired ? _self.retakeCheckExpired : retakeCheckExpired // ignore: cast_nullable_to_non_nullable
as bool?,lastLessonNumber: freezed == lastLessonNumber ? _self.lastLessonNumber : lastLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,checkDeadlineLessonNumber: freezed == checkDeadlineLessonNumber ? _self.checkDeadlineLessonNumber : checkDeadlineLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,checkedRetakenAt: freezed == checkedRetakenAt ? _self.checkedRetakenAt : checkedRetakenAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeworkStudentRelationGroup
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
}/// Create a copy of HomeworkStudentRelationGroup
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
}/// Create a copy of HomeworkStudentRelationGroup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of HomeworkStudentRelationGroup
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


/// Adds pattern-matching-related methods to [HomeworkStudentRelationGroup].
extension HomeworkStudentRelationGroupPatterns on HomeworkStudentRelationGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeworkStudentRelationGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeworkStudentRelationGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeworkStudentRelationGroup value)  $default,){
final _that = this;
switch (_that) {
case _HomeworkStudentRelationGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeworkStudentRelationGroup value)?  $default,){
final _that = this;
switch (_that) {
case _HomeworkStudentRelationGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'checked')  bool? checked, @JsonKey(name: 'checked_at')  String? checkedAt, @JsonKey(name: 'deadline_lesson_number')  int? deadlineLessonNumber, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'material_deleted')  bool? materialDeleted, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'homework')  Homework? homework, @JsonKey(name: 'homework_materials')  List<HomeworkMaterials>? homeworkMaterials, @JsonKey(name: 'deadline_expired')  bool? deadlineExpired, @JsonKey(name: 'check_expired')  bool? checkExpired, @JsonKey(name: 'retake_check_expired')  bool? retakeCheckExpired, @JsonKey(name: 'last_lesson_number')  int? lastLessonNumber, @JsonKey(name: 'check_deadline_lesson_number')  int? checkDeadlineLessonNumber, @JsonKey(name: 'checked_retaken_at')  String? checkedRetakenAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeworkStudentRelationGroup() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.score,_that.checked,_that.checkedAt,_that.deadlineLessonNumber,_that.studentId,_that.materialDeleted,_that.student,_that.homework,_that.homeworkMaterials,_that.deadlineExpired,_that.checkExpired,_that.retakeCheckExpired,_that.lastLessonNumber,_that.checkDeadlineLessonNumber,_that.checkedRetakenAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'checked')  bool? checked, @JsonKey(name: 'checked_at')  String? checkedAt, @JsonKey(name: 'deadline_lesson_number')  int? deadlineLessonNumber, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'material_deleted')  bool? materialDeleted, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'homework')  Homework? homework, @JsonKey(name: 'homework_materials')  List<HomeworkMaterials>? homeworkMaterials, @JsonKey(name: 'deadline_expired')  bool? deadlineExpired, @JsonKey(name: 'check_expired')  bool? checkExpired, @JsonKey(name: 'retake_check_expired')  bool? retakeCheckExpired, @JsonKey(name: 'last_lesson_number')  int? lastLessonNumber, @JsonKey(name: 'check_deadline_lesson_number')  int? checkDeadlineLessonNumber, @JsonKey(name: 'checked_retaken_at')  String? checkedRetakenAt)  $default,) {final _that = this;
switch (_that) {
case _HomeworkStudentRelationGroup():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.score,_that.checked,_that.checkedAt,_that.deadlineLessonNumber,_that.studentId,_that.materialDeleted,_that.student,_that.homework,_that.homeworkMaterials,_that.deadlineExpired,_that.checkExpired,_that.retakeCheckExpired,_that.lastLessonNumber,_that.checkDeadlineLessonNumber,_that.checkedRetakenAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'checked')  bool? checked, @JsonKey(name: 'checked_at')  String? checkedAt, @JsonKey(name: 'deadline_lesson_number')  int? deadlineLessonNumber, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'material_deleted')  bool? materialDeleted, @JsonKey(name: 'student')  Student? student, @JsonKey(name: 'homework')  Homework? homework, @JsonKey(name: 'homework_materials')  List<HomeworkMaterials>? homeworkMaterials, @JsonKey(name: 'deadline_expired')  bool? deadlineExpired, @JsonKey(name: 'check_expired')  bool? checkExpired, @JsonKey(name: 'retake_check_expired')  bool? retakeCheckExpired, @JsonKey(name: 'last_lesson_number')  int? lastLessonNumber, @JsonKey(name: 'check_deadline_lesson_number')  int? checkDeadlineLessonNumber, @JsonKey(name: 'checked_retaken_at')  String? checkedRetakenAt)?  $default,) {final _that = this;
switch (_that) {
case _HomeworkStudentRelationGroup() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.score,_that.checked,_that.checkedAt,_that.deadlineLessonNumber,_that.studentId,_that.materialDeleted,_that.student,_that.homework,_that.homeworkMaterials,_that.deadlineExpired,_that.checkExpired,_that.retakeCheckExpired,_that.lastLessonNumber,_that.checkDeadlineLessonNumber,_that.checkedRetakenAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeworkStudentRelationGroup with DiagnosticableTreeMixin implements HomeworkStudentRelationGroup {
  const _HomeworkStudentRelationGroup({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'score') this.score, @JsonKey(name: 'checked') this.checked, @JsonKey(name: 'checked_at') this.checkedAt, @JsonKey(name: 'deadline_lesson_number') this.deadlineLessonNumber, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'material_deleted') this.materialDeleted, @JsonKey(name: 'student') this.student, @JsonKey(name: 'homework') this.homework, @JsonKey(name: 'homework_materials') final  List<HomeworkMaterials>? homeworkMaterials, @JsonKey(name: 'deadline_expired') this.deadlineExpired, @JsonKey(name: 'check_expired') this.checkExpired, @JsonKey(name: 'retake_check_expired') this.retakeCheckExpired, @JsonKey(name: 'last_lesson_number') this.lastLessonNumber, @JsonKey(name: 'check_deadline_lesson_number') this.checkDeadlineLessonNumber, @JsonKey(name: 'checked_retaken_at') this.checkedRetakenAt}): _homeworkMaterials = homeworkMaterials;
  factory _HomeworkStudentRelationGroup.fromJson(Map<String, dynamic> json) => _$HomeworkStudentRelationGroupFromJson(json);

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
@override@JsonKey(name: 'student') final  Student? student;
@override@JsonKey(name: 'homework') final  Homework? homework;
 final  List<HomeworkMaterials>? _homeworkMaterials;
@override@JsonKey(name: 'homework_materials') List<HomeworkMaterials>? get homeworkMaterials {
  final value = _homeworkMaterials;
  if (value == null) return null;
  if (_homeworkMaterials is EqualUnmodifiableListView) return _homeworkMaterials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'deadline_expired') final  bool? deadlineExpired;
@override@JsonKey(name: 'check_expired') final  bool? checkExpired;
@override@JsonKey(name: 'retake_check_expired') final  bool? retakeCheckExpired;
@override@JsonKey(name: 'last_lesson_number') final  int? lastLessonNumber;
@override@JsonKey(name: 'check_deadline_lesson_number') final  int? checkDeadlineLessonNumber;
@override@JsonKey(name: 'checked_retaken_at') final  String? checkedRetakenAt;

/// Create a copy of HomeworkStudentRelationGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkStudentRelationGroupCopyWith<_HomeworkStudentRelationGroup> get copyWith => __$HomeworkStudentRelationGroupCopyWithImpl<_HomeworkStudentRelationGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeworkStudentRelationGroupToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeworkStudentRelationGroup'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('score', score))..add(DiagnosticsProperty('checked', checked))..add(DiagnosticsProperty('checkedAt', checkedAt))..add(DiagnosticsProperty('deadlineLessonNumber', deadlineLessonNumber))..add(DiagnosticsProperty('studentId', studentId))..add(DiagnosticsProperty('materialDeleted', materialDeleted))..add(DiagnosticsProperty('student', student))..add(DiagnosticsProperty('homework', homework))..add(DiagnosticsProperty('homeworkMaterials', homeworkMaterials))..add(DiagnosticsProperty('deadlineExpired', deadlineExpired))..add(DiagnosticsProperty('checkExpired', checkExpired))..add(DiagnosticsProperty('retakeCheckExpired', retakeCheckExpired))..add(DiagnosticsProperty('lastLessonNumber', lastLessonNumber))..add(DiagnosticsProperty('checkDeadlineLessonNumber', checkDeadlineLessonNumber))..add(DiagnosticsProperty('checkedRetakenAt', checkedRetakenAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkStudentRelationGroup&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.score, score) || other.score == score)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.deadlineLessonNumber, deadlineLessonNumber) || other.deadlineLessonNumber == deadlineLessonNumber)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.materialDeleted, materialDeleted) || other.materialDeleted == materialDeleted)&&(identical(other.student, student) || other.student == student)&&(identical(other.homework, homework) || other.homework == homework)&&const DeepCollectionEquality().equals(other._homeworkMaterials, _homeworkMaterials)&&(identical(other.deadlineExpired, deadlineExpired) || other.deadlineExpired == deadlineExpired)&&(identical(other.checkExpired, checkExpired) || other.checkExpired == checkExpired)&&(identical(other.retakeCheckExpired, retakeCheckExpired) || other.retakeCheckExpired == retakeCheckExpired)&&(identical(other.lastLessonNumber, lastLessonNumber) || other.lastLessonNumber == lastLessonNumber)&&(identical(other.checkDeadlineLessonNumber, checkDeadlineLessonNumber) || other.checkDeadlineLessonNumber == checkDeadlineLessonNumber)&&(identical(other.checkedRetakenAt, checkedRetakenAt) || other.checkedRetakenAt == checkedRetakenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,score,checked,checkedAt,deadlineLessonNumber,studentId,materialDeleted,student,homework,const DeepCollectionEquality().hash(_homeworkMaterials),deadlineExpired,checkExpired,retakeCheckExpired,lastLessonNumber,checkDeadlineLessonNumber,checkedRetakenAt]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeworkStudentRelationGroup(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, score: $score, checked: $checked, checkedAt: $checkedAt, deadlineLessonNumber: $deadlineLessonNumber, studentId: $studentId, materialDeleted: $materialDeleted, student: $student, homework: $homework, homeworkMaterials: $homeworkMaterials, deadlineExpired: $deadlineExpired, checkExpired: $checkExpired, retakeCheckExpired: $retakeCheckExpired, lastLessonNumber: $lastLessonNumber, checkDeadlineLessonNumber: $checkDeadlineLessonNumber, checkedRetakenAt: $checkedRetakenAt)';
}


}

/// @nodoc
abstract mixin class _$HomeworkStudentRelationGroupCopyWith<$Res> implements $HomeworkStudentRelationGroupCopyWith<$Res> {
  factory _$HomeworkStudentRelationGroupCopyWith(_HomeworkStudentRelationGroup value, $Res Function(_HomeworkStudentRelationGroup) _then) = __$HomeworkStudentRelationGroupCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'score') int? score,@JsonKey(name: 'checked') bool? checked,@JsonKey(name: 'checked_at') String? checkedAt,@JsonKey(name: 'deadline_lesson_number') int? deadlineLessonNumber,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'material_deleted') bool? materialDeleted,@JsonKey(name: 'student') Student? student,@JsonKey(name: 'homework') Homework? homework,@JsonKey(name: 'homework_materials') List<HomeworkMaterials>? homeworkMaterials,@JsonKey(name: 'deadline_expired') bool? deadlineExpired,@JsonKey(name: 'check_expired') bool? checkExpired,@JsonKey(name: 'retake_check_expired') bool? retakeCheckExpired,@JsonKey(name: 'last_lesson_number') int? lastLessonNumber,@JsonKey(name: 'check_deadline_lesson_number') int? checkDeadlineLessonNumber,@JsonKey(name: 'checked_retaken_at') String? checkedRetakenAt
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;@override $StudentCopyWith<$Res>? get student;@override $HomeworkCopyWith<$Res>? get homework;

}
/// @nodoc
class __$HomeworkStudentRelationGroupCopyWithImpl<$Res>
    implements _$HomeworkStudentRelationGroupCopyWith<$Res> {
  __$HomeworkStudentRelationGroupCopyWithImpl(this._self, this._then);

  final _HomeworkStudentRelationGroup _self;
  final $Res Function(_HomeworkStudentRelationGroup) _then;

/// Create a copy of HomeworkStudentRelationGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? score = freezed,Object? checked = freezed,Object? checkedAt = freezed,Object? deadlineLessonNumber = freezed,Object? studentId = freezed,Object? materialDeleted = freezed,Object? student = freezed,Object? homework = freezed,Object? homeworkMaterials = freezed,Object? deadlineExpired = freezed,Object? checkExpired = freezed,Object? retakeCheckExpired = freezed,Object? lastLessonNumber = freezed,Object? checkDeadlineLessonNumber = freezed,Object? checkedRetakenAt = freezed,}) {
  return _then(_HomeworkStudentRelationGroup(
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
as bool?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,homework: freezed == homework ? _self.homework : homework // ignore: cast_nullable_to_non_nullable
as Homework?,homeworkMaterials: freezed == homeworkMaterials ? _self._homeworkMaterials : homeworkMaterials // ignore: cast_nullable_to_non_nullable
as List<HomeworkMaterials>?,deadlineExpired: freezed == deadlineExpired ? _self.deadlineExpired : deadlineExpired // ignore: cast_nullable_to_non_nullable
as bool?,checkExpired: freezed == checkExpired ? _self.checkExpired : checkExpired // ignore: cast_nullable_to_non_nullable
as bool?,retakeCheckExpired: freezed == retakeCheckExpired ? _self.retakeCheckExpired : retakeCheckExpired // ignore: cast_nullable_to_non_nullable
as bool?,lastLessonNumber: freezed == lastLessonNumber ? _self.lastLessonNumber : lastLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,checkDeadlineLessonNumber: freezed == checkDeadlineLessonNumber ? _self.checkDeadlineLessonNumber : checkDeadlineLessonNumber // ignore: cast_nullable_to_non_nullable
as int?,checkedRetakenAt: freezed == checkedRetakenAt ? _self.checkedRetakenAt : checkedRetakenAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeworkStudentRelationGroup
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
}/// Create a copy of HomeworkStudentRelationGroup
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
}/// Create a copy of HomeworkStudentRelationGroup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of HomeworkStudentRelationGroup
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
mixin _$Student implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'group_user_id') int? get groupUserId;@JsonKey(name: 'user') UserIdDefault? get user;@JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown) StudentStatus? get status;
/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentCopyWith<Student> get copyWith => _$StudentCopyWithImpl<Student>(this as Student, _$identity);

  /// Serializes this Student to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Student'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('groupUserId', groupUserId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Student&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.groupUserId, groupUserId) || other.groupUserId == groupUserId)&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,groupUserId,user,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Student(id: $id, userId: $userId, groupUserId: $groupUserId, user: $user, status: $status)';
}


}

/// @nodoc
abstract mixin class $StudentCopyWith<$Res>  {
  factory $StudentCopyWith(Student value, $Res Function(Student) _then) = _$StudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'group_user_id') int? groupUserId,@JsonKey(name: 'user') UserIdDefault? user,@JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown) StudentStatus? status
});


$UserIdDefaultCopyWith<$Res>? get user;

}
/// @nodoc
class _$StudentCopyWithImpl<$Res>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._self, this._then);

  final Student _self;
  final $Res Function(Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? groupUserId = freezed,Object? user = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,groupUserId: freezed == groupUserId ? _self.groupUserId : groupUserId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StudentStatus?,
  ));
}
/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Student].
extension StudentPatterns on Student {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Student value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Student() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Student value)  $default,){
final _that = this;
switch (_that) {
case _Student():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Student value)?  $default,){
final _that = this;
switch (_that) {
case _Student() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'group_user_id')  int? groupUserId, @JsonKey(name: 'user')  UserIdDefault? user, @JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown)  StudentStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.id,_that.userId,_that.groupUserId,_that.user,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'group_user_id')  int? groupUserId, @JsonKey(name: 'user')  UserIdDefault? user, @JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown)  StudentStatus? status)  $default,) {final _that = this;
switch (_that) {
case _Student():
return $default(_that.id,_that.userId,_that.groupUserId,_that.user,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'group_user_id')  int? groupUserId, @JsonKey(name: 'user')  UserIdDefault? user, @JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown)  StudentStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.id,_that.userId,_that.groupUserId,_that.user,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Student with DiagnosticableTreeMixin implements Student {
  const _Student({@JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'group_user_id') this.groupUserId, @JsonKey(name: 'user') this.user, @JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown) this.status});
  factory _Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'group_user_id') final  int? groupUserId;
@override@JsonKey(name: 'user') final  UserIdDefault? user;
@override@JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown) final  StudentStatus? status;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentCopyWith<_Student> get copyWith => __$StudentCopyWithImpl<_Student>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Student'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('groupUserId', groupUserId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Student&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.groupUserId, groupUserId) || other.groupUserId == groupUserId)&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,groupUserId,user,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Student(id: $id, userId: $userId, groupUserId: $groupUserId, user: $user, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) _then) = __$StudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'group_user_id') int? groupUserId,@JsonKey(name: 'user') UserIdDefault? user,@JsonKey(name: 'status', unknownEnumValue: StudentStatus.unknown) StudentStatus? status
});


@override $UserIdDefaultCopyWith<$Res>? get user;

}
/// @nodoc
class __$StudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(this._self, this._then);

  final _Student _self;
  final $Res Function(_Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? groupUserId = freezed,Object? user = freezed,Object? status = freezed,}) {
  return _then(_Student(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,groupUserId: freezed == groupUserId ? _self.groupUserId : groupUserId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StudentStatus?,
  ));
}

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserIdDefaultCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserIdDefaultCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$Homework implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'assigned_date') String? get assignedDate;
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
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('assignedDate', assignedDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Homework&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,name,assignedDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Homework(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, name: $name, assignedDate: $assignedDate)';
}


}

/// @nodoc
abstract mixin class $HomeworkCopyWith<$Res>  {
  factory $HomeworkCopyWith(Homework value, $Res Function(Homework) _then) = _$HomeworkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'assigned_date') String? assignedDate
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class _$HomeworkCopyWithImpl<$Res>
    implements $HomeworkCopyWith<$Res> {
  _$HomeworkCopyWithImpl(this._self, this._then);

  final Homework _self;
  final $Res Function(Homework) _then;

/// Create a copy of Homework
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? name = freezed,Object? assignedDate = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Homework
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
}/// Create a copy of Homework
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'assigned_date')  String? assignedDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Homework() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.name,_that.assignedDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'assigned_date')  String? assignedDate)  $default,) {final _that = this;
switch (_that) {
case _Homework():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.name,_that.assignedDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'assigned_date')  String? assignedDate)?  $default,) {final _that = this;
switch (_that) {
case _Homework() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.name,_that.assignedDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Homework with DiagnosticableTreeMixin implements Homework {
  const _Homework({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'assigned_date') this.assignedDate});
  factory _Homework.fromJson(Map<String, dynamic> json) => _$HomeworkFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'assigned_date') final  String? assignedDate;

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
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('assignedDate', assignedDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Homework&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,name,assignedDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Homework(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, name: $name, assignedDate: $assignedDate)';
}


}

/// @nodoc
abstract mixin class _$HomeworkCopyWith<$Res> implements $HomeworkCopyWith<$Res> {
  factory _$HomeworkCopyWith(_Homework value, $Res Function(_Homework) _then) = __$HomeworkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'assigned_date') String? assignedDate
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class __$HomeworkCopyWithImpl<$Res>
    implements _$HomeworkCopyWith<$Res> {
  __$HomeworkCopyWithImpl(this._self, this._then);

  final _Homework _self;
  final $Res Function(_Homework) _then;

/// Create a copy of Homework
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? name = freezed,Object? assignedDate = freezed,}) {
  return _then(_Homework(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Homework
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
}/// Create a copy of Homework
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
mixin _$HomeworkMaterials implements DiagnosticableTreeMixin {

@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') UserIdDefault? get createdBy;@JsonKey(name: 'updated_by') UserIdDefault? get updatedBy;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'file') String? get file;@JsonKey(name: 'link') String? get link;@JsonKey(name: 'description') String? get description;
/// Create a copy of HomeworkMaterials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeworkMaterialsCopyWith<HomeworkMaterials> get copyWith => _$HomeworkMaterialsCopyWithImpl<HomeworkMaterials>(this as HomeworkMaterials, _$identity);

  /// Serializes this HomeworkMaterials to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeworkMaterials'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('link', link))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkMaterials&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file)&&(identical(other.link, link) || other.link == link)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,file,link,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeworkMaterials(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, file: $file, link: $link, description: $description)';
}


}

/// @nodoc
abstract mixin class $HomeworkMaterialsCopyWith<$Res>  {
  factory $HomeworkMaterialsCopyWith(HomeworkMaterials value, $Res Function(HomeworkMaterials) _then) = _$HomeworkMaterialsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'file') String? file,@JsonKey(name: 'link') String? link,@JsonKey(name: 'description') String? description
});


$UserIdDefaultCopyWith<$Res>? get createdBy;$UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class _$HomeworkMaterialsCopyWithImpl<$Res>
    implements $HomeworkMaterialsCopyWith<$Res> {
  _$HomeworkMaterialsCopyWithImpl(this._self, this._then);

  final HomeworkMaterials _self;
  final $Res Function(HomeworkMaterials) _then;

/// Create a copy of HomeworkMaterials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? file = freezed,Object? link = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeworkMaterials
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
}/// Create a copy of HomeworkMaterials
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


/// Adds pattern-matching-related methods to [HomeworkMaterials].
extension HomeworkMaterialsPatterns on HomeworkMaterials {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeworkMaterials value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeworkMaterials() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeworkMaterials value)  $default,){
final _that = this;
switch (_that) {
case _HomeworkMaterials():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeworkMaterials value)?  $default,){
final _that = this;
switch (_that) {
case _HomeworkMaterials() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'file')  String? file, @JsonKey(name: 'link')  String? link, @JsonKey(name: 'description')  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeworkMaterials() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.file,_that.link,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'file')  String? file, @JsonKey(name: 'link')  String? link, @JsonKey(name: 'description')  String? description)  $default,) {final _that = this;
switch (_that) {
case _HomeworkMaterials():
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.file,_that.link,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  UserIdDefault? createdBy, @JsonKey(name: 'updated_by')  UserIdDefault? updatedBy, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'file')  String? file, @JsonKey(name: 'link')  String? link, @JsonKey(name: 'description')  String? description)?  $default,) {final _that = this;
switch (_that) {
case _HomeworkMaterials() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.createdBy,_that.updatedBy,_that.id,_that.file,_that.link,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeworkMaterials with DiagnosticableTreeMixin implements HomeworkMaterials {
  const _HomeworkMaterials({@JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'updated_by') this.updatedBy, @JsonKey(name: 'id') this.id, @JsonKey(name: 'file') this.file, @JsonKey(name: 'link') this.link, @JsonKey(name: 'description') this.description});
  factory _HomeworkMaterials.fromJson(Map<String, dynamic> json) => _$HomeworkMaterialsFromJson(json);

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  UserIdDefault? createdBy;
@override@JsonKey(name: 'updated_by') final  UserIdDefault? updatedBy;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'file') final  String? file;
@override@JsonKey(name: 'link') final  String? link;
@override@JsonKey(name: 'description') final  String? description;

/// Create a copy of HomeworkMaterials
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkMaterialsCopyWith<_HomeworkMaterials> get copyWith => __$HomeworkMaterialsCopyWithImpl<_HomeworkMaterials>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeworkMaterialsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeworkMaterials'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('createdBy', createdBy))..add(DiagnosticsProperty('updatedBy', updatedBy))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('link', link))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkMaterials&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file)&&(identical(other.link, link) || other.link == link)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,createdBy,updatedBy,id,file,link,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeworkMaterials(createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, id: $id, file: $file, link: $link, description: $description)';
}


}

/// @nodoc
abstract mixin class _$HomeworkMaterialsCopyWith<$Res> implements $HomeworkMaterialsCopyWith<$Res> {
  factory _$HomeworkMaterialsCopyWith(_HomeworkMaterials value, $Res Function(_HomeworkMaterials) _then) = __$HomeworkMaterialsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') UserIdDefault? createdBy,@JsonKey(name: 'updated_by') UserIdDefault? updatedBy,@JsonKey(name: 'id') int? id,@JsonKey(name: 'file') String? file,@JsonKey(name: 'link') String? link,@JsonKey(name: 'description') String? description
});


@override $UserIdDefaultCopyWith<$Res>? get createdBy;@override $UserIdDefaultCopyWith<$Res>? get updatedBy;

}
/// @nodoc
class __$HomeworkMaterialsCopyWithImpl<$Res>
    implements _$HomeworkMaterialsCopyWith<$Res> {
  __$HomeworkMaterialsCopyWithImpl(this._self, this._then);

  final _HomeworkMaterials _self;
  final $Res Function(_HomeworkMaterials) _then;

/// Create a copy of HomeworkMaterials
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? id = freezed,Object? file = freezed,Object? link = freezed,Object? description = freezed,}) {
  return _then(_HomeworkMaterials(
createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as UserIdDefault?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeworkMaterials
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
}/// Create a copy of HomeworkMaterials
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

// dart format on
