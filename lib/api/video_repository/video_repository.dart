import 'dart:io';

import 'package:drift/drift.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/server/server.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:talker_logger/talker_logger.dart';

class VideoRepository {
  final db = sl<AppDatabase>();

  Future<void> init() async {}

  Future<List<VideoSavedData>> getAllVideos() async {
    List<VideoSavedData> videos = await db.select(db.videoSaved).get();

    videos = videos.map((e) {
      if (e.preview != null) {
        return e.copyWith(
          preview: Value(
            'http://${InternetAddress.loopbackIPv4.host}:$PORT/preview/${e.slug}/',
          ),
        );
      }
      return e;
    }).toList();
    videos.sort((a, b) => b.createdAt - a.createdAt);
    return videos;
  }

  Future<void> saveVideo(VideoSavedData video) async {
    await db.into(db.videoSaved).insert(video, mode: InsertMode.insert);
  }

  Future<VideoSavedData?> getVideoBySlug(String slug) async {
    VideoSavedData? video = await (db.select(
      db.videoSaved,
    )..where((tbl) => tbl.slug.equals(slug))).getSingleOrNull();
    if (video == null) return null;
    TalkerLogger().log(video);
    if (video.preview != null) {
      video = video.copyWith(
        preview: Value(
          'http://${InternetAddress.loopbackIPv4.host}:$PORT/preview/${video.slug}/',
        ),
      );
    }
    return video;
  }

  Future<List<VideoSavedData>> getVideosBySlug(List<String> slugs) async {
    List<VideoSavedData> videos = await (db.select(
      db.videoSaved,
    )..where((tbl) => tbl.slug.isIn(slugs))).get();
    videos = videos.map((e) {
      if (e.preview != null) {
        return e.copyWith(
          preview: Value(
            'http://${InternetAddress.loopbackIPv4.host}:$PORT/preview/${e.slug}/',
          ),
        );
      }
      return e;
    }).toList();

    return videos;
  }

  Future<VideoSavedData?> getVideoBySlugPreview(String slug) async {
    return await (db.select(
      db.videoSaved,
    )..where((tbl) => tbl.slug.equals(slug))).getSingleOrNull();
  }

  Future<void> deleteVideoBySlug(String slug) async {
    await (db.delete(
      db.videoSaved,
    )..where((tbl) => tbl.slug.equals(slug))).go();
  }
}
