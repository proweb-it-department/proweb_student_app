part of 'download_exclusive_product_modules_video_bloc.dart';

@freezed
abstract class DownloadExclusiveProductModulesVideoEvent
    with _$DownloadExclusiveProductModulesVideoEvent {
  const factory DownloadExclusiveProductModulesVideoEvent.started({
    required int productId,
  }) = _Started;
}
