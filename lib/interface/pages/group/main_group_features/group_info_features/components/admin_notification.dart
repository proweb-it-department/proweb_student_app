import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class AdminNotification extends StatelessWidget {
  final Notifications notification;
  const AdminNotification({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      decoration: BoxDecoration(
        color: customColors?.errorFill.withAlpha(20),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: customColors != null
              ? customColors.errorFill.withAlpha(150)
              : Colors.red.withAlpha(150),
        ),
      ),
      child: ListTile(
        leading: Icon(Icons.front_hand, color: customColors?.errorFill),
        title: Text('group.noti_admin_title'.tr()),
        subtitle: Text('group.noti_admin_subtitle'.tr()),
      ),
    );
  }
}
