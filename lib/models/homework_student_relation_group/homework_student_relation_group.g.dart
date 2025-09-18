// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework_student_relation_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeworkStudentRelationGroup _$HomeworkStudentRelationGroupFromJson(
  Map<String, dynamic> json,
) => _HomeworkStudentRelationGroup(
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
  student: json['student'] == null
      ? null
      : Student.fromJson(json['student'] as Map<String, dynamic>),
  homework: json['homework'] == null
      ? null
      : Homework.fromJson(json['homework'] as Map<String, dynamic>),
  homeworkMaterials: (json['homework_materials'] as List<dynamic>?)
      ?.map((e) => HomeworkMaterials.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeworkStudentRelationGroupToJson(
  _HomeworkStudentRelationGroup instance,
) => <String, dynamic>{
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
  'student': instance.student,
  'homework': instance.homework,
  'homework_materials': instance.homeworkMaterials,
};

_Student _$StudentFromJson(Map<String, dynamic> json) => _Student(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  groupUserId: (json['group_user_id'] as num?)?.toInt(),
  user: json['user'] == null
      ? null
      : UserIdDefault.fromJson(json['user'] as Map<String, dynamic>),
  status: $enumDecodeNullable(_$StudentStatusEnumMap, json['status']),
);

Map<String, dynamic> _$StudentToJson(_Student instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'group_user_id': instance.groupUserId,
  'user': instance.user,
  'status': _$StudentStatusEnumMap[instance.status],
};

const _$StudentStatusEnumMap = {
  StudentStatus.notConfirmed: 'not_confirmed',
  StudentStatus.autoActivate: 'auto_activate',
  StudentStatus.active: 'active',
  StudentStatus.archived: 'archived',
  StudentStatus.leave: 'leave',
  StudentStatus.graduate: 'graduate',
  StudentStatus.reservation: 'reservation',
  StudentStatus.notConfirmedReservation: 'not_confirmed_reservation',
  StudentStatus.leaveReservation: 'leave_reservation',
  StudentStatus.unstartedLeave: 'unstarted_leave',
  StudentStatus.transfer: 'transfer',
  StudentStatus.partiallyCompleted: 'partially_completed',
};

_Homework _$HomeworkFromJson(Map<String, dynamic> json) => _Homework(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  assignedDate: json['assigned_date'] as String?,
);

Map<String, dynamic> _$HomeworkToJson(_Homework instance) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'id': instance.id,
  'name': instance.name,
  'assigned_date': instance.assignedDate,
};

_HomeworkMaterials _$HomeworkMaterialsFromJson(Map<String, dynamic> json) =>
    _HomeworkMaterials(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      file: json['file'] as String?,
      link: json['link'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$HomeworkMaterialsToJson(_HomeworkMaterials instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'file': instance.file,
      'link': instance.link,
      'description': instance.description,
    };
