// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoModel _$VideoModelFromJson(Map<String, dynamic> json) => _VideoModel(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] == null
      ? null
      : UserIdDefault.fromJson(json['created_by'] as Map<String, dynamic>),
  updatedBy: json['updated_by'] == null
      ? null
      : UserIdDefault.fromJson(json['updated_by'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  slug: json['slug'] as String?,
  preview: json['preview'] as String?,
  durations: (json['durations'] as num?)?.toInt(),
  playlist: json['playlist'] as String?,
  status: $enumDecodeNullable(_$StatusVideoDataEnumMap, json['status']),
  sampleTimes: (json['sample_times'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  size: (json['size'] as num?)?.toInt(),
  rawSize: (json['raw_size'] as num?)?.toInt(),
  processingPercentage: (json['processing_percentage'] as num?)?.toInt(),
  timeCodes: (json['time_codes'] as List<dynamic>?)
      ?.map((e) => TimeCodes.fromJson(e as Map<String, dynamic>))
      .toList(),
  isDownload: json['is_download'] as bool?,
  watched: (json['watched'] as List<dynamic>?)
      ?.map((e) => Watched.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$VideoModelToJson(_VideoModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'slug': instance.slug,
      'preview': instance.preview,
      'durations': instance.durations,
      'playlist': instance.playlist,
      'status': _$StatusVideoDataEnumMap[instance.status],
      'sample_times': instance.sampleTimes,
      'size': instance.size,
      'raw_size': instance.rawSize,
      'processing_percentage': instance.processingPercentage,
      'time_codes': instance.timeCodes,
      'is_download': instance.isDownload,
      'watched': instance.watched,
    };

const _$StatusVideoDataEnumMap = {
  StatusVideoData.queue: 'queue',
  StatusVideoData.processing: 'processing',
  StatusVideoData.complete: 'complete',
  StatusVideoData.archive: 'archive',
  StatusVideoData.noAudioStream: 'no_audio_stream',
  StatusVideoData.deleted: 'deleted',
  StatusVideoData.inQueueForDeletion: 'in_queue_for_deletion',
  StatusVideoData.download: 'download',
};

_TimeCodes _$TimeCodesFromJson(Map<String, dynamic> json) => _TimeCodes(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  id: (json['id'] as num?)?.toInt(),
  time: (json['time'] as num?)?.toInt(),
  name: json['name'] as String?,
  preview: json['preview'] as String?,
);

Map<String, dynamic> _$TimeCodesToJson(_TimeCodes instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'id': instance.id,
      'time': instance.time,
      'name': instance.name,
      'preview': instance.preview,
    };

_Watched _$WatchedFromJson(Map<String, dynamic> json) => _Watched(
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  durations: (json['durations'] as num?)?.toInt(),
  watched: json['watched'] as bool?,
);

Map<String, dynamic> _$WatchedToJson(_Watched instance) => <String, dynamic>{
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'durations': instance.durations,
  'watched': instance.watched,
};
