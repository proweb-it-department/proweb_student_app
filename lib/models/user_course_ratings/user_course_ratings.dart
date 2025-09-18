import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/user_total_position/user_total_position.dart';
part 'user_course_ratings.freezed.dart';
part 'user_course_ratings.g.dart';

@freezed
abstract class UserCourseRatings with _$UserCourseRatings {
  const factory UserCourseRatings({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'level_id') int? levelId,
    @JsonKey(name: 'course_id') int? courseId,
    @JsonKey(name: 'level') Level? level,
    @JsonKey(name: 'course') Course? course,
    @JsonKey(name: 'total_score') UserTotalPosition? totalScore,
  }) = _UserCourseRatings;

  factory UserCourseRatings.fromJson(Map<String, Object?> json) =>
      _$UserCourseRatingsFromJson(json);
}

@freezed
abstract class Level with _$Level {
  const factory Level({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'course_id') int? courseId,
    @JsonKey(name: 'logo') String? logo,
    @JsonKey(name: 'min_score') int? minScore,
  }) = _Level;

  factory Level.fromJson(Map<String, Object?> json) => _$LevelFromJson(json);
}

@freezed
abstract class Course with _$Course {
  const factory Course({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'ads_banner') String? adsBanner,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'language') String? language,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}
