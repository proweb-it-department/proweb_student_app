import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
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
    int countUsers = 0;
    if (teacher?.user != null) {
      countUsers++;
    }
    if (admin?.user != null) {
      countUsers++;
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 2,
      children: [
        if (teacher?.user != null)
          ListTileBuilder(
            isStart: true,
            isEnd: countUsers == 1,
            builder: (shape, contentPadding, isThreeLine) {
              return ListTile(
                shape: shape,
                contentPadding: contentPadding,
                tileColor: customColor?.containerColor,
                leading: Avatar(user: teacher!.user!),
                title: Text('education.course_teacher'.tr()),
                subtitle: Text(
                  sl<LocalData>().nameUser(teacher!.user!),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          ),
        if (admin?.user != null)
          ListTileBuilder(
            isStart: countUsers == 1,
            isEnd: true,
            builder: (shape, contentPadding, isThreeLine) {
              return ListTile(
                shape: shape,
                contentPadding: contentPadding,
                tileColor: customColor?.containerColor,
                leading: Avatar(user: admin!.user!),
                title: Text('education.admin_title'.tr()),
                subtitle: Text(
                  sl<LocalData>().nameUser(admin!.user!),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          ),
      ],
    );
  }
}
