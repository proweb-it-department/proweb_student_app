import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart';
import 'package:proweb_student_app/bloc/lessons_group/lessons_group_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/current_lesson.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/lessons_list.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class LessonGroupInfoScreen extends StatelessWidget {
  final int groupId;
  const LessonGroupInfoScreen({
    super.key,
    @PathParam.inherit('id') required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    final groupDetail = context.read<GroupDetailBloc>();

    return groupDetail.state.when(
      initial: () => Center(child: CircularProgressIndicator()),
      loadGroupDetail: () => Center(child: CircularProgressIndicator()),
      errorGroupDetail: () => Center(child: ErrorLoad()),
      complited: (group, groupUser) {
        return GroupLessonLoadContent(
          group: group,
          groupUser: groupUser,
          groupId: groupId,
        );
      },
    );
  }
}

class GroupLessonLoadContent extends StatelessWidget {
  final GroupDetail group;
  final MyGroupsItem groupUser;
  final int groupId;
  const GroupLessonLoadContent({
    super.key,
    required this.group,
    required this.groupUser,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LessonsGroupBloc()
        ..add(
          LessonsGroupEvent.started(
            groupId: groupId,
            posters: group.course?.posters,
            version: group.version,
          ),
        ),
      child: BlocBuilder<LessonsGroupBloc, LessonsGroupState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(child: CircularProgressIndicator()),
            load: () => Center(child: CircularProgressIndicator()),
            error: () => Center(child: ErrorLoad()),
            complited: (lessons, currentLesson) {
              return GroupLessonContent(
                lessons: lessons,
                currentLesson: currentLesson,
                group: group,
              );
            },
          );
        },
      ),
    );
  }
}

class GroupLessonContent extends StatelessWidget {
  final List<GroupLessonInfo> lessons;
  final GroupLessonInfo? currentLesson;
  final GroupDetail group;
  const GroupLessonContent({
    super.key,
    required this.lessons,
    this.currentLesson,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return RefreshIndicator(
      color: customColors?.primaryTextColor,
      backgroundColor: customColors?.containerColor,
      onRefresh: () async {
        final groupId = group.id;
        if (groupId != null) {
          final bloc = context.read<LessonsGroupBloc>();
          bloc.add(
            LessonsGroupEvent.started(
              groupId: groupId,
              version: group.version,
              posters: group.course?.posters,
            ),
          );
          await bloc.stream.first;
        }
      },
      child: Stack(
        children: [
          ..._bg(context),
          ListView(
            children: [
              if (currentLesson != null)
                CurrentLessonHeader(
                  currentLesson: currentLesson!,
                  version: group.version,
                  group: group,
                ),
              if (currentLesson == null) SizedBox(height: 10),
              if (lessons.isNotEmpty)
                LessonsList(
                  lessons: lessons,
                  currentLesson: currentLesson,
                  group: group,
                ),
            ],
          ),
        ],
      ),
    );
  }

  _bg(BuildContext context) {
    final customSolors = Theme.of(context).extension<CustomColors>();
    final height = MediaQuery.of(context).size.height;
    Widget bg;
    if (currentLesson?.banner != null) {
      bg = CachedNetworkImage(
        imageUrl: currentLesson!.banner!,
        fit: BoxFit.cover,
        alignment: Alignment.topLeft,
        height: height * 0.5,
      );
    } else {
      if (group.course?.posters != null &&
          group.course?.posters?.firstOrNull != null) {
        bg = CachedNetworkImage(
          imageUrl: group.course!.posters!.first.image!,
          fit: BoxFit.cover,
          alignment: Alignment.topLeft,
        );
      } else {
        bg = Image.asset(
          'assets/images/lesson1.jpg',
          fit: BoxFit.cover,
          alignment: Alignment.topLeft,
        );
      }
    }
    return [
      Positioned(child: bg),
      Positioned.fill(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                (customSolors?.primaryBg ?? Colors.black),
                (customSolors?.primaryBg.withAlpha(150) ??
                    Colors.black.withAlpha(150)),
              ],
              stops: [0.5, 1],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ),
    ];
  }
}
