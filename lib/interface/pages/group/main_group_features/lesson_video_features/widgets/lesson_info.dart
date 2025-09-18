import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/repositories/video_group_repositiories/video_group_repositiories.dart';
import 'package:proweb_student_app/bloc/download_video/download_video_bloc.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/models/video_sendet_model/video_sendet_model.dart';
import 'package:proweb_student_app/utils/download_manager/video_download_manager.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:talker_logger/talker_logger.dart';

class LessonContent extends StatelessWidget {
  final GroupLessonInfo lesson;
  final MyGroupsItem groupUser;
  const LessonContent({
    super.key,
    required this.lesson,
    required this.groupUser,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final List<VideoModel> videosModels = [];
    final videos = lesson.groupLesson?.videos;
    if (videos != null) {
      for (var element in videos) {
        if (element.video != null) {
          videosModels.add(element.video!);
        }
      }
    }
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                useSafeArea: true,
                showDragHandle: true,
                builder: (context) {
                  return BottomSheetLesson(
                    lesson: lesson,
                    groupUser: groupUser,
                  );
                },
              );
            },
            tileColor: customColors?.containerColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text(
              sl<LocalData>().blockLesson(
                lesson: (lesson.groupLesson?.lessonNumber ?? 0).toDouble(),
                blockLessonCount: groupUser.group?.version?.blockLessonCount
                    ?.toDouble(),
                lessonCount: groupUser.group?.version?.lessonCount?.toDouble(),
              ),
            ),
            subtitle: lesson.groupLesson?.datetime != null
                ? Text(
                    sl<LocalData>().getDateString(
                      date: DateTime.parse(lesson.groupLesson!.datetime!),
                    ),
                  )
                : null,
            trailing: IconDowloaderVideosView(videos: videosModels),
          ),
        ],
      ),
    );
  }
}

class IconDowloaderVideosView extends StatelessWidget {
  final List<VideoModel> videos;
  const IconDowloaderVideosView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return videos.isEmpty
        ? SizedBox()
        : BlocBuilder<DownloadVideoBloc, DownloadVideoState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  return SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(strokeWidth: 1),
                  );
                },
                download: (download, downloaders) {
                  final List<VideoModel> downloads = [];
                  final find = videos.firstWhere((element) {
                    return download != null && element.slug == download.slug;
                  }, orElse: () => VideoModel());

                  if (download != null) {
                    if (find.slug != null) {
                      final type = download.progressType;
                      if (type == ProgressTypeDownloadVideo.segements) {
                        final progress = (download.progress / 100);
                        return SizedBox(
                          width: 25,
                          height: 25,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                            value: progress < 0.05 ? null : progress,
                          ),
                        );
                      } else {
                        return SizedBox(
                          width: 25,
                          height: 25,
                          child: CircularProgressIndicator(strokeWidth: 1),
                        );
                      }
                    }
                  } else {
                    for (var element in videos) {
                      final slug = element.slug;
                      if (slug != null) {
                        final find = downloaders.firstWhere(
                          (element) {
                            return element.slug == slug;
                          },
                          orElse: () => VideoSavedData(
                            slug: '',
                            title: '',
                            playlist: '',
                            createdAt: 0,
                          ),
                        );
                        if (find.slug.trim().isNotEmpty) {
                          downloads.add(element);
                        }
                      }
                    }
                    if (downloads.length == videos.length) {
                      return Icon(Icons.download_done);
                    } else if (downloads.length < videos.length) {
                      return Icon(Icons.download);
                    }
                  }
                  return SizedBox();
                },
              );
            },
          );
  }
}

