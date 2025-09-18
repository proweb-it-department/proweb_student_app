// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_sendet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoSendetModel _$VideoSendetModelFromJson(Map<String, dynamic> json) =>
    _VideoSendetModel(
      slug: json['slug'] as String,
      playlist: json['playlist'] as String,
      progress: (json['progress'] as num).toInt(),
      progressType: $enumDecode(
        _$ProgressTypeDownloadVideoEnumMap,
        json['progressType'],
      ),
      preview: json['preview'] as String?,
      title: json['title'] as String?,
      size: (json['size'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      key: json['key'] as String?,
    );

Map<String, dynamic> _$VideoSendetModelToJson(
  _VideoSendetModel instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'playlist': instance.playlist,
  'progress': instance.progress,
  'progressType': _$ProgressTypeDownloadVideoEnumMap[instance.progressType]!,
  'preview': instance.preview,
  'title': instance.title,
  'size': instance.size,
  'duration': instance.duration,
  'key': instance.key,
};

const _$ProgressTypeDownloadVideoEnumMap = {
  ProgressTypeDownloadVideo.key: 'key',
  ProgressTypeDownloadVideo.generalM3U8: 'generalM3U8',
  ProgressTypeDownloadVideo.innerM3U8: 'innerM3U8',
  ProgressTypeDownloadVideo.segements: 'segements',
  ProgressTypeDownloadVideo.preview: 'preview',
  ProgressTypeDownloadVideo.complited: 'complited',
  ProgressTypeDownloadVideo.error: 'error',
  ProgressTypeDownloadVideo.stop: 'stop',
};
