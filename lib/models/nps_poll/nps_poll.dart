import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'nps_poll.freezed.dart';
part 'nps_poll.g.dart';

@freezed
abstract class NpsPoll with _$NpsPoll {
  const factory NpsPoll({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'poll') Poll? poll,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'student_lesson_relation_id') int? studentLessonRelationId,
    @JsonKey(name: 'completed') bool? completed,
    @JsonKey(name: 'answers_date') String? answersDate,
  }) = _NpsPoll;

  factory NpsPoll.fromJson(Map<String, Object?> json) =>
      _$NpsPollFromJson(json);
}

@freezed
abstract class Poll with _$Poll {
  const factory Poll({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'short_description') String? shortDescription,
    @JsonKey(name: 'status') String? status,
  }) = _Poll;

  factory Poll.fromJson(Map<String, Object?> json) => _$PollFromJson(json);
}
