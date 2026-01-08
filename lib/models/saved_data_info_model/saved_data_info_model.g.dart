// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_data_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedDataInfoModel _$SavedDataInfoModelFromJson(Map<String, dynamic> json) =>
    _SavedDataInfoModel(
      video: (json['video'] as num?)?.toDouble(),
      file: (json['file'] as num?)?.toDouble(),
      all: (json['all'] as num?)?.toDouble(),
      cache: (json['cache'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SavedDataInfoModelToJson(_SavedDataInfoModel instance) =>
    <String, dynamic>{
      'video': instance.video,
      'file': instance.file,
      'all': instance.all,
      'cache': instance.cache,
    };
