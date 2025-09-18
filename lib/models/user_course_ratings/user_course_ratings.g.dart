// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_course_ratings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserCourseRatings _$UserCourseRatingsFromJson(Map<String, dynamic> json) =>
    _UserCourseRatings(
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
      levelId: (json['level_id'] as num?)?.toInt(),
      courseId: (json['course_id'] as num?)?.toInt(),
      level: json['level'] == null
          ? null
          : Level.fromJson(json['level'] as Map<String, dynamic>),
      course: json['course'] == null
          ? null
          : Course.fromJson(json['course'] as Map<String, dynamic>),
      totalScore: json['total_score'] == null
          ? null
          : UserTotalPosition.fromJson(
              json['total_score'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$UserCourseRatingsToJson(_UserCourseRatings instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'id': instance.id,
      'user_id': instance.userId,
      'score': instance.score,
      'level_id': instance.levelId,
      'course_id': instance.courseId,
      'level': instance.level,
      'course': instance.course,
      'total_score': instance.totalScore,
    };

_Level _$LevelFromJson(Map<String, dynamic> json) => _Level(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  courseId: (json['course_id'] as num?)?.toInt(),
  logo: json['logo'] as String?,
  minScore: (json['min_score'] as num?)?.toInt(),
);

Map<String, dynamic> _$LevelToJson(_Level instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'course_id': instance.courseId,
  'logo': instance.logo,
  'min_score': instance.minScore,
};

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  banner: json['banner'] as String?,
  adsBanner: json['ads_banner'] as String?,
  color: json['color'] as String?,
  slug: json['slug'] as String?,
  language: json['language'] as String?,
);

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'banner': instance.banner,
  'ads_banner': instance.adsBanner,
  'color': instance.color,
  'slug': instance.slug,
  'language': instance.language,
};
