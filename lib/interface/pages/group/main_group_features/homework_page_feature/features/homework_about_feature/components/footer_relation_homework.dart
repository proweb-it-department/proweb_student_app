import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class FooterRelationHomework extends StatelessWidget {
  final HomeworkStudentRelationGroup relation;
  const FooterRelationHomework({super.key, required this.relation});

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final customColors = Theme.of(context).extension<CustomColors>();

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.5,
      ),
      decoration: BoxDecoration(
        color: customColors?.containerColor,
        border: Border(
          top: BorderSide(
            color: customColors?.borderColor ?? Colors.transparent,
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
        bottom: bottomPadding + 10,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'group_homework.homework_score_to_teacher'.tr(),
            style: TextStyle(fontSize: 18),
          ),
        ),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              spacing: 5,
              children: [
                ...List.generate(5, (index) {
                  return CircleAvatar(
                    backgroundColor: relation.score == (index + 1)
                        ? customColors?.primaryTextColor
                        : customColors?.primaryBg,
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: relation.score == (index + 1)
                            ? customColors?.primaryBg
                            : customColors?.primaryTextColor,
                      ),
                    ),
                  );
                }),
              ],
            ),
            if (relation.score != null &&
                relation.score! > 0 &&
                relation.score! < 5 &&
                (relation.student?.status != StudentStatus.graduate ||
                    relation.student?.status != StudentStatus.leave))
              SizedBox(height: 5),
            if (relation.score != null &&
                relation.score! > 0 &&
                relation.score! < 5 &&
                (relation.student?.status != StudentStatus.graduate ||
                    relation.student?.status != StudentStatus.leave))
              Text(
                'group_homework.support_relation_work_text'.tr(),
                style: TextStyle(color: customColors?.additionalTwo),
              ),
          ],
        ),
        trailing: IconButton(
          style: IconButton.styleFrom(backgroundColor: customColors?.primaryBg),
          onPressed: () {
            final tabsRouter = AutoTabsRouter.of(context);
            tabsRouter.setActiveIndex(2);
          },
          icon: Icon(
            Icons.comment,
            size: 18,
            color: customColors?.primaryTextColor,
          ),
        ),
      ),
    );
  }
}
