import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class AttendanceLessonItem extends StatelessWidget {
  final GroupLessonInfo lesson;
  final Version? version;
  const AttendanceLessonItem({super.key, required this.lesson, this.version});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bool? visited = lesson.visited;
    final String? visitedType = lesson.visitedType;
    final String? dateTile = lesson.groupLesson?.datetime;
    final int score = lesson.score ?? 0;
    return Container(
      key: ValueKey<int>(lesson.relationId ?? 0),
      margin: EdgeInsets.only(bottom: 15, left: 10, right: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: customColors?.containerColor,
        border: Border.all(color: customColors?.borderColor ?? Colors.white, width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: visited == null || visited == false
                  ? Colors.red.shade300
                  : visitedType == 'offline'
                  ? Colors.blue.shade200
                  : Colors.green.shade200,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (dateTile != null)
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(
                      sl<LocalData>().getDateString(date: DateTime.parse(dateTile)),
                      style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                SizedBox(height: 40),
                Text(
                  sl<LocalData>().blockLesson(lesson: (lesson.groupLesson?.lessonNumber ?? 0).toDouble(), blockLessonCount: (version?.blockLessonCount ?? 0).toDouble(), lessonCount: (version?.lessonCount ?? 0).toDouble()),
                  style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  spacing: 15,
                  children: [
                    Expanded(
                      child: Text('attendence.att_visited_type_${visitedType ?? 'null'}'.tr(), style: TextStyle(fontSize: 30, color: Colors.black, height: 1), maxLines: 2, softWrap: true),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: visitedType != null
                          ? visitedType == 'offline'
                                ? Icon(Icons.apartment, color: Colors.white)
                                : Icon(Icons.language, color: Colors.white)
                          : Icon(Icons.close, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text('attendence.i_like_teaching'.tr()),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(5, (index) {
                  if ((index + 1) <= score) {
                    return Icon(Icons.star, color: customColors?.warningFill, size: 30);
                  }
                  return Icon(Icons.star_border, size: 30);
                }),
              ),
              Row(spacing: 5, children: [if (score <= 3) Lottie.asset('assets/lottie/Angry.json', width: 40, height: 40) else if (score == 4) Lottie.asset('assets/lottie/Slightly-frowning.json', width: 40, height: 40) else Lottie.asset('assets/lottie/Slightly-happy.json', width: 40, height: 40)]),
            ],
          ),
        ],
      ),
    );
  }
}
