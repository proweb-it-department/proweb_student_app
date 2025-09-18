// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_lesson_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupLessonInfo _$GroupLessonInfoFromJson(Map<String, dynamic> json) =>
    _GroupLessonInfo(
      groupLesson: json['group_lesson'] == null
          ? null
          : GroupLesson.fromJson(json['group_lesson'] as Map<String, dynamic>),
      accessToLesson: json['access_to_lesson'] as bool?,
      accessToVideo: json['access_to_video'] as bool?,
      visited: json['visited'] as bool?,
      visitedType: json['visited_type'] as String?,
      score: (json['score'] as num?)?.toInt(),
      relationId: (json['relation_id'] as num?)?.toInt(),
      note: json['note'] as String?,
      banner: json['banner'] as String?,
      statusVideo: $enumDecodeNullable(
        _$StatusVideoLoadEnumMap,
        json['status_video'],
      ),
    );

Map<String, dynamic> _$GroupLessonInfoToJson(_GroupLessonInfo instance) =>
    <String, dynamic>{
      'group_lesson': instance.groupLesson,
      'access_to_lesson': instance.accessToLesson,
      'access_to_video': instance.accessToVideo,
      'visited': instance.visited,
      'visited_type': instance.visitedType,
      'score': instance.score,
      'relation_id': instance.relationId,
      'note': instance.note,
      'banner': instance.banner,
      'status_video': _$StatusVideoLoadEnumMap[instance.statusVideo],
    };

const _$StatusVideoLoadEnumMap = {
  StatusVideoLoad.complete: 'complete',
  StatusVideoLoad.processing: 'processing',
  StatusVideoLoad.queue: 'queue',
  StatusVideoLoad.noAudioStream: 'noAudioStream',
  StatusVideoLoad.noVideos: 'noVideos',
  StatusVideoLoad.generate: 'generate',
};

_GroupLesson _$GroupLessonFromJson(Map<String, dynamic> json) => _GroupLesson(
  id: (json['id'] as num?)?.toInt(),
  datetime: json['datetime'] as String?,
  type: json['type'] as String?,
  status: json['status'] as String?,
  rescheduledReason: json['rescheduled_reason'] as String?,
  lessonNumber: (json['lesson_number'] as num?)?.toInt(),
  handbook: json['handbook'] == null
      ? null
      : Handbook.fromJson(json['handbook'] as Map<String, dynamic>),
  middleRating: json['middle_rating'] as String?,
  videos: (json['videos'] as List<dynamic>?)
      ?.map((e) => Videos.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GroupLessonToJson(_GroupLesson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datetime': instance.datetime,
      'type': instance.type,
      'status': instance.status,
      'rescheduled_reason': instance.rescheduledReason,
      'lesson_number': instance.lessonNumber,
      'handbook': instance.handbook,
      'middle_rating': instance.middleRating,
      'videos': instance.videos,
    };

_Videos _$VideosFromJson(Map<String, dynamic> json) => _Videos(
  videoKey: json['video_key'] as String?,
  video: json['video'] == null
      ? null
      : VideoModel.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VideosToJson(_Videos instance) => <String, dynamic>{
  'video_key': instance.videoKey,
  'video': instance.video,
};

_Handbook _$HandbookFromJson(Map<String, dynamic> json) => _Handbook(
  handbookLinks: (json['handbook_links'] as List<dynamic>?)
      ?.map((e) => HandbookLinks.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  lessonNumber: json['lesson_number'] as String?,
);

Map<String, dynamic> _$HandbookToJson(_Handbook instance) => <String, dynamic>{
  'handbook_links': instance.handbookLinks,
  'id': instance.id,
  'name': instance.name,
  'lesson_number': instance.lessonNumber,
};

_HandbookLinks _$HandbookLinksFromJson(Map<String, dynamic> json) =>
    _HandbookLinks(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$HandbookLinksToJson(_HandbookLinks instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'link': instance.link,
    };
