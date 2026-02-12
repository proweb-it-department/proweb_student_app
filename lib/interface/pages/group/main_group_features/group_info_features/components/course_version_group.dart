import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/course_version/course_version_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 2,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            'group.gr_about_cour'.tr(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ...List.generate(modules.length, (index) {
          final item = modules.elementAt(index);
          return ListTileBuilder(
            isStart: index == 0,
            isEnd: index == (modules.length - 1),
            builder: (shape, contentPadding, isThreeLine) {
              return ExpansionTile(
                shape: shape,
                collapsedShape: shape,
                leading: CircleAvatar(
                  backgroundColor: customColors?.primaryBg,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(color: customColors?.primaryTextColor),
                  ),
                ),
                title: Text(item.name!),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                backgroundColor: customColors?.containerColor,
                collapsedBackgroundColor: customColors?.containerColor,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      sl<LocalData>().removeHtmlTags(item.description!),
                    ),
                  ),
                ],
              );
            },
          );
        }),
      ],
    );
  }
}
