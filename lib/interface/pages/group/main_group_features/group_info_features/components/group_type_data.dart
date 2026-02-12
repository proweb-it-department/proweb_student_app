import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class GroupTypeData extends StatelessWidget {
  final String? type;
  final String? format;
  const GroupTypeData({super.key, this.type, this.format});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    int countTile = 0;
    if (type != null) {
      countTile++;
    }
    if (format != null) {
      countTile++;
    }
    return Column(
      spacing: 2,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (type != null)
          ListTileBuilder(
            isStart: true,
            isEnd: countTile == 1,
            builder: (shape, contentPadding, isThreeLine) {
              return ListTile(
                shape: shape,
                contentPadding: contentPadding,
                tileColor: customColor?.containerColor,
                leading: IconAvatar(icon: Icons.style),
                subtitle: Text('group.gr_type_group'.tr()),
                title: Text(
                  'group.gr_type_group_$type'.tr(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          ),

        if (format != null)
          ListTileBuilder(
            isStart: countTile == 1,
            isEnd: true,
            builder: (shape, contentPadding, isThreeLine) {
              return ListTile(
                shape: shape,
                contentPadding: contentPadding,
                tileColor: customColor?.containerColor,
                leading: IconAvatar(icon: Icons.sensor_occupied),
                subtitle: Text('group.gr_format'.tr()),
                title: Text(
                  'group.gr_format_$format'.tr(),
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
