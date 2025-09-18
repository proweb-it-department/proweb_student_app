part of 'download_exclusive_product_modules_material_video_bloc.dart';

@freezed
abstract class DownloadExclusiveProductModulesMaterialVideoEvent
    with _$DownloadExclusiveProductModulesMaterialVideoEvent {
  const factory DownloadExclusiveProductModulesMaterialVideoEvent.started({
    required int moduleId,
  }) = _Started;
}
