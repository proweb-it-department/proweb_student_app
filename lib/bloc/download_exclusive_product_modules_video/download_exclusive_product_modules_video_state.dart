part of 'download_exclusive_product_modules_video_bloc.dart';

@freezed
class DownloadExclusiveProductModulesVideoState
    with _$DownloadExclusiveProductModulesVideoState {
  const factory DownloadExclusiveProductModulesVideoState.load() = _Load;
  const factory DownloadExclusiveProductModulesVideoState.error() = _Error;
  const factory DownloadExclusiveProductModulesVideoState.notFound() =
      _NotFound;
  const factory DownloadExclusiveProductModulesVideoState.complited({
    required List<ExclusiveProductModuleModelData> modules,
  }) = _Complited;
}
