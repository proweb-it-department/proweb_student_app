part of 'download_exclusive_product_modules_material_videos_list_bloc.dart';

@freezed
class DownloadExclusiveProductModulesMaterialVideosListState
    with _$DownloadExclusiveProductModulesMaterialVideosListState {
  const factory DownloadExclusiveProductModulesMaterialVideosListState.load() =
      _Load;
  const factory DownloadExclusiveProductModulesMaterialVideosListState.error() =
      _Error;
  const factory DownloadExclusiveProductModulesMaterialVideosListState.notFound() =
      _NotFound;
  const factory DownloadExclusiveProductModulesMaterialVideosListState.coplited({
    required List<VideoSavedData> videos,
  }) = _Complited;
}
