import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class GroupTypeData extends StatelessWidget {
  final String? type;
  final String? format;
  const GroupTypeData({super.key, this.type, this.format});

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
          if (type != null)
            ListTile(
              leading: Icon(Icons.style),
              subtitle: Text('group.gr_type_group'.tr()),
              title: Text(
                'group.gr_type_group_$type'.tr(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          if (type != null)
            Divider(endIndent: 0, indent: 0, thickness: 0, height: 1),
          if (type != null)
            ListTile(
              leading: Icon(Icons.sensor_occupied),
              subtitle: Text('group.gr_format'.tr()),
              title: Text(
                'group.gr_format_$format'.tr(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
