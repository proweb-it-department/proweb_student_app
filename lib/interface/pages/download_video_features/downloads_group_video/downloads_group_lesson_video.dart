import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/downloads_group_lesson_videos/downloads_group_lesson_videos_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class DownloadsGroupLessonVideoScreen extends StatelessWidget {
  final int groupId;
  final int? lessonCount;
  final int? blockLessonCount;
  const DownloadsGroupLessonVideoScreen({
    super.key,
    required this.groupId,
    this.lessonCount,
    this.blockLessonCount,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DownloadsGroupLessonVideosBloc()
            ..add(DownloadsGroupLessonVideosEvent.started(groupId: groupId)),
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: MainAppBar(isBorder: false),
          body: DownloadsGroupLessonVideoBody(
            blockLessonCount: blockLessonCount,
            lessonCount: lessonCount,
          ),
        ),
      ),
    );
  }
}

class DownloadsGroupLessonVideoBody extends StatelessWidget {
  final int? lessonCount;
  final int? blockLessonCount;
  const DownloadsGroupLessonVideoBody({
    super.key,
    this.lessonCount,
    this.blockLessonCount,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<
      DownloadsGroupLessonVideosBloc,
      DownloadsGroupLessonVideosState
    >(
      builder: (context, state) {
        return state.when(
          load: () {
            return Center(child: CircularProgressIndicator());
          },
          error: () {
            return Center(child: ErrorLoad());
          },
          notFound: () {
            return Center(
              child: NoData(
                text: 'downloads.There_are_no_downloaded_videos_in_the_lesson'
                    .tr(),
                icon: Icons.videocam_off,
              ),
            );
          },
          comlited: (lessons) {
            return ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
              child: Container(
                color: customColors?.containerColor,
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: lessons.length,
                  itemBuilder: (context, index) {
                    final lesson = lessons.elementAt(index);
                    return DownloadVideoLesson(
                      lesson: lesson,
                      index: index,
                      length: lessons.length - 1,
                      blockLessonCount: blockLessonCount,
                      lessonCount: lessonCount,
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class DownloadVideoLesson extends StatelessWidget {
  final GroupLessonModelData lesson;
  final int index;
  final int length;
  final int? lessonCount;
  final int? blockLessonCount;
  const DownloadVideoLesson({
    super.key,
    required this.lesson,
    this.lessonCount,
    this.blockLessonCount,
    required this.index,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    String? blockLesson;
    if (lessonCount != null && blockLessonCount != null) {
      blockLesson = sl<LocalData>().blockLesson(
        lesson: lesson.lessonNumber.toDouble(),
        blockLessonCount: blockLessonCount!.toDouble(),
        lessonCount: lessonCount!.toDouble(),
      );
    }
    return Padding(
      padding: EdgeInsetsGeometry.only(bottom: 2),
      child: ListTileBuilder(
        isStart: index == 0,
        isEnd: index == length,
        builder: (shape, contentPadding, isThreeLine) {
          return Material(
            color: Colors.transparent,
            child: ListTile(
              onTap: () {
                context.router.push(
                  DownloadsGroupVideosRoute(lessonId: lesson.lessonId),
                );
              },
              selected: true,
              minTileHeight: 30,
              selectedColor: customColors?.primaryTextColor,
              selectedTileColor: customColors?.primaryBg,
              shape: shape,
              contentPadding: contentPadding,
              isThreeLine: isThreeLine,
              leading: IconAvatar(icon: Icons.school_rounded),
              title: Text('${blockLesson ?? lesson.lessonNumber}'),
              subtitle: Text(lesson.lessonName ?? '- - -'),
              trailing: Icon(Icons.chevron_right),
            ),
          );
        },
      ),
    );
  }
}
