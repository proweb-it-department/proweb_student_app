import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class CircularProgressIndicatorLesson extends StatelessWidget {
  final int complitedLesson;
  final int attendedLesson;
  final GroupDetail group;
  const CircularProgressIndicatorLesson({super.key, required this.complitedLesson, required this.attendedLesson, required this.group});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Expanded(
      child: Stack(
        children: <Widget>[
          Center(
            child: AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: CircularProgressIndicator(year2023: false, strokeWidth: 13, strokeCap: StrokeCap.round, value: attendedLesson / complitedLesson, backgroundColor: customColors?.primaryBg, color: HexColor(group.course?.color ?? '#ffffff')),
              ),
            ),
          ),
          Center(
            child: Column(
              spacing: 0,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("$attendedLesson", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                Text(
                  "attendence.lesson_out_of".tr(namedArgs: {'complitedLesson': complitedLesson.toString()}),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: customColors?.additionalTwo),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
