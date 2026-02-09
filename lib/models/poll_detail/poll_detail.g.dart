// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PollDetail _$PollDetailFromJson(Map<String, dynamic> json) => _PollDetail(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdById: (json['created_by_id'] as num?)?.toInt(),
  updatedById: (json['updated_by_id'] as num?)?.toInt(),
  questions: (json['questions'] as List<dynamic>?)
      ?.map((e) => Questions.fromJson(e as Map<String, dynamic>))
      .toList(),
  schedulesCount: (json['schedules_count'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  shortDescription: json['short_description'] as String?,
  status: $enumDecodeNullable(_$NpsPollStatusEnumMap, json['status']),
);

Map<String, dynamic> _$PollDetailToJson(_PollDetail instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by_id': instance.createdById,
      'updated_by_id': instance.updatedById,
      'questions': instance.questions,
      'schedules_count': instance.schedulesCount,
      'id': instance.id,
      'name': instance.name,
      'short_description': instance.shortDescription,
      'status': _$NpsPollStatusEnumMap[instance.status],
    };

const _$NpsPollStatusEnumMap = {
  NpsPollStatus.draft: 'draft',
  NpsPollStatus.active: 'active',
  NpsPollStatus.archive: 'archive',
};

_Questions _$QuestionsFromJson(Map<String, dynamic> json) => _Questions(
  answers: (json['answers'] as List<dynamic>?)
      ?.map((e) => Answers.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: (json['id'] as num?)?.toInt(),
  text: json['text'] as String?,
  type: $enumDecodeNullable(_$NpsPollQuestionsTypeEnumMap, json['type']),
  position: (json['position'] as num?)?.toInt(),
);

Map<String, dynamic> _$QuestionsToJson(_Questions instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'id': instance.id,
      'text': instance.text,
      'type': _$NpsPollQuestionsTypeEnumMap[instance.type],
      'position': instance.position,
    };

const _$NpsPollQuestionsTypeEnumMap = {
  NpsPollQuestionsType.range: 'range',
  NpsPollQuestionsType.text: 'text',
};

_Answers _$AnswersFromJson(Map<String, dynamic> json) => _Answers(
  id: (json['id'] as num?)?.toInt(),
  start: (json['start'] as num?)?.toInt(),
  end: (json['end'] as num?)?.toInt(),
  text: json['text'] as String?,
);

Map<String, dynamic> _$AnswersToJson(_Answers instance) => <String, dynamic>{
  'id': instance.id,
  'start': instance.start,
  'end': instance.end,
  'text': instance.text,
};
