import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/provider/coworking_provider.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_screen.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class DateReserve extends StatelessWidget {
  final List<DayModelCoworking> dates;
  const DateReserve({super.key, required this.dates});

  @override
  Widget build(BuildContext context) {
    final provide = context.watch<CoworkingProvider>();
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      color: customColors?.containerColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
            child: SegmentedButton<String>(
              style: SegmentedButton.styleFrom(
                iconColor: customColors?.primaryTextColor,
                backgroundColor: customColors?.containerColor,
                selectedBackgroundColor: customColors?.primaryBg,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                    color: customColors?.borderColor ?? Colors.transparent,
                  ),
                ),
                padding: EdgeInsets.all(1),
              ),
              segments: dates.map((e) {
                final day = DateTime.parse(
                  e.date.split('.').reversed.join('-'),
                ).day.toString().padLeft(2, '0');
                return ButtonSegment<String>(
                  value: e.date,
                  tooltip: !e.isActive
                      ? 'coworing_mobile.Date_blocked'.tr()
                      : null,
                  label: Text(
                    day,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: customColors?.primaryTextColor.withAlpha(
                        e.isActive ? 255 : 80,
                      ),
                    ),
                  ),
                );
              }).toList(),
              selected: {provide.date},
              onSelectionChanged: (p0) {
                final find = dates.firstWhere(
                  (element) => element.date == p0.first,
                );
                if (find.isActive) {
                  context.read<CoworkingProvider>().setDate(p0.first);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
