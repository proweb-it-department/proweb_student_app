import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class NoVideoLessonView extends StatelessWidget {
  final GroupLessonInfo lesson;
  final GroupDetail group;
  const NoVideoLessonView({
    super.key,
    required this.lesson,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Container(
      color: customColors?.primaryBg.withAlpha(200),
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            sl<LocalData>().blockLesson(
              lesson: (lesson.groupLesson?.lessonNumber ?? 0).toDouble(),
              blockLessonCount: group.version?.blockLessonCount?.toDouble(),
              lessonCount: group.version?.lessonCount?.toDouble(),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 22),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.videocam_off, size: 40),
                SizedBox(height: 10),
                Text(
                  'group.video_not_found'.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
