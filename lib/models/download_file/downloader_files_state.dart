part of 'downloader_files_bloc.dart';

@freezed
class DownloaderFilesState with _$DownloaderFilesState {
  const factory DownloaderFilesState.initial() = _Initial;
  const factory DownloaderFilesState.download({
    FileDownloadModel? download,
    required List<FileSavedData> downloaders,
  }) = _DownloaderFilesSaved;
}
