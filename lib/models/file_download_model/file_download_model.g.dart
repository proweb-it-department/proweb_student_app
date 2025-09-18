// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_download_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FileDownloadModel _$FileDownloadModelFromJson(Map<String, dynamic> json) =>
    _FileDownloadModel(
      displayName: json['displayName'] as String,
      id: (json['id'] as num).toInt(),
      link: json['link'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
      progress: (json['progress'] as num).toInt(),
      progressType: $enumDecode(
        _$ProgressTypeDownloadVideoEnumMap,
        json['progressType'],
      ),
      key: json['key'] as String?,
    );

Map<String, dynamic> _$FileDownloadModelToJson(
  _FileDownloadModel instance,
) => <String, dynamic>{
  'displayName': instance.displayName,
  'id': instance.id,
  'link': instance.link,
  'createdAt': instance.createdAt,
  'progress': instance.progress,
  'progressType': _$ProgressTypeDownloadVideoEnumMap[instance.progressType]!,
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
