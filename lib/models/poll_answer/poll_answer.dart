import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'poll_answer.freezed.dart';
part 'poll_answer.g.dart';

@freezed
abstract class PollAnswer with _$PollAnswer {
  @JsonSerializable(includeIfNull: false)
  const factory PollAnswer({
    @JsonKey(name: 'student_poll_id') required int studentPollId,
    @JsonKey(name: 'answers') required List<QuestionAnswers> answers,
  }) = _PollAnswer;

  factory PollAnswer.fromJson(Map<String, Object?> json) =>
      _$PollAnswerFromJson(json);
}

@freezed
abstract class QuestionAnswers with _$QuestionAnswers {
  @JsonSerializable(includeIfNull: false)
  const factory QuestionAnswers({
    @JsonKey(name: 'poll_question_id') required int pollQuestionId,
    @JsonKey(name: 'answer_range') int? answerRange,
    @JsonKey(name: 'answer_text') String? answerText,
  }) = _QuestionAnswers;

  factory QuestionAnswers.fromJson(Map<String, Object?> json) =>
      _$QuestionAnswersFromJson(json);
}
