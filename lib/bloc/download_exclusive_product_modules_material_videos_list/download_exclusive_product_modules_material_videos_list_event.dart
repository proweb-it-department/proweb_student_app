part of 'download_exclusive_product_modules_material_videos_list_bloc.dart';

@freezed
abstract class DownloadExclusiveProductModulesMaterialVideosListEvent
    with _$DownloadExclusiveProductModulesMaterialVideosListEvent {
  const factory DownloadExclusiveProductModulesMaterialVideosListEvent.started({
    required int materialId,
  }) = _Started;
}
