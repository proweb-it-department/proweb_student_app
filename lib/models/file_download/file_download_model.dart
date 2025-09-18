import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';

part 'file_download_model.freezed.dart';
part 'file_download_model.g.dart';

@freezed
abstract class FileDownloadModel with _$FileDownloadModel {
  const factory FileDownloadModel({
    required String displayName,
    required int id,
    required String link,
    required int createdAt,
    required int progress,
    required ProgressTypeDownloadVideo progressType,
    String? key,
  }) = _FileDownloadModel;

  factory FileDownloadModel.fromJson(Map<String, dynamic> json) =>
      _$FileDownloadModelFromJson(json);
}
