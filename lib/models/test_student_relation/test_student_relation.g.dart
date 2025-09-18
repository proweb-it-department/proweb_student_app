// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_student_relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestStudentRelation _$TestStudentRelationFromJson(Map<String, dynamic> json) =>
    _TestStudentRelation(
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
      totalTestingScore: (json['total_testing_score'] as num?)?.toInt(),
      testing: json['testing'] == null
          ? null
          : Testing.fromJson(json['testing'] as Map<String, dynamic>),
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestStudentRelationToJson(
  _TestStudentRelation instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'id': instance.id,
  'total_score': instance.totalScore,
  'json_answer': instance.jsonAnswer,
  'student_id': instance.studentId,
  'total_testing_score': instance.totalTestingScore,
  'testing': instance.testing,
  'student': instance.student,
};

_Testing _$TestingFromJson(Map<String, dynamic> json) => _Testing(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  assignedDate: json['assigned_date'] as String?,
  description: json['description'] as String?,
  question: (json['question'] as List<dynamic>?)
      ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TestingToJson(_Testing instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'assigned_date': instance.assignedDate,
  'description': instance.description,
  'question': instance.question,
};

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  id: (json['id'] as num?)?.toInt(),
  text: json['text'] as String?,
  video: json['video'] as String?,
  image: json['image'] as String?,
  score: (json['score'] as num?)?.toInt(),
  multiselect: json['multiselect'] as bool?,
  answer: (json['answer'] as List<dynamic>?)
      ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
  'id': instance.id,
  'text': instance.text,
  'video': instance.video,
  'image': instance.image,
  'score': instance.score,
  'multiselect': instance.multiselect,
  'answer': instance.answer,
};

_Answer _$AnswerFromJson(Map<String, dynamic> json) => _Answer(
  id: (json['id'] as num?)?.toInt(),
  text: json['text'] as String?,
  video: json['video'] as String?,
  image: json['image'] as String?,
  correct: json['correct'] as bool?,
);

Map<String, dynamic> _$AnswerToJson(_Answer instance) => <String, dynamic>{
  'id': instance.id,
  'text': instance.text,
  'video': instance.video,
  'image': instance.image,
  'correct': instance.correct,
};

_JsonAnswer _$JsonAnswerFromJson(Map<String, dynamic> json) => _JsonAnswer(
  answers: (json['answers'] as List<dynamic>?)
      ?.map((e) => Answers.fromJson(e as Map<String, dynamic>))
      .toList(),
  questionId: (json['question_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$JsonAnswerToJson(_JsonAnswer instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'question_id': instance.questionId,
    };

_Answers _$AnswersFromJson(Map<String, dynamic> json) =>
    _Answers(answerId: (json['answer_id'] as num?)?.toInt());

Map<String, dynamic> _$AnswersToJson(_Answers instance) => <String, dynamic>{
  'answer_id': instance.answerId,
};
