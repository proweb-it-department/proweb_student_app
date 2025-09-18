import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
part 'test_student_relation.freezed.dart';
part 'test_student_relation.g.dart';

@freezed
abstract class TestStudentRelation with _$TestStudentRelation {
  const factory TestStudentRelation({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'total_score') String? totalScore,
    @JsonKey(name: 'json_answer') List<JsonAnswer>? jsonAnswer,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'total_testing_score') int? totalTestingScore,
    @JsonKey(name: 'testing') Testing? testing,
    @JsonKey(name: 'student') Student? student,
  }) = _TestStudentRelation;

  factory TestStudentRelation.fromJson(Map<String, Object?> json) =>
      _$TestStudentRelationFromJson(json);
}

@freezed
abstract class Testing with _$Testing {
  const factory Testing({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'assigned_date') String? assignedDate,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'question') List<Question>? question,
  }) = _Testing;

  factory Testing.fromJson(Map<String, Object?> json) =>
      _$TestingFromJson(json);
}

@freezed
abstract class Question with _$Question {
  const factory Question({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'video') String? video,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'multiselect') bool? multiselect,
    @JsonKey(name: 'answer') List<Answer>? answer,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}

@freezed
abstract class Answer with _$Answer {
  const factory Answer({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'video') String? video,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'correct') bool? correct,
  }) = _Answer;

  factory Answer.fromJson(Map<String, Object?> json) => _$AnswerFromJson(json);
}

@freezed
abstract class JsonAnswer with _$JsonAnswer {
  const factory JsonAnswer({
    @JsonKey(name: 'answers') List<Answers>? answers,
    @JsonKey(name: 'question_id') int? questionId,
  }) = _JsonAnswer;

  factory JsonAnswer.fromJson(Map<String, Object?> json) =>
      _$JsonAnswerFromJson(json);
}

@freezed
abstract class Answers with _$Answers {
  const factory Answers({@JsonKey(name: 'answer_id') int? answerId}) = _Answers;

  factory Answers.fromJson(Map<String, Object?> json) =>
      _$AnswersFromJson(json);
}
