// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_list_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestListGroup _$TestListGroupFromJson(Map<String, dynamic> json) =>
    _TestListGroup(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      totalScore: json['total_score'] as String?,
      jsonAnswer: (json['json_answer'] as List<dynamic>?)
          ?.map((e) => JsonAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      studentId: (json['student_id'] as num?)?.toInt(),
      groupId: (json['group_id'] as num?)?.toInt(),
      testing: json['testing'] == null
          ? null
          : Testing.fromJson(json['testing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestListGroupToJson(_TestListGroup instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'total_score': instance.totalScore,
      'json_answer': instance.jsonAnswer,
      'student_id': instance.studentId,
      'group_id': instance.groupId,
      'testing': instance.testing,
    };

_Testing _$TestingFromJson(Map<String, dynamic> json) =>
    _Testing(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$TestingToJson(_Testing instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
