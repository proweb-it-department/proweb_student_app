import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/models/feadbacks_page_item/feadbacks_page_item.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class FeadbackListViewItem extends StatelessWidget {
  final FeadbacksPageItem item;
  final int index;
  final int length;
  const FeadbackListViewItem({
    super.key,
    required this.item,
    required this.index,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    Widget? leading;
    String title = '---';
    Color colorStatus = Colors.red;
    String status = 'feedback.feeadback_open_status'.tr();
    if (item.type != null) {
      Color color = Colors.orange.shade300;
      IconData icon = Icons.lightbulb_outline;
      title = 'feedback.Feedback_type_offer'.tr();
      if (item.type == FeadbackType.softwareError) {
        color = Colors.blue;
        icon = Icons.terminal;
        title = 'feedback.Feedback_type_software_error'.tr();
      } else if (item.type == FeadbackType.complaint) {
        color = Colors.red;
        icon = Icons.mood_bad;
        title = 'feedback.Feedback_type_complaint'.tr();
      } else if (item.type == FeadbackType.praise) {
        color = Colors.green;
        icon = Icons.volunteer_activism_rounded;
        title = 'feedback.Feedback_type_praise'.tr();
      }
      leading = CircleAvatar(
        backgroundColor: color.withAlpha(70),
        child: Icon(icon, color: color),
      );
    }
    if (item.status == FeadbackStatus.closed) {
      colorStatus = Colors.green;
      status = 'feedback.feeadback_closed_status'.tr();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        if (index == 0)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'menu.feedback'.tr(),
              style: TextStyle(
                color: customColors?.primaryTextColor,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Material(
            color: customColors?.containerColor,
            child: ListTileBuilder(
              isEnd: length == index,
              isStart: index == 0,
              builder: (shape, contentPadding, isThreeLine) {
                return ListTile(
                  onTap: () {
                    final id = item.id;
                    if (id != null) {
                      context.router.push(ViewItemFeadbackRoute(id: id));
                    }
                  },
                  selectedColor: customColors?.primaryTextColor,
                  selectedTileColor: customColors?.primaryBg,
                  selected: true,
                  shape: shape,
                  contentPadding: contentPadding,
                  isThreeLine: isThreeLine,
                  leading: leading,
                  title: Text(title),
                  minTileHeight: 30,
                  subtitle: Text(
                    sl<LocalData>().removeHtmlTags(item.text ?? ''),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: customColors?.primaryTextColor.withAlpha(170),
                    ),
                  ),
                  trailing: Row(
                    spacing: 5,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: colorStatus.withAlpha(70),
                        ),
                        child: Text(
                          status,
                          style: TextStyle(color: colorStatus),
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
