import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/downloads_groups_videos/downloads_groups_videos_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class DownloadsGroupVideo extends StatelessWidget {
  const DownloadsGroupVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return DownloadsGroupsVideosBloc()
          ..add(DownloadsGroupsVideosEvent.started());
      },
      child: DownloadsGroupVideoBody(),
    );
  }
}

class DownloadsGroupVideoBody extends StatelessWidget {
  const DownloadsGroupVideoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadsGroupsVideosBloc, DownloadsGroupsVideosState>(
      builder: (context, state) {
        return state.when(
          load: () {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Center(child: Md3CirculeIndicator()),
            );
          },
          error: () {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Center(child: ErrorLoad()),
            );
          },
          notFound: () {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: NoData(
                  text: 'downloads.No_downloaded_videos_in_groups'.tr(),
                  icon: Icons.videocam_off,
                ),
              ),
            );
          },
          complited: (groups) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                spacing: 15,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(groups.length, (index) {
                  final group = groups.elementAt(index);
                  return GroupDownloadVideo(group: group);
                }),
              ),
            );
          },
        );
      },
    );
  }
}

class GroupDownloadVideo extends StatelessWidget {
  final GroupsModelData group;
  const GroupDownloadVideo({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    final file = File(group.banner);
    final customColors = Theme.of(context).extension<CustomColors>();
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            context.router.push(
              DownloadsGroupLessonVideoRoute(
                groupId: group.groupId,
                lessonCount: group.lessonCount,
                blockLessonCount: group.blockLessonCount,
              ),
            );
          },
          borderRadius: BorderRadius.circular(16),
          child: Ink(
            decoration: BoxDecoration(
              image: file.existsSync()
                  ? DecorationImage(image: FileImage(file), fit: BoxFit.cover)
                  : null,
              color: customColors?.containerColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 0, bottom: 8),
                  child: Text(
                    'education.group_id'.tr(
                      namedArgs: {'id': group.groupId.toString()},
                    ),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      shadows: [
                        Shadow(
                          blurRadius: 2,
                          color: Colors.black,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 0, bottom: 8),
                  child: Text(
                    group.courseName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 2,
                          color: Colors.black,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
