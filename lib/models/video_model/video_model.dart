import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:proweb_student_app/models/sessions_list_item/sessions_list_item.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
abstract class VideoModel with _$VideoModel {
  const factory VideoModel({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') UserIdDefault? createdBy,
    @JsonKey(name: 'updated_by') UserIdDefault? updatedBy,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'preview') String? preview,
    @JsonKey(name: 'durations') int? durations,
    @JsonKey(name: 'playlist') String? playlist,
    @JsonKey(name: 'status') StatusVideoData? status,
    @JsonKey(name: 'sample_times') List<int>? sampleTimes,
    @JsonKey(name: 'size') int? size,
    @JsonKey(name: 'raw_size') int? rawSize,
    @JsonKey(name: 'processing_percentage') int? processingPercentage,
    @JsonKey(name: 'time_codes') List<TimeCodes>? timeCodes,
    @JsonKey(name: 'is_download') bool? isDownload,
    @JsonKey(name: 'watched') List<Watched>? watched,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, Object?> json) => _$VideoModelFromJson(json);
}

@freezed
abstract class TimeCodes with _$TimeCodes {
  const factory TimeCodes({@JsonKey(name: 'created_at') String? createdAt, @JsonKey(name: 'updated_at') String? updatedAt, @JsonKey(name: 'id') int? id, @JsonKey(name: 'time') int? time, @JsonKey(name: 'name') String? name, @JsonKey(name: 'preview') String? preview}) = _TimeCodes;

  factory TimeCodes.fromJson(Map<String, Object?> json) => _$TimeCodesFromJson(json);
}

@freezed
abstract class Watched with _$Watched {
  const factory Watched({@JsonKey(name: 'created_at') String? createdAt, @JsonKey(name: 'updated_at') String? updatedAt, @JsonKey(name: 'durations') int? durations, @JsonKey(name: 'watched') bool? watched}) = _Watched;

  factory Watched.fromJson(Map<String, Object?> json) => _$WatchedFromJson(json);
}
