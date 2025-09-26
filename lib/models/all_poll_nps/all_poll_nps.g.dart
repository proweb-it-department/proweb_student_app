// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_poll_nps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllPollNps _$AllPollNpsFromJson(Map<String, dynamic> json) => _AllPollNps(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  poll: json['poll'] == null
      ? null
      : InfoPoll.fromJson(json['poll'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  studentLessonRelationId: (json['student_lesson_relation_id'] as num?)
      ?.toInt(),
  completed: json['completed'] as bool?,
  answersDate: json['answers_date'] as String?,
);

Map<String, dynamic> _$AllPollNpsToJson(_AllPollNps instance) =>
    <String, dynamic>{
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

_InfoPoll _$InfoPollFromJson(Map<String, dynamic> json) => _InfoPoll(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  shortDescription: json['short_description'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$InfoPollToJson(_InfoPoll instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'short_description': instance.shortDescription,
  'status': instance.status,
};
