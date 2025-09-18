import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class CurrentLessonHeader extends StatelessWidget {
  final GroupLessonInfo currentLesson;
  final Version? version;
  final GroupDetail group;

  const CurrentLessonHeader({
    super.key,
    this.version,
    required this.currentLesson,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: _currentLesson(context),
      ),
    );
  }

  List<Widget> _currentLesson(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return [
      Text(
        sl<LocalData>().blockLesson(
          lesson: (currentLesson.groupLesson!.lessonNumber!).toDouble(),
          blockLessonCount: version?.blockLessonCount?.toDouble(),
          lessonCount: version?.lessonCount?.toDouble(),
        ),
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 7),
      if (currentLesson.groupLesson?.datetime != null)
        Text(
          sl<LocalData>().getDateString(
            date: DateTime.parse(currentLesson.groupLesson!.datetime!),
          ),
          style: TextStyle(fontSize: 16),
        ),
      if (currentLesson.groupLesson?.datetime != null) SizedBox(height: 20),
      if (currentLesson.groupLesson?.videos?.firstOrNull?.video?.title != null)
        Text(
          currentLesson.groupLesson!.videos!.first.video!.title!,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      if (currentLesson.groupLesson?.videos?.firstOrNull?.video?.title != null)
        SizedBox(height: 40),
      Text('group.my_rate_lesson'.tr(), style: TextStyle(fontSize: 16)),
      SizedBox(height: 10),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(5, (index) {
          return Padding(
            padding: EdgeInsets.all(5),
            child:
                currentLesson.score != null &&
                    currentLesson.score! >= (index + 1)
                ? Icon(Icons.star, color: customColors?.warningFill, size: 30)
                : Icon(Icons.star_border, size: 30),
          );
        }),
      ),
      SizedBox(height: 10),
      if (currentLesson.groupLesson?.id != null)
        FilledButton.icon(
          onPressed: () {
            context.router.push(
              LessonVideoRoute(
                lessonId: currentLesson.groupLesson!.id!,
                groupId: group.id!,
              ),
            );
          },
          icon: Icon(Icons.logout),
          label: Text(
            'group.go_to_lesson'.tr(),
            style: TextStyle(color: customColors?.primaryTextColor),
          ),
        ),
    ];
  }
}
