import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'all_poll_nps.freezed.dart';
part 'all_poll_nps.g.dart';

@freezed
abstract class AllPollNps with _$AllPollNps {
  const factory AllPollNps({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by_id') int? createdById,
    @JsonKey(name: 'updated_by_id') int? updatedById,
    @JsonKey(name: 'poll') InfoPoll? poll,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'student_lesson_relation_id') int? studentLessonRelationId,
    @JsonKey(name: 'completed') bool? completed,
    @JsonKey(name: 'answers_date') String? answersDate,
  }) = _AllPollNps;

  factory AllPollNps.fromJson(Map<String, Object?> json) =>
      _$AllPollNpsFromJson(json);
}

@freezed
abstract class InfoPoll with _$InfoPoll {
  const factory InfoPoll({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'short_description') String? shortDescription,
    @JsonKey(name: 'status') String? status,
  }) = _InfoPoll;

  factory InfoPoll.fromJson(Map<String, Object?> json) =>
      _$InfoPollFromJson(json);
}
