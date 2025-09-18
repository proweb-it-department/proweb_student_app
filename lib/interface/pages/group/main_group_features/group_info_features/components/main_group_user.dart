import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class MainGroupUser extends StatelessWidget {
  final MainUser? admin;
  final MainUser? teacher;
  const MainGroupUser({super.key, this.admin, this.teacher});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    return Container(
      decoration: BoxDecoration(
        color: customColor?.containerColor,
        border: Border.all(color: customColor!.borderColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (teacher?.user != null)
            ListTile(
              leading: Avatar(user: teacher!.user!),
              title: Text('education.course_teacher'.tr()),
              subtitle: Text(
                sl<LocalData>().nameUser(teacher!.user!),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          if (teacher?.user != null && admin?.user != null)
            Divider(endIndent: 0, indent: 0, thickness: 0, height: 1),
          if (admin?.user != null)
            ListTile(
              leading: Avatar(user: admin!.user!),
              title: Text('education.admin_title'.tr()),
              subtitle: Text(
                sl<LocalData>().nameUser(admin!.user!),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
