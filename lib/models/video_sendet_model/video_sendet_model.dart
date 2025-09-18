import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';

part 'video_sendet_model.freezed.dart';
part 'video_sendet_model.g.dart';

@freezed
abstract class VideoSendetModel with _$VideoSendetModel {
  const factory VideoSendetModel({
    required String slug,
    required String playlist,
    required int progress,
    required ProgressTypeDownloadVideo progressType,
    String? preview,
    String? title,
    int? size,
    int? duration,
    String? key,
  }) = _VideoSendetModel;

  factory VideoSendetModel.fromJson(Map<String, dynamic> json) =>
      _$VideoSendetModelFromJson(json);
}
