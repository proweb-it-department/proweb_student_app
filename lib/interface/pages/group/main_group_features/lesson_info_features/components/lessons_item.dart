import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/components/widgets/lesson_item_content.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class LessonsItem extends StatelessWidget {
  final GroupLessonInfo lesson;
  final GroupDetail group;
  const LessonsItem({super.key, required this.lesson, required this.group});

  @override
  Widget build(BuildContext context) {
    final customSolors = Theme.of(context).extension<CustomColors>();
    return Container(
      decoration: BoxDecoration(
        color: customSolors?.containerColor,
        image: DecorationImage(fit: BoxFit.cover, image: _bg()),
      ),
      child: LessonItemContent(lesson: lesson, group: group),
    );
  }

  _bg() {
    ImageProvider bg;
    if (lesson.banner != null) {
      bg = CachedNetworkImageProvider(lesson.banner!);
    } else {
      bg = AssetImage('assets/images/lesson1.jpg');
    }
    return bg;
  }
}
