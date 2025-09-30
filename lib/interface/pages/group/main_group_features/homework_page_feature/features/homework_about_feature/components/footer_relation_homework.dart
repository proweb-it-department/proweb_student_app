import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_item/homework_info_item.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/homework_about_content.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/utils/color_helper/color_helper.dart';
import 'package:proweb_student_app/utils/color_helper/shade_colors.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:talker_logger/talker_logger.dart';

class FooterRelationHomework extends StatelessWidget {
  final HomeworkStudentRelationGroup relation;
  const FooterRelationHomework({super.key, required this.relation});

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final customColors = Theme.of(context).extension<CustomColors>();
    final groupBloc = context.read<GroupDetailBloc>();
    final color = groupBloc.state.whenOrNull(
      complited: (group, groupUser) => group.course?.color,
    );
    ShadeColors? shadeColor;
    ColorCreater? theme;
    if (color != null) {
      shadeColor = ShadeColors(color)..generate();
      theme = shadeColor.theme(
        context,
        light: ShadeNumber.shade100,
        dark: ShadeNumber.shade1100,
      );
    }
    final deadlineExpired = relation.deadlineExpired;
    return Padding(
      padding: EdgeInsetsGeometry.only(
        bottom: bottomPadding + 10,
        left: 10,
        right: 10,
      ),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        decoration: BoxDecoration(
          color: customColors?.containerColor,
          borderRadius: BorderRadius.circular(22),
        ),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (relation.score != null && relation.score! > 0)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: customColors?.borderColors ?? Colors.transparent,
                    ),
                    color: HexColor(theme?.hexString() ?? '#ffffff'),
                  ),
                  child: Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      return Opacity(
                        opacity:
                            relation.score != null && relation.score! <= index
                            ? 0.2
                            : 1,
                        child: ScoreIcon(
                          key: ValueKey('key_int_score_${index + 1}'),
                          score: index + 1,
                          child: Container(
                            width: 30,
                            height: 30,
                            color: HexColor(color ?? '#ffffff'),
                            child: Center(child: Text('${index + 1}')),
                          ),
                        ),
                      );
                    }),
                  ),
                )
              else if (relation.homeworkMaterials?.isNotEmpty == true)
                ScoreFadeShow(
                  backgroundColor: HexColor(theme?.hexString() ?? '#ffffff'),
                  color: HexColor(color ?? '#ffffff'),
                ),
              if (deadlineExpired == false)
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
            style: IconButton.styleFrom(
              backgroundColor: customColors?.primaryBg,
            ),
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
      ),
    );
  }
}
