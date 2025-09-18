part of 'download_video_bloc.dart';

@freezed
class DownloadVideoEvent with _$DownloadVideoEvent {
  const factory DownloadVideoEvent.started() = _Started;
  const factory DownloadVideoEvent.download({
    required VideoSendetModel download,
  }) = _DownloadVideoDownloader;
  const factory DownloadVideoEvent.delete({
    required String slug,
  }) = _DownloadVideoDelete;
  const factory DownloadVideoEvent.deleteAll() = _DownloadVideoDeleteAll;
  const factory DownloadVideoEvent.deleteAllNotStorage() =
      _DownloadVideoDeleteAllNotStorage;
}
