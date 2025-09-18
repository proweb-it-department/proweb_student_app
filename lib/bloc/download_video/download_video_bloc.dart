import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:proweb_student_app/api/repositories/video_group_repositiories/video_group_repositiories.dart';
import 'package:proweb_student_app/api/repositories/video_product_repositiories/video_product_repositiories.dart';
import 'package:proweb_student_app/api/video_repository/video_repository.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/video_sendet_model/video_sendet_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'download_video_event.dart';
part 'download_video_state.dart';
part 'download_video_bloc.freezed.dart';

class DownloadVideoBloc extends Bloc<DownloadVideoEvent, DownloadVideoState> {
  DownloadVideoBloc() : super(_Initial()) {
    on<DownloadVideoEvent>((event, emit) async {
      deleteAllNotStorage({bool? emited}) async {
        final downloaders = await sl<VideoRepository>().getAllVideos();
        final List<String> directoriesPath = [];
        final dir = await getApplicationDocumentsDirectory();
        final playlistsDir = Directory('${dir.path}/playlists');
        if (await dir.exists()) {
          if (await playlistsDir.exists()) {
            final listDirs = playlistsDir.listSync();
            for (var element in listDirs) {
              directoriesPath.add(element.path);
            }
          }
        }
        if (directoriesPath.isEmpty && downloaders.isNotEmpty) {
          for (var element in downloaders) {
            await sl<VideoRepository>().deleteVideoBySlug(element.slug);
          }
          return;
        }
        final List<String> deleteDir = [];
        if (downloaders.isNotEmpty) {
          final slugs = downloaders.map((e) => e.slug).toList();
          for (var element in directoriesPath) {
            final find = slugs.firstWhere(
              (e) => '${playlistsDir.path}/$e' == element,
              orElse: () => '',
            );
            if (find == '') {
              deleteDir.add(element);
            }
          }
        }
        if (deleteDir.isNotEmpty) {
          for (var element in deleteDir) {
            final deleteDir = Directory(element);
            if (await deleteDir.exists()) {
              await deleteDir.delete(recursive: true);
            }
          }
        }
        if (emited == null || emited == true) {
          final downloaders = await sl<VideoRepository>().getAllVideos();
          emit(DownloadVideoState.download(downloaders: downloaders));
        }
      }

      started() async {
        final downloaders = await sl<VideoRepository>().getAllVideos();
        emit(DownloadVideoState.download(downloaders: downloaders));
        deleteAllNotStorage(emited: false);
      }

      download(VideoSendetModel download) async {
        final progressType = download.progressType;
        final complited = progressType == ProgressTypeDownloadVideo.complited;
        final error = progressType == ProgressTypeDownloadVideo.error;
        if (error) {
          final downloaders = await sl<VideoRepository>().getAllVideos();
          return emit(DownloadVideoState.download(downloaders: downloaders));
        }
        if (complited) {
          await sl<VideoRepository>().saveVideo(
            VideoSavedData(
              slug: download.slug,
              title: download.title ?? '',
              playlist: download.playlist,
              duration: download.duration,
              preview: download.preview,
              size: download.size,
              key: download.key,
              createdAt: DateTime.now().millisecondsSinceEpoch,
            ),
          );
        }
        final downloaders = await sl<VideoRepository>().getAllVideos();
        final bool typeBool = complited || error;
        emit(
          DownloadVideoState.download(
            downloaders: downloaders,
            download: typeBool ? null : download,
          ),
        );
      }

      delete(String slug) async {
        final dir = await getApplicationDocumentsDirectory();
        final baseaPath = '/playlists';
        final slugDir = Directory('${dir.path}$baseaPath/$slug/');

        if (await slugDir.exists()) {
          await sl<VideoRepository>().deleteVideoBySlug(slug);
          final downloaders = await sl<VideoRepository>().getAllVideos();
          emit(DownloadVideoState.download(downloaders: downloaders));
          await slugDir.delete(recursive: true);
        }
        final downloaders = await sl<VideoRepository>().getAllVideos();
        emit(DownloadVideoState.download(downloaders: downloaders));
      }

      deleteAll() async {
        final downloaders = await sl<VideoRepository>().getAllVideos();
        final slugs = downloaders.map((e) => e.slug).toList();
        for (var element in slugs) {
          await delete(element);
          final repository = sl<VideoGroupRepositiories>();
          final repositoryProduct = sl<VideoProductRepositiories>();
          await repository.deleteVideoSlugs(slug: element);
          await repositoryProduct.deleteVideoSlugs(slug: element);
        }
        // deleteAllNotStorage(emited: true);
      }

      await event.when(
        started: started,
        download: download,
        delete: delete,
        deleteAll: deleteAll,
        deleteAllNotStorage: deleteAllNotStorage,
      );
    });
  }
}
