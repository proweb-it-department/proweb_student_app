import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
part 'scheduled_lesson_models.freezed.dart';
part 'scheduled_lesson_models.g.dart';

@freezed
abstract class ScheduledLessonModels with _$ScheduledLessonModels {
  const factory ScheduledLessonModels({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'datetime') String? datetime,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'rescheduled_reason') String? rescheduledReason,
    @JsonKey(name: 'lesson_number') int? lessonNumber,
    @JsonKey(name: 'middle_rating') String? middleRating,
    @JsonKey(name: 'videos') List<Videos>? videos,
    @JsonKey(name: 'handbook') Handbook? handbook,
    MyGroupsItem? myGroup,
  }) = _ScheduledLessonModels;

  factory ScheduledLessonModels.fromJson(Map<String, Object?> json) =>
      _$ScheduledLessonModelsFromJson(json);
}

@freezed
abstract class Videos with _$Videos {
  const factory Videos({@JsonKey(name: 'video_key') String? videoKey}) =
      _Videos;

  factory Videos.fromJson(Map<String, Object?> json) => _$VideosFromJson(json);
}

@freezed
abstract class Handbook with _$Handbook {
  const factory Handbook({
    @JsonKey(name: 'handbook_links') List<HandbookLinks>? handbookLinks,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'lesson_number') String? lessonNumber,
  }) = _Handbook;

  factory Handbook.fromJson(Map<String, Object?> json) =>
      _$HandbookFromJson(json);
}

@freezed
abstract class HandbookLinks with _$HandbookLinks {
  const factory HandbookLinks({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'link') String? link,
  }) = _HandbookLinks;

  factory HandbookLinks.fromJson(Map<String, Object?> json) =>
      _$HandbookLinksFromJson(json);
}