class BottomSheetLesson extends StatelessWidget {
  final GroupLessonInfo lesson;
  final MyGroupsItem groupUser;
  const BottomSheetLesson({
    super.key,
    required this.lesson,
    required this.groupUser,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).viewPadding.bottom;
    return ListView(
      shrinkWrap: true,
      children: [
        ...List.generate(lesson.groupLesson?.videos?.length ?? 0, (index) {
          VideoModel? video = lesson.groupLesson?.videos?[index].video;
          if (video == null) return SizedBox();
          String? preview = video.preview;
          String? title = video.title;
          int? size = video.size;
          String? playlist = video.playlist;
          String? slug = video.slug;

          return ListTile(
            leading: preview != null
                ? SizedBox(
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: CachedNetworkImage(imageUrl: preview),
                      ),
                    ),
                  )
                : null,
            title: title != null
                ? Text(title, maxLines: 1, overflow: TextOverflow.ellipsis)
                : null,
            subtitle: size != null
                ? Text(
                    sl<LocalData>().formatSize(size),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                : null,
            trailing: BlocBuilder<DownloadVideoBloc, DownloadVideoState>(
              builder: (context, state) {
                return state.when(
                  initial: () => SizedBox(),
                  download: (download, downloaders) {
                    final find = downloaders.firstWhere(
                      (element) => element.slug == slug,
                      orElse: () => VideoSavedData(
                        playlist: '',
                        slug: '0',
                        title: '',
                        createdAt: 0,
                      ),
                    );
                    if (download == null && find.slug == '0') {
                      return IconButton(
                        onPressed: () {
                          if (playlist == null) return;
                          if (slug == null) return;
                          sl<DownloadManager>().downloadM3u8(
                            VideoSendetModel(
                              playlist: playlist,
                              progress: 0,
                              slug: slug,
                              progressType: ProgressTypeDownloadVideo.key,
                              preview: preview,
                              title: title,
                              duration: video.durations,
                              size: size,
                            ),
                            callback: () async {
                              await createVideoRepository(slug);
                            },
                          );
                        },
                        icon: Icon(Icons.download),
                      );
                    } else if (find.slug != '0') {
                      return Icon(Icons.download_done);
                    } else if (download != null && download.slug == slug) {
                      final type = download.progressType;
                      if (type == ProgressTypeDownloadVideo.segements) {
                        final progress = (download.progress / 100);
                        return SizedBox(
                          width: 25,
                          height: 25,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                            value: progress < 0.05 ? null : progress,
                          ),
                        );
                      } else {
                        return SizedBox(
                          width: 25,
                          height: 25,
                          child: CircularProgressIndicator(strokeWidth: 1),
                        );
                      }
                    } else {
                      return SizedBox();
                    }
                  },
                );
              },
            ),
          );
        }),
        SizedBox(height: height + 5),
      ],
    );
  }

  Future<void> createVideoRepository(String? slug) async {
    try {
      if (slug == null) return;
      final repository = sl<VideoGroupRepositiories>();
      final groupId = groupUser.group?.id;
      final courseName = groupUser.group?.course?.name;
      final banner = groupUser.group?.course?.posters?.firstOrNull?.image;
      final lessonCount = groupUser.group?.version?.lessonCount;
      final blockLessonCount = groupUser.group?.version?.blockLessonCount;
      final lessonId = lesson.relationId;
      final lessonNumber = lesson.groupLesson?.lessonNumber;
      String? lessonName = lesson.groupLesson?.handbook?.name;
      lessonName ??= lesson.groupLesson?.videos?.firstOrNull?.video?.title;
      if (lessonId == null) return;
      if (lessonNumber == null) return;
      if (groupId == null) return;
      if (courseName == null) return;
      if (banner == null) return;
      await repository.insertGroup(
        group: GroupsModelData(
          groupId: groupId,
          courseName: courseName,
          banner: banner,
          lessonCount: lessonCount,
          blockLessonCount: blockLessonCount,
        ),
      );

      await repository.insertLesson(
        lesson: GroupLessonModelData(
          lessonId: lessonId,
          groupId: groupId,
          lessonNumber: lessonNumber,
          lessonName: lessonName,
        ),
      );

      await repository.insertVideo(
        video: GroupLessonVideoModelData(id: 0, lessonId: lessonId, slug: slug),
      );
    } catch (e) {
      TalkerLogger().error(e);
    }
  }
}
