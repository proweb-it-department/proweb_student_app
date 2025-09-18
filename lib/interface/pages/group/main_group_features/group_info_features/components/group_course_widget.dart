import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';

class GroupCourseWidget extends StatelessWidget {
  final String color;
  final String icon;
  final String name;
  final int groupId;
  const GroupCourseWidget({
    super.key,
    required this.color,
    required this.icon,
    required this.name,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor(color).withAlpha(20),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: HexColor(color).withAlpha(150)),
      ),
      child: ListTile(
        leading: CourseAvatar(icon: icon, color: HexColor(color)),
        title: Text(name, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: Text(
          'education.group_id'.tr(namedArgs: {'id': groupId.toString()}),
        ),
      ),
    );
  }
}
