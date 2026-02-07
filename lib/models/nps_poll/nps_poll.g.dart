// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nps_poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NpsPoll _$NpsPollFromJson(Map<String, dynamic> json) => _NpsPoll(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  poll: json['poll'] == null
      ? null
      : Poll.fromJson(json['poll'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  studentLessonRelationId: (json['student_lesson_relation_id'] as num?)
      ?.toInt(),
  completed: json['completed'] as bool?,
  answersDate: json['answers_date'] as String?,
);

Map<String, dynamic> _$NpsPollToJson(_NpsPoll instance) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by_id': instance.createdById,
  'updated_by_id': instance.updatedById,
  'poll': instance.poll,
  'id': instance.id,
  'student_lesson_relation_id': instance.studentLessonRelationId,
  'completed': instance.completed,
  'answers_date': instance.answersDate,
};

_Poll _$PollFromJson(Map<String, dynamic> json) => _Poll(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  shortDescription: json['short_description'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$PollToJson(_Poll instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'short_description': instance.shortDescription,
  'status': instance.status,
};
