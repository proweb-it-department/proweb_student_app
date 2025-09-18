part of 'download_exclusive_product_modules_material_video_bloc.dart';

@freezed
class DownloadExclusiveProductModulesMaterialVideoState
    with _$DownloadExclusiveProductModulesMaterialVideoState {
  const factory DownloadExclusiveProductModulesMaterialVideoState.load() =
      _Load;
  const factory DownloadExclusiveProductModulesMaterialVideoState.error() =
      _Error;
  const factory DownloadExclusiveProductModulesMaterialVideoState.notFound() =
      _NotFound;
  const factory DownloadExclusiveProductModulesMaterialVideoState.complited({
    required List<ExclusiveProductModuleMaterialModelData> materials,
  }) = _Complited;
}
