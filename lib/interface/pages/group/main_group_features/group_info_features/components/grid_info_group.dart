import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_info_features/components/group_info_card.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class GridInfoGroup extends StatelessWidget {
  final GroupDetail group;
  const GridInfoGroup({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();

    int countGrid = 0;
    String? time;
    int daysColumn = 1;
    int timeColumn = 1;
    if (group.graduatedDate != null) {
      countGrid++;
    }
    if (group.startDate != null) {
      countGrid++;
    }
    if (group.days != null && group.days!.isNotEmpty) {
      countGrid++;
    }
    if (group.version?.lessonDuration != null) {
      countGrid++;
    }
    if (group.studyTime != null) {
      countGrid++;
      var listTime = group.studyTime!.split(':');
      time = '${listTime[0]}:${listTime[1]}';
    }
    final chetColl = countGrid % 2 == 0 ? 1 : 2;
    if (chetColl == 2) {
      if (group.graduatedDate != null && group.startDate != null) {
        daysColumn = 2;
      } else {
        timeColumn = 2;
      }
    }
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: [
        if (group.graduatedDate != null)
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 0.8,
            child: GroupInfoCard(
              color: HexColor('#3157e0'),
              icon: Icons.event,
              subtitle: 'group.group_graduated_date'.tr(),
              title: sl<LocalData>().getDateString(
                date: DateTime.parse(group.graduatedDate!),
              ),
            ),
          ),

        if (group.startDate != null)
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 0.8,
            child: GroupInfoCard(
              color: customColor!.successFill,
              icon: Icons.event,
              subtitle: 'group.group_start_date'.tr(),
              title: sl<LocalData>().getDateString(
                date: DateTime.parse(group.startDate!),
              ),
            ),
          ),
        if (group.days != null && group.days!.isNotEmpty)
          StaggeredGridTile.count(
            mainAxisCellCount: 0.8,
            crossAxisCellCount: daysColumn,
            child: GroupInfoCard(
              color: customColor!.warningFill,
              icon: Icons.calendar_month,
              title: group.days!
                  .map((e) => 'global_data.day_$e'.tr())
                  .join(' - '),
              subtitle: 'group.gr_learn_days'.tr(),
            ),
          ),
        if (time != null)
          StaggeredGridTile.count(
            crossAxisCellCount: timeColumn,
            mainAxisCellCount: 0.8,
            child: GroupInfoCard(
              color: Colors.deepPurple,
              icon: Icons.access_time,
              subtitle: 'group.gr_stady_time'.tr(),
              title: time,
            ),
          ),
        if (group.version?.lessonDuration != null)
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 0.8,
            child: GroupInfoCard(
              color: Colors.cyan,
              icon: Icons.event,
              subtitle: 'group.qr_lesson_duration_title'.tr(),
              title: 'group.qr_lesson_duration'.tr(
                namedArgs: {
                  'duration': group.version!.lessonDuration!.toString(),
                },
              ),
            ),
          ),
      ],
    );
  }
}
