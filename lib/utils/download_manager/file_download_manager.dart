import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:proweb_student_app/models/download_file/downloader_files_bloc.dart';
import 'package:proweb_student_app/models/file_download/file_download_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class DownloadManagerFile {
  DownloaderFilesBloc? _bloc;
  final String baseDir = '/proweb_file';
  Future<void> init(DownloaderFilesBloc contextBloc) async {
    _bloc = contextBloc;
  }

  Future<String?> _prepareSaveDir() async {
    final directory = await getApplicationDocumentsDirectory();
    String localPath = '${directory.path}$baseDir';
    final savedDir = Directory(localPath);
    if (!savedDir.existsSync()) {
      savedDir.createSync(recursive: true);
    }
    return localPath;
  }

  Future<void> download(FileDownloadModel model) async {
    model = model.copyWith(progressType: ProgressTypeDownloadVideo.key);
    saveModel(model);
    final localPath = await _prepareSaveDir();
    if (localPath == null) {
      model = model.copyWith(progressType: ProgressTypeDownloadVideo.error);
      saveModel(model);
      return;
    }

    await _download(
      downloadPath: model.link,
      savePath: localPath,
      model: model,
    );
  }

  void saveModel(FileDownloadModel model) {
    if (_bloc != null) {
      _bloc!.add(DownloaderFilesEvent.download(download: model));
    }
  }

  Future<void> _download({
    required String downloadPath,
    required String savePath,
    required FileDownloadModel model,
  }) async {
    int attempt = 0;
    int maxRetries = 4;
    final Dio dio = sl<Dio>();
    final nameFile = getFileNameAndExtension(downloadPath);
    if (nameFile == null) {
      model = model.copyWith(progressType: ProgressTypeDownloadVideo.error);
      saveModel(model);
      return;
    }
    while (attempt < maxRetries) {
      try {
        if (!downloadPath.contains('http')) {
          downloadPath = '${GlobalPath.main}$downloadPath';
        }
        await dio.download(
          downloadPath,
          '$savePath/$nameFile',
          onReceiveProgress: (count, total) {
            model = model.copyWith(
              progressType: ProgressTypeDownloadVideo.segements,
              progress: (count / total * 100).round(),
            );
            saveModel(model);
          },
        );
        break;
      } catch (e) {
        attempt++;
        if (attempt >= maxRetries) {
          model = model.copyWith(progressType: ProgressTypeDownloadVideo.error);
          saveModel(model);
          return;
        }
        await Future.delayed(Duration(seconds: 2));
      }
    }
    model = model.copyWith(
      progressType: ProgressTypeDownloadVideo.complited,
      link: '$savePath/$nameFile',
    );
    saveModel(model);
    return;
  }

  String? getFileNameAndExtension(String url) {
    var segments = url.split('/');

    var fileNameWithExtension = segments.last;

    var timestamp = DateTime.now().millisecondsSinceEpoch;

    if (fileNameWithExtension.contains('.')) {
      var parts = fileNameWithExtension.split('.');
      var name = parts.sublist(0, parts.length - 1).join('.');
      var extension = parts.last;
      return '${name}_$timestamp.$extension';
    } else {
      return null;
    }
  }
}
