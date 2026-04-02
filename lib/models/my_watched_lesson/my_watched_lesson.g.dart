// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_watched_lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyWatchedLesson _$MyWatchedLessonFromJson(Map<String, dynamic> json) =>
    _MyWatchedLesson(
      groupLesson: json['group_lesson'] == null
          ? null
          : MyWatchedLessonGroupLesson.fromJson(
              json['group_lesson'] as Map<String, dynamic>,
            ),
      id: (json['id'] as num?)?.toInt(),
      studentId: (json['student_id'] as num?)?.toInt(),
      accessToLesson: json['access_to_lesson'] as bool?,
      visited: json['visited'] as bool?,
      visitedType: json['visited_type'] as String?,
      writeOffFormat: json['write_off_format'] as String?,
      score: (json['score'] as num?)?.toInt(),
      note: json['note'] as String?,
      accessToVideo: json['access_to_video'] as bool?,
      isWatched: json['is_watched'] as bool?,
    );

Map<String, dynamic> _$MyWatchedLessonToJson(_MyWatchedLesson instance) =>
    <String, dynamic>{
      'group_lesson': instance.groupLesson,
      'id': instance.id,
      'student_id': instance.studentId,
      'access_to_lesson': instance.accessToLesson,
      'visited': instance.visited,
      'visited_type': instance.visitedType,
      'write_off_format': instance.writeOffFormat,
      'score': instance.score,
      'note': instance.note,
      'access_to_video': instance.accessToVideo,
      'is_watched': instance.isWatched,
    };

_MyWatchedLessonGroupLesson _$MyWatchedLessonGroupLessonFromJson(
  Map<String, dynamic> json,
) => _MyWatchedLessonGroupLesson(
  videos: (json['videos'] as List<dynamic>?)
      ?.map((e) => MyWatchedLessonVideos.fromJson(e as Map<String, dynamic>))
      .toList(),
  group: json['group'] == null
      ? null
      : MyWatchedLessonGroup.fromJson(json['group'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  groupId: (json['group_id'] as num?)?.toInt(),
  type: json['type'] as String?,
  status: json['status'] as String?,
  rescheduledReason: json['rescheduled_reason'] as String?,
  lessonNumber: (json['lesson_number'] as num?)?.toInt(),
  middleRating: json['middle_rating'] as String?,
  unitedId: (json['united_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$MyWatchedLessonGroupLessonToJson(
  _MyWatchedLessonGroupLesson instance,
) => <String, dynamic>{
  'videos': instance.videos,
  'group': instance.group,
  'id': instance.id,
  'group_id': instance.groupId,
  'type': instance.type,
  'status': instance.status,
  'rescheduled_reason': instance.rescheduledReason,
  'lesson_number': instance.lessonNumber,
  'middle_rating': instance.middleRating,
  'united_id': instance.unitedId,
};

_MyWatchedLessonVideos _$MyWatchedLessonVideosFromJson(
  Map<String, dynamic> json,
) => _MyWatchedLessonVideos(
  id: (json['id'] as num?)?.toInt(),
  lessonId: (json['lesson_id'] as num?)?.toInt(),
  videoKey: json['video_key'] as String?,
  video: json['video'] == null
      ? null
      : VideoModel.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MyWatchedLessonVideosToJson(
  _MyWatchedLessonVideos instance,
) => <String, dynamic>{
  'id': instance.id,
  'lesson_id': instance.lessonId,
  'video_key': instance.videoKey,
  'video': instance.video,
};

_MyWatchedLessonGroup _$MyWatchedLessonGroupFromJson(
  Map<String, dynamic> json,
) => _MyWatchedLessonGroup(
  course: json['course'] == null
      ? null
      : MyWatchedLessonCourse.fromJson(json['course'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  format: json['format'] as String?,
  type: json['type'] as String?,
  startDate: json['start_date'] as String?,
  graduatedDate: json['graduated_date'] as String?,
  disbandedDate: json['disbanded_date'] as String?,
  hasDoubleLesson: json['has_double_lesson'] as bool?,
  status: json['status'] as String?,
  studyTime: json['study_time'] as String?,
  days: (json['days'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  startLessonNumber: (json['start_lesson_number'] as num?)?.toInt(),
  videoDeleted: json['video_deleted'] as bool?,
  courseId: (json['course_id'] as num?)?.toInt(),
  launchId: (json['launch_id'] as num?)?.toInt(),
  cabinetId: (json['cabinet_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$MyWatchedLessonGroupToJson(
  _MyWatchedLessonGroup instance,
) => <String, dynamic>{
  'course': instance.course,
  'id': instance.id,
  'format': instance.format,
  'type': instance.type,
  'start_date': instance.startDate,
  'graduated_date': instance.graduatedDate,
  'disbanded_date': instance.disbandedDate,
  'has_double_lesson': instance.hasDoubleLesson,
  'status': instance.status,
  'study_time': instance.studyTime,
  'days': instance.days,
  'start_lesson_number': instance.startLessonNumber,
  'video_deleted': instance.videoDeleted,
  'course_id': instance.courseId,
  'launch_id': instance.launchId,
  'cabinet_id': instance.cabinetId,
};

_MyWatchedLessonCourse _$MyWatchedLessonCourseFromJson(
  Map<String, dynamic> json,
) => _MyWatchedLessonCourse(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  banner: json['banner'] as String?,
  adsBanner: json['ads_banner'] as String?,
  color: json['color'] as String?,
  slug: json['slug'] as String?,
  language: json['language'] as String?,
);

Map<String, dynamic> _$MyWatchedLessonCourseToJson(
  _MyWatchedLessonCourse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'banner': instance.banner,
  'ads_banner': instance.adsBanner,
  'color': instance.color,
  'slug': instance.slug,
  'language': instance.language,
};
