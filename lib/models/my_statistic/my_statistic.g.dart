// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_statistic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyStatistic _$MyStatisticFromJson(Map<String, dynamic> json) => _MyStatistic(
  lessonVisitedCount: (json['lesson_visited_count'] as num?)?.toInt(),
  lessonNotVisitedCount: (json['lesson_not_visited_count'] as num?)?.toInt(),
  lessonWatchedCount: (json['lesson_watched_count'] as num?)?.toInt(),
  lessonNotWatchedCount: (json['lesson_not_watched_count'] as num?)?.toInt(),
  coworkingReservedCount: (json['coworking_reserved_count'] as num?)?.toInt(),
  coworkingVisitedCount: (json['coworking_visited_count'] as num?)?.toInt(),
  coworkingVisitedWithoutReserveCount:
      (json['coworking_visited_without_reserve_count'] as num?)?.toInt(),
  homeworkSolvedCount: (json['homework_solved_count'] as num?)?.toInt(),
  homeworkNotSolvedCount: (json['homework_not_solved_count'] as num?)?.toInt(),
  studentMiddleRating: json['student_middle_rating'] as String?,
);

Map<String, dynamic> _$MyStatisticToJson(_MyStatistic instance) =>
    <String, dynamic>{
      'lesson_visited_count': instance.lessonVisitedCount,
      'lesson_not_visited_count': instance.lessonNotVisitedCount,
      'lesson_watched_count': instance.lessonWatchedCount,
      'lesson_not_watched_count': instance.lessonNotWatchedCount,
      'coworking_reserved_count': instance.coworkingReservedCount,
      'coworking_visited_count': instance.coworkingVisitedCount,
      'coworking_visited_without_reserve_count':
          instance.coworkingVisitedWithoutReserveCount,
      'homework_solved_count': instance.homeworkSolvedCount,
      'homework_not_solved_count': instance.homeworkNotSolvedCount,
      'student_middle_rating': instance.studentMiddleRating,
    };
