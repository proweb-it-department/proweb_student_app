import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'my_statistic.freezed.dart';
part 'my_statistic.g.dart';

@freezed
abstract class MyStatistic with _$MyStatistic {
  const factory MyStatistic({
    @JsonKey(name: 'lesson_visited_count') int? lessonVisitedCount,
    @JsonKey(name: 'lesson_not_visited_count') int? lessonNotVisitedCount,
    @JsonKey(name: 'lesson_watched_count') int? lessonWatchedCount,
    @JsonKey(name: 'lesson_not_watched_count') int? lessonNotWatchedCount,
    @JsonKey(name: 'coworking_reserved_count') int? coworkingReservedCount,
    @JsonKey(name: 'coworking_visited_count') int? coworkingVisitedCount,
    @JsonKey(name: 'coworking_visited_without_reserve_count')
    int? coworkingVisitedWithoutReserveCount,
    @JsonKey(name: 'homework_solved_count') int? homeworkSolvedCount,
    @JsonKey(name: 'homework_not_solved_count') int? homeworkNotSolvedCount,
    @JsonKey(name: 'student_middle_rating') String? studentMiddleRating,
  }) = _MyStatistic;

  factory MyStatistic.fromJson(Map<String, Object?> json) =>
      _$MyStatisticFromJson(json);
}
