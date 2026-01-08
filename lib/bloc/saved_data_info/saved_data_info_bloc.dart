import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/saved_data_info_model/saved_data_info_model.dart';
import 'package:disk_space_2/disk_space_2.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:talker_logger/talker_logger.dart';

part 'saved_data_info_event.dart';
part 'saved_data_info_state.dart';
part 'saved_data_info_bloc.freezed.dart';

class SavedDataInfoBloc extends Bloc<SavedDataInfoEvent, SavedDataInfoState> {
  SavedDataInfoBloc() : super(SavedDataInfoInition()) {
    on<SavedDataInfoEvent>((event, emit) async {
      Future<double> getDirectorySize(Directory dir) async {
        double size = 0;

        if (await dir.exists()) {
          final files = dir.list(recursive: true, followLinks: false);

          await for (final file in files) {
            if (file is File) {
              size += await file.length();
            }
          }
        }

        return size;
      }

      started() async {
        final directory = await getApplicationDocumentsDirectory();
        String videoPath = '${directory.path}/playlists';
        String filePath = '${directory.path}/proweb_file';
        final video = Directory(videoPath);
        final file = Directory(filePath);
        final cacheDir = await getTemporaryDirectory();

        double videoSize = 0;
        double fileSize = 0;
        double cacheSize = 0;
        double total = 0;
        try {
          if (await video.exists()) {
            videoSize = await getDirectorySize(video);
          }
          if (await file.exists()) {
            fileSize = await getDirectorySize(file);
          }
          if (await cacheDir.exists()) {
            cacheSize = await getDirectorySize(cacheDir);
          }
          total = (await DiskSpace.getTotalDiskSpace) ?? 0;
          if (total > 0) {
            total = total * 1024 * 1024;
          }
        } catch (e) {
          TalkerLogger().error(e);
        }
        emit(
          SavedDataInfoState.complited(
            data: SavedDataInfoModel(
              all: total,
              video: videoSize,
              file: fileSize,
              cache: cacheSize,
            ),
          ),
        );
      }

      deleteDownloadVideo() async {
        final videoDB = sl<AppDatabase>();
        await videoDB.videoSaved.delete().go();
        await videoDB.exclusiveProductModel.delete().go();
        await videoDB.exclusiveProductModuleModel.delete().go();
        await videoDB.exclusiveProductModuleMaterialModel.delete().go();
        await videoDB.exclusiveProductModuleMaterialVideoModel.delete().go();
        await videoDB.groupsModel.delete().go();
        await videoDB.groupLessonModel.delete().go();
        await videoDB.groupLessonVideoModel.delete().go();
        final directory = await getApplicationDocumentsDirectory();
        String videoPath = '${directory.path}/playlists';
        final videoDir = Directory(videoPath);
        if (await videoDir.exists()) {
          await videoDir.delete(recursive: true);
        }
      }

      deleteDownloadFile() async {
        final videoDB = sl<AppDatabase>();
        await videoDB.fileSaved.delete().go();
        final directory = await getApplicationDocumentsDirectory();
        String videoPath = '${directory.path}/proweb_file';
        final videoDir = Directory(videoPath);
        if (await videoDir.exists()) {
          await videoDir.delete(recursive: true);
        }
      }

      deleteFile(String type) async {
        emit(SavedDataInfoState.initial());
        if (type == 'video') {
          await deleteDownloadVideo();
        } else if (type == 'file') {
          await deleteDownloadFile();
        } else {
          await deleteDownloadVideo();
          await deleteDownloadFile();
        }

        final directory = await getApplicationDocumentsDirectory();
        String videoPath = '${directory.path}/playlists';
        String filePath = '${directory.path}/proweb_file';
        final video = Directory(videoPath);
        final file = Directory(filePath);
        final cacheDir = await getTemporaryDirectory();

        double videoSize = 0;
        double fileSize = 0;
        double cacheSize = 0;
        double total = 0;
        try {
          if (await video.exists()) {
            videoSize = await getDirectorySize(video);
          }
          if (await file.exists()) {
            fileSize = await getDirectorySize(file);
          }
          if (await cacheDir.exists()) {
            cacheSize = await getDirectorySize(cacheDir);
          }
          total = (await DiskSpace.getTotalDiskSpace) ?? 0;
          if (total > 0) {
            total = total * 1024 * 1024;
          }
        } catch (e) {
          TalkerLogger().error(e);
        }
        emit(
          SavedDataInfoState.complited(
            data: SavedDataInfoModel(
              all: total,
              video: videoSize,
              file: fileSize,
              cache: cacheSize,
            ),
          ),
        );
      }

      await event.when(started: started, delete: deleteFile);
    });
  }
}
