// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PollAnswer _$PollAnswerFromJson(Map<String, dynamic> json) => _PollAnswer(
  studentPollId: (json['student_poll_id'] as num).toInt(),
  answers: (json['answers'] as List<dynamic>)
      .map((e) => QuestionAnswers.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PollAnswerToJson(_PollAnswer instance) =>
    <String, dynamic>{
      'student_poll_id': instance.studentPollId,
      'answers': instance.answers,
    };

_QuestionAnswers _$QuestionAnswersFromJson(Map<String, dynamic> json) =>
    _QuestionAnswers(
      pollQuestionId: (json['poll_question_id'] as num).toInt(),
      answerRange: (json['answer_range'] as num?)?.toInt(),
      answerText: json['answer_text'] as String?,
    );

Map<String, dynamic> _$QuestionAnswersToJson(_QuestionAnswers instance) =>
    <String, dynamic>{
      'poll_question_id': instance.pollQuestionId,
      'answer_range': ?instance.answerRange,
      'answer_text': ?instance.answerText,
    };
