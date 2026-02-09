import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'poll_detail.freezed.dart';
part 'poll_detail.g.dart';

@freezed
abstract class PollDetail with _$PollDetail {
  const factory PollDetail({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'questions') List<Questions>? questions,
    @JsonKey(name: 'schedules_count') int? schedulesCount,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'short_description') String? shortDescription,
    @JsonKey(name: 'status') NpsPollStatus? status,
  }) = _PollDetail;

  factory PollDetail.fromJson(Map<String, Object?> json) =>
      _$PollDetailFromJson(json);
}

@freezed
abstract class Questions with _$Questions {
  const factory Questions({
    @JsonKey(name: 'answers') List<Answers>? answers,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'type') NpsPollQuestionsType? type,
    @JsonKey(name: 'position') int? position,
  }) = _Questions;

  factory Questions.fromJson(Map<String, Object?> json) =>
      _$QuestionsFromJson(json);
}

@freezed
abstract class Answers with _$Answers {
  const factory Answers({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'start') int? start,
    @JsonKey(name: 'end') int? end,
    @JsonKey(name: 'text') String? text,
  }) = _Answers;

  factory Answers.fromJson(Map<String, Object?> json) =>
      _$AnswersFromJson(json);
}
