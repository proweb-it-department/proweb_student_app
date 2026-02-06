// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework_list_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeworkListGroup _$HomeworkListGroupFromJson(Map<String, dynamic> json) =>
    _HomeworkListGroup(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
      checked: json['checked'] as bool?,
      checkedAt: json['checked_at'] as String?,
      deadlineLessonNumber: (json['deadline_lesson_number'] as num?)?.toInt(),
      studentId: (json['student_id'] as num?)?.toInt(),
      materialDeleted: json['material_deleted'] as bool?,
      groupId: (json['group_id'] as num?)?.toInt(),
      homework: json['homework'] == null
          ? null
          : Homework.fromJson(json['homework'] as Map<String, dynamic>),
      hasMaterial: json['has_material'] as bool?,
      myGroup: json['myGroup'] == null
          ? null
          : MyGroupsItem.fromJson(json['myGroup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeworkListGroupToJson(_HomeworkListGroup instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'score': instance.score,
      'checked': instance.checked,
      'checked_at': instance.checkedAt,
      'deadline_lesson_number': instance.deadlineLessonNumber,
      'student_id': instance.studentId,
      'material_deleted': instance.materialDeleted,
      'group_id': instance.groupId,
      'homework': instance.homework,
      'has_material': instance.hasMaterial,
      'myGroup': instance.myGroup,
    };

_Homework _$HomeworkFromJson(Map<String, dynamic> json) =>
    _Homework(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$HomeworkToJson(_Homework instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
