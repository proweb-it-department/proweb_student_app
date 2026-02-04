// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_lesson_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduledLessonModels _$ScheduledLessonModelsFromJson(
  Map<String, dynamic> json,
) => _ScheduledLessonModels(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  id: (json['id'] as num?)?.toInt(),
  datetime: json['datetime'] as String?,
  type: json['type'] as String?,
  status: json['status'] as String?,
  rescheduledReason: json['rescheduled_reason'] as String?,
  lessonNumber: (json['lesson_number'] as num?)?.toInt(),
  middleRating: json['middle_rating'] as String?,
  videos: (json['videos'] as List<dynamic>?)
      ?.map((e) => Videos.fromJson(e as Map<String, dynamic>))
      .toList(),
  handbook: json['handbook'] == null
      ? null
      : Handbook.fromJson(json['handbook'] as Map<String, dynamic>),
  myGroup: json['myGroup'] == null
      ? null
      : MyGroupsItem.fromJson(json['myGroup'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScheduledLessonModelsToJson(
  _ScheduledLessonModels instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'id': instance.id,
  'datetime': instance.datetime,
  'type': instance.type,
  'status': instance.status,
  'rescheduled_reason': instance.rescheduledReason,
  'lesson_number': instance.lessonNumber,
  'middle_rating': instance.middleRating,
  'videos': instance.videos,
  'handbook': instance.handbook,
  'myGroup': instance.myGroup,
};

_Videos _$VideosFromJson(Map<String, dynamic> json) =>
    _Videos(videoKey: json['video_key'] as String?);

Map<String, dynamic> _$VideosToJson(_Videos instance) => <String, dynamic>{
  'video_key': instance.videoKey,
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
