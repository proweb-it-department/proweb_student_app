import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/repositories/file_repositories/file_repositories.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/file_download/file_download_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
part 'downloader_files_event.dart';
part 'downloader_files_state.dart';
part 'downloader_files_bloc.freezed.dart';

class DownloaderFilesBloc
    extends Bloc<DownloaderFilesEvent, DownloaderFilesState> {
  DownloaderFilesBloc() : super(_Initial()) {
    on<DownloaderFilesEvent>((event, emit) async {
      started() async {
        final downloaders = await sl<FileRepository>().getAllFiles();
        emit(DownloaderFilesState.download(downloaders: downloaders));
      }

      download(FileDownloadModel download) async {
        final progressType = download.progressType;
        final complited = progressType == ProgressTypeDownloadVideo.complited;
        final error = progressType == ProgressTypeDownloadVideo.error;
        if (error) {
          final downloaders = await sl<FileRepository>().getAllFiles();
          return emit(DownloaderFilesState.download(downloaders: downloaders));
        }

        FileSavedData? file;
        if (complited) {
          file = FileSavedData(
            displayName: download.displayName,
            id: download.id,
            link: download.link,
            createdAt: DateTime.now().millisecondsSinceEpoch,
          );
          await sl<FileRepository>().saveFile(file);
        }
        final downloaders = await sl<FileRepository>().getAllFiles();
        final bool typeBool = complited || error;
        return emit(
          DownloaderFilesState.download(
            downloaders: downloaders,
            download: typeBool ? null : download,
          ),
        );
      }

      delete(int id) async {
        final download = await sl<FileRepository>().getFileById(id);
        if (download != null) {
          final slugDir = File(download.link);

          if (await slugDir.exists()) {
            await sl<FileRepository>().deleteFileById(id);
            final downloaders = await sl<FileRepository>().getAllFiles();
            emit(DownloaderFilesState.download(downloaders: downloaders));
            await slugDir.delete(recursive: true);
          }
          final downloaders = await sl<FileRepository>().getAllFiles();
          emit(DownloaderFilesState.download(downloaders: downloaders));
        }
      }

      deleteAll() async {
        final downloaders = await sl<FileRepository>().getAllFiles();
        final slugs = downloaders.map((e) => e.id).toList();
        for (var element in slugs) {
          await delete(element);
        }
      }

      await event.when(
        started: started,
        download: download,
        delete: delete,
        deleteAll: deleteAll,
      );
    });
  }
}
