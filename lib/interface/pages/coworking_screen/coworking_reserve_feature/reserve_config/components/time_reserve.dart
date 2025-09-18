import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/provider/coworking_provider.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class TimeReserve extends StatelessWidget {
  const TimeReserve({super.key});

  @override
  Widget build(BuildContext context) {
    final provide = context.watch<CoworkingProvider>();
    final customColors = Theme.of(context).extension<CustomColors>();
    return GestureDetector(
      onTap: () async {
        final id = provide.room?.id;
        if (id == null || provide.myGroup == null) {
          if (id == null && provide.myGroup == null) {
            Fluttertoast.showToast(
              msg:
                  'coworing_mobile.First,_choose_a_branch,_office_and_group_from_which_you_will_come_to_the_coworking_space'
                      .tr(),
            );
          } else if (provide.myGroup == null) {
            Fluttertoast.showToast(
              msg:
                  'coworing_mobile.Select_the_group_from_which_you_will_come_to_the_coworking_space'
                      .tr(),
            );
          } else if (id == null) {
            Fluttertoast.showToast(
              msg: 'coworing_mobile.Choose_a_branch_and_coworking_office'.tr(),
            );
          }
          return;
        }
        final time = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
        if (time != null && context.mounted) {
          if (time.hour > 9 && time.hour < 21) {
            final hour = time.hour.toString().padLeft(2, '0');
            final minute = time.minute.toString().padLeft(2, '0');
            context.read<CoworkingProvider>().setTime('$hour:$minute');
          } else {
            Fluttertoast.showToast(
              msg:
                  'coworing_mobile.Every_day_wiCoworking_hours_are_from_09:00_to_21:00_Every_day_without_days_offthout_days_off'
                      .tr(),
            );
          }
        }
      },
      child: Container(
        color: customColors?.containerColor,
        padding: EdgeInsets.all(10),
        child: ListTile(
          leading: Icon(Icons.timer_sharp),
          title: provide.time == null
              ? Text('coworing_mobile.No_time_selected'.tr())
              : Text(provide.time ?? ''),
        ),
      ),
    );
  }
}
