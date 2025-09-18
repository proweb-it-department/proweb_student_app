part of 'downloads_exclusive_product_video_bloc.dart';

@freezed
class DownloadsExclusiveProductVideoState
    with _$DownloadsExclusiveProductVideoState {
  const factory DownloadsExclusiveProductVideoState.load() = _Load;
  const factory DownloadsExclusiveProductVideoState.error() = _Error;
  const factory DownloadsExclusiveProductVideoState.notFound() = _NotFound;
  const factory DownloadsExclusiveProductVideoState.complited({
    required List<ExclusiveProductModelData> products,
  }) = _Complited;
}
