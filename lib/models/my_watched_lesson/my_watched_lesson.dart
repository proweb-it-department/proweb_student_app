import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
part 'my_watched_lesson.freezed.dart';
part 'my_watched_lesson.g.dart';

@freezed
abstract class MyWatchedLesson with _$MyWatchedLesson {
  const factory MyWatchedLesson({
    @JsonKey(name: 'group_lesson') MyWatchedLessonGroupLesson? groupLesson,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'access_to_lesson') bool? accessToLesson,
    @JsonKey(name: 'visited') bool? visited,
    @JsonKey(name: 'visited_type') String? visitedType,
    @JsonKey(name: 'write_off_format') String? writeOffFormat,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'access_to_video') bool? accessToVideo,
    @JsonKey(name: 'is_watched') bool? isWatched,
  }) = _MyWatchedLesson;

  factory MyWatchedLesson.fromJson(Map<String, Object?> json) =>
      _$MyWatchedLessonFromJson(json);
}

@freezed
abstract class MyWatchedLessonGroupLesson with _$MyWatchedLessonGroupLesson {
  const factory MyWatchedLessonGroupLesson({
    @JsonKey(name: 'videos') List<MyWatchedLessonVideos>? videos,
    @JsonKey(name: 'group') MyWatchedLessonGroup? group,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'rescheduled_reason') String? rescheduledReason,
    @JsonKey(name: 'lesson_number') int? lessonNumber,
    @JsonKey(name: 'middle_rating') String? middleRating,
    @JsonKey(name: 'united_id') int? unitedId,
  }) = _MyWatchedLessonGroupLesson;

  factory MyWatchedLessonGroupLesson.fromJson(Map<String, Object?> json) =>
      _$MyWatchedLessonGroupLessonFromJson(json);
}

@freezed
abstract class MyWatchedLessonVideos with _$MyWatchedLessonVideos {
  const factory MyWatchedLessonVideos({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'lesson_id') int? lessonId,
    @JsonKey(name: 'video_key') String? videoKey,
    @JsonKey(name: 'video') VideoModel? video,
  }) = _MyWatchedLessonVideos;

  factory MyWatchedLessonVideos.fromJson(Map<String, Object?> json) =>
      _$MyWatchedLessonVideosFromJson(json);
}

@freezed
abstract class MyWatchedLessonGroup with _$MyWatchedLessonGroup {
  const factory MyWatchedLessonGroup({
    @JsonKey(name: 'course') MyWatchedLessonCourse? course,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'graduated_date') String? graduatedDate,
    @JsonKey(name: 'disbanded_date') String? disbandedDate,
    @JsonKey(name: 'has_double_lesson') bool? hasDoubleLesson,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'study_time') String? studyTime,
    @JsonKey(name: 'days') List<int>? days,
    @JsonKey(name: 'start_lesson_number') int? startLessonNumber,
    @JsonKey(name: 'video_deleted') bool? videoDeleted,
    @JsonKey(name: 'course_id') int? courseId,
    @JsonKey(name: 'launch_id') int? launchId,
    @JsonKey(name: 'cabinet_id') int? cabinetId,
  }) = _MyWatchedLessonGroup;

  factory MyWatchedLessonGroup.fromJson(Map<String, Object?> json) =>
      _$MyWatchedLessonGroupFromJson(json);
}

@freezed
abstract class MyWatchedLessonCourse with _$MyWatchedLessonCourse {
  const factory MyWatchedLessonCourse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'ads_banner') String? adsBanner,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'language') String? language,
  }) = _MyWatchedLessonCourse;

  factory MyWatchedLessonCourse.fromJson(Map<String, Object?> json) =>
      _$MyWatchedLessonCourseFromJson(json);
}
