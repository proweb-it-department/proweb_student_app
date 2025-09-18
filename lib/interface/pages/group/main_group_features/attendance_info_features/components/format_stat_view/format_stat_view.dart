import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class FormatStatView extends StatelessWidget {
  final int offline;
  final int online;
  final int attendedLesson;
  final GroupDetail group;
  const FormatStatView({
    super.key,
    required this.offline,
    required this.online,
    required this.attendedLesson,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return ClipRRect(
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 2,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('global_data.format_offline'.tr()),
                    Text(
                      '$offline - ${(offline / attendedLesson * 100).round()}%',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    showValueIndicator: ShowValueIndicator.never,
                    valueIndicatorColor: customColors?.primaryBg,
                    overlappingShapeStrokeColor: HexColor(
                      group.course?.color ?? '#ffffff',
                    ).withAlpha(100),
                  ),
                  child: Slider(
                    year2023: false,
                    activeColor: HexColor(group.course?.color ?? '#ffffff'),
                    inactiveColor: customColors?.primaryBg,
                    value: offline.toDouble(),
                    max: attendedLesson.toDouble(),
                    thumbColor: HexColor(group.course?.color ?? '#ffffff'),
                    label: '${(offline / attendedLesson * 100).round()}%',
                    allowedInteraction: SliderInteraction.slideOnly,
                    onChanged: (value) {},
                  ),
                ),
                Divider(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('global_data.format_online'.tr()),
                    Text(
                      '$online - ${(online / attendedLesson * 100).round()}%',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    showValueIndicator: ShowValueIndicator.never,
                    valueIndicatorColor: customColors?.primaryBg,
                    overlappingShapeStrokeColor: HexColor(
                      group.course?.color ?? '#ffffff',
                    ).withAlpha(100),
                  ),
                  child: Slider(
                    year2023: false,
                    activeColor: HexColor(group.course?.color ?? '#ffffff'),
                    inactiveColor: customColors?.primaryBg,
                    value: online.toDouble(),
                    max: attendedLesson.toDouble(),
                    thumbColor: HexColor(group.course?.color ?? '#ffffff'),
                    label: '${(online / attendedLesson * 100).round()}%',
                    allowedInteraction: SliderInteraction.slideOnly,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: 0,
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
