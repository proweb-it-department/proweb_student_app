import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'group_lesson_info.freezed.dart';
part 'group_lesson_info.g.dart';

@freezed
abstract class GroupLessonInfo with _$GroupLessonInfo {
  const factory GroupLessonInfo({
    @JsonKey(name: 'group_lesson') GroupLesson? groupLesson,
    @JsonKey(name: 'access_to_lesson') bool? accessToLesson,
    @JsonKey(name: 'access_to_video') bool? accessToVideo,
    @JsonKey(name: 'visited') bool? visited,
    @JsonKey(name: 'visited_type') String? visitedType,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'relation_id') int? relationId,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'status_video') StatusVideoLoad? statusVideo,
  }) = _GroupLessonInfo;

  factory GroupLessonInfo.fromJson(Map<String, Object?> json) =>
      _$GroupLessonInfoFromJson(json);
}

@freezed
abstract class GroupLesson with _$GroupLesson {
  const factory GroupLesson({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'datetime') String? datetime,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'rescheduled_reason') String? rescheduledReason,
    @JsonKey(name: 'lesson_number') int? lessonNumber,
    @JsonKey(name: 'handbook') Handbook? handbook,
    @JsonKey(name: 'middle_rating') String? middleRating,
    @JsonKey(name: 'videos') List<Videos>? videos,
  }) = _GroupLesson;

  factory GroupLesson.fromJson(Map<String, Object?> json) =>
      _$GroupLessonFromJson(json);
}

@freezed
abstract class Videos with _$Videos {
  const factory Videos({
    @JsonKey(name: 'video_key') String? videoKey,
    @JsonKey(name: 'video') VideoModel? video,
  }) = _Videos;

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
