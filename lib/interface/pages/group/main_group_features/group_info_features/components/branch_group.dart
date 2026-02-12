import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_sign_up_screen.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class BranchGroup extends StatelessWidget {
  final Cabinet room;
  const BranchGroup({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    int countTile = 1;
    if (room.branch?.name != null) {
      countTile++;
    }
    return Column(
      spacing: 2,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (room.branch?.name != null)
          ListTileBuilder(
            isStart: true,
            isEnd: false,
            builder: (shape, contentPadding, isThreeLine) {
              return ListTile(
                shape: shape,
                contentPadding: contentPadding,
                tileColor: customColor?.containerColor,
                leading: IconAvatar(icon: Icons.home_work_outlined),
                subtitle: Text('group.branch'.tr()),
                onTap: () {
                  showBottomSheetMapApps(
                    context,
                    title: room.branch!.name!,
                    latitude: double.parse(room.branch!.latitude!),
                    longitude: double.parse(room.branch!.longitude!),
                  );
                },
                title: Text(
                  room.branch!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: GoPage(
                  padding: EdgeInsets.all(8),
                  color: customColor?.primaryBg,
                  child: Icon(Icons.open_in_new, size: 16),
                ),
              );
            },
          ),

        ListTileBuilder(
          isStart: countTile == 1,
          isEnd: true,
          builder: (shape, contentPadding, isThreeLine) {
            return ListTile(
              shape: shape,
              contentPadding: contentPadding,
              tileColor: customColor?.containerColor,
              leading: IconAvatar(icon: Icons.door_front_door_outlined),
              subtitle: Text('group.room'.tr()),
              title: Text(
                room.name!,
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
