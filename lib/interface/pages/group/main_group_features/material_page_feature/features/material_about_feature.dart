import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/file_work.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/link_work.dart';
import 'package:proweb_student_app/models/material_student_relation/material_student_relation.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class MaterialAboutFeature extends StatelessWidget {
  final MaterialStudentRelation relation;
  const MaterialAboutFeature({super.key, required this.relation});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    return ListView(
      padding: EdgeInsets.only(
        bottom: bottomPadding + 10,
        left: 10,
        right: 10,
        top: 10,
      ),
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: customColors?.containerColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: customColors?.borderColor ?? Colors.black,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'group_homework.material_about_max'.tr(),
                style: TextStyle(
                  color: customColors?.primaryTextColor.withAlpha(150),
                ),
              ),
              SizedBox(height: 20),
              Text(relation.name ?? '', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              if (relation.description != null)
                Text(
                  sl<LocalData>().removeHtmlTags(relation.description!),
                  style: TextStyle(
                    color: customColors?.primaryTextColor.withAlpha(150),
                  ),
                ),
              SizedBox(height: 10),
              Text(
                sl<LocalData>().getDateString(
                  date: DateTime.parse(relation.createdAt!),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        LinksWork(attachFile: relation.attachedData ?? []),
        SizedBox(height: 15),
        FileWork(attachFile: relation.attachedData ?? []),
      ],
    );
  }
}
