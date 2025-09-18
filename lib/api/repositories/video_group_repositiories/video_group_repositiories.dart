import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class VideoGroupRepositiories {
  final db = sl<AppDatabase>();

  Future<List<GroupsModelData>> selectAllGroups() async {
    final groups =
        await (db.select(db.groupsModel)..orderBy([
              (tbl) {
                return OrderingTerm(
                  expression: tbl.groupId,
                  mode: OrderingMode.desc,
                );
              },
            ]))
            .get();
    return groups;
  }

  Future<List<GroupLessonModelData>> selectLessonsGroup(int groupId) async {
    final response = db.select(db.groupLessonModel)
      ..where((tbl) => tbl.groupId.equals(groupId))
      ..orderBy([
        (tbl) {
          return OrderingTerm(
            expression: tbl.lessonNumber,
            mode: OrderingMode.desc,
          );
        },
      ]);
    final lesson = await response.get();
    return lesson;
  }

  Future<GroupLessonModelData?> seinglLessonGroup(int lessonId) async {
    final response = db.select(db.groupLessonModel)
      ..where((tbl) => tbl.lessonId.equals(lessonId));
    final lesson = await response.getSingleOrNull();
    return lesson;
  }

  Future<List<GroupLessonVideoModelData>> selectVideo(int lessonId) async {
    final response = db.select(db.groupLessonVideoModel)
      ..where((tbl) {
        return tbl.lessonId.equals(lessonId);
      });
    final videos = await response.get();

    return videos;
  }

  Future<GroupsModelData?> insertGroup({required GroupsModelData group}) async {
    final response = db.select(db.groupsModel)
      ..where((tbl) {
        return tbl.groupId.equals(group.groupId);
      });
    final groupData = await response.getSingleOrNull();
    if (groupData != null) return groupData;
    final banner = group.banner;
    final directory = await getApplicationDocumentsDirectory();
    String localPath = '${directory.path}/group_banner';
    final pathBanner = '$localPath/${group.groupId}.webp';
    final file = File(pathBanner);
    if ((!(await file.exists())) && banner.startsWith('http')) {
      final dio = sl<Dio>();
      await dio.download(banner, pathBanner);
      group = group.copyWith(banner: pathBanner);
    } else if (await file.exists()) {
      group = group.copyWith(banner: pathBanner);
    }
    await db
        .into(db.groupsModel)
        .insert(group, mode: InsertMode.insertOrReplace);
    final newGroupData = await response.getSingleOrNull();
    return newGroupData;
  }

  Future<GroupLessonModelData?> insertLesson({
    required GroupLessonModelData lesson,
  }) async {
    final response = db.select(db.groupLessonModel)
      ..where((tbl) {
        return tbl.lessonId.equals(lesson.lessonId);
      });
    final lessonData = await response.getSingleOrNull();
    if (lessonData != null) return lessonData;
    await db
        .into(db.groupLessonModel)
        .insert(lesson, mode: InsertMode.insertOrReplace);
    final newLessonData = await response.getSingleOrNull();
    return newLessonData;
  }

  Future<void> insertVideo({required GroupLessonVideoModelData video}) async {
    await db.managers.groupLessonVideoModel.create(
      (row) => row(lessonId: video.lessonId, slug: video.slug),
    );
    return;
  }

  Future<LoadState> deleteVideo({required int videoId}) async {
    try {
      final response = db.select(db.groupLessonVideoModel)
        ..where((tbl) {
          return tbl.id.equals(videoId);
        });
      final videoData = await response.getSingleOrNull();
      if (videoData == null) return LoadState.notFound;
      await (db.delete(
        db.groupLessonVideoModel,
      )..where((tbl) => tbl.id.equals(videoData.id))).go();
      return LoadState.complited;
    } catch (_) {
      return LoadState.errorLoading;
    }
  }

  Future<LoadState> deleteVideoSlugs({required String slug}) async {
    try {
      final response = db.select(db.groupLessonVideoModel)
        ..where((tbl) {
          return tbl.slug.equals(slug);
        });
      final videoData = await response.get();
      if (videoData.isEmpty) return LoadState.notFound;
      await (db.delete(
        db.groupLessonVideoModel,
      )..where((tbl) => tbl.slug.equals(slug))).go();
      return LoadState.complited;
    } catch (_) {
      return LoadState.errorLoading;
    }
  }
}
