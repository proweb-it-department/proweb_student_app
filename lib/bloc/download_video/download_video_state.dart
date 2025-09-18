part of 'download_video_bloc.dart';

@freezed
class DownloadVideoState with _$DownloadVideoState {
  const factory DownloadVideoState.initial() = _Initial;
  const factory DownloadVideoState.download({
    VideoSendetModel? download,
    required List<VideoSavedData> downloaders,
  }) = _DownloadVideoVideos;
}
