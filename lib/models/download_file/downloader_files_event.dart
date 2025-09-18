part of 'downloader_files_bloc.dart';

@freezed
class DownloaderFilesEvent with _$DownloaderFilesEvent {
  const factory DownloaderFilesEvent.started() = _Started;
  const factory DownloaderFilesEvent.download({
    required FileDownloadModel download,
  }) = _DownloaderFilesDownloader;
  const factory DownloaderFilesEvent.delete({
    required int id,
  }) = _DownloaderFilesDelete;
  const factory DownloaderFilesEvent.deleteAll() = _DownloaderFilesDeleteAll;
}
