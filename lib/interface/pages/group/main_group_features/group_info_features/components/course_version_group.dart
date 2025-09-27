import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/course_version/course_version_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/course_version_modal/course_version_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class CourseVersionGroup extends StatelessWidget {
  final int versionId;
  const CourseVersionGroup({super.key, required this.versionId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseVersionBloc, CourseVersionState>(
      bloc: context.read<CourseVersionBloc>()
        ..add(CourseVersionEvent.started(versionId: versionId)),
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          load: () => Center(child: Md3CirculeIndicator()),
          error: () {
            return ErrorLoad(
              action: FilledButton(
                onPressed: () {
                  final courseVersion = context.read<CourseVersionBloc>();
                  courseVersion.add(
                    CourseVersionEvent.started(versionId: versionId),
                  );
                },
                child: Text('global_data.try_again'.tr()),
              ),
            );
          },
          complite: (modules) {
            if (modules.isEmpty) {
              return SizedBox();
            }
            return CourseModules(modules: modules);
          },
        );
      },
    );
  }
}

class CourseModules extends StatelessWidget {
  final List<CourseVersionModel> modules;
  const CourseModules({super.key, required this.modules});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Divider(
          endIndent: 0,
          height: 1,
          indent: 0,
          thickness: 0,
          color: customColors?.borderColors,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            'group.gr_about_cour'.tr(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ...List.generate(modules.length, (index) {
          final item = modules[index];
          if (item.description != null && item.name != null) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: index < (modules.length - 1)
                      ? BorderSide(
                          color:
                              customColors?.borderColors ?? Colors.transparent,
                        )
                      : BorderSide.none,
                ),
              ),
              child: ExpansionTile(
                title: Text(item.name!),
                children: [
                  Divider(height: 1, indent: 0, endIndent: 0, thickness: 0),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      sl<LocalData>().removeHtmlTags(item.description!),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        }),
      ],
    );
  }
}
