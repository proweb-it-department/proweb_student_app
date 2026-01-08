import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'saved_data_info_model.freezed.dart';
part 'saved_data_info_model.g.dart';

@freezed
abstract class SavedDataInfoModel with _$SavedDataInfoModel {
  const factory SavedDataInfoModel({
    double? video,
    double? file,
    double? all,
    double? cache,
  }) = _SavedDataInfoModel;

  factory SavedDataInfoModel.fromJson(Map<String, Object?> json) =>
      _$SavedDataInfoModelFromJson(json);
}
