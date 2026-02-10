import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/course_version_module/course_version_module_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/course_version_modal/course_version_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class CourseModulesScreen extends StatelessWidget {
  final int id;
  const CourseModulesScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CourseVersionModuleBloc()
            ..add(CourseVersionModuleEvent.started(versionId: id)),
      child: CourseModulesScafold(),
    );
  }
}

class CourseModulesScafold extends StatelessWidget {
  const CourseModulesScafold({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = context.read<TabController>();
    final customColors = Theme.of(context).extension<CustomColors>();
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Модули курса'),
          bottom: TabBar(
            controller: tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorWeight: 4,
            dragStartBehavior: DragStartBehavior.down,
            dividerColor: Colors.transparent,
            tabs: [
              Tab(text: 'О курсе'),
              Tab(text: 'Модули курса'),
              Tab(text: 'Рейтинг курса'),
            ],
          ),
        ),
        body: ClipRRect(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: customColors?.containerColor,
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
            child: CourseModulesBody(),
          ),
        ),
      ),
    );
  }
}

class CourseModulesBody extends StatelessWidget {
  const CourseModulesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseVersionModuleBloc, CourseVersionModuleState>(
      builder: (context, state) {
        return switch (state) {
          CourseVersionModuleInitail() => Md3CirculeIndicator(),
          CourseVersionModuleError() => Center(child: ErrorLoad()),
          CourseVersionModuleComplited(modules: final modules) =>
            CourseModulesList(modules: modules),
        };
      },
    );
  }
}

class CourseModulesList extends StatelessWidget {
  final List<CourseVersionModel> modules;
  const CourseModulesList({super.key, required this.modules});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        final item = modules.elementAt(index);
        final length = modules.length - 1;
        return ListTileBuilder(
          isStart: index == 0,
          isEnd: index == length,
          builder: (shape, contentPadding, isThreeLine) {
            return ExpansionTile(
              backgroundColor: customColors?.primaryBg,
              collapsedBackgroundColor: customColors?.primaryBg,
              shape: shape,
              collapsedShape: shape,
              title: Text(item.name ?? '- - -'),
              leading: CircleAvatar(
                backgroundColor: customColors?.containerColor,
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: customColors?.primaryTextColor),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.all(10),
                  child: Text(
                    sl<LocalData>()
                        .removeHtmlTags(item.description ?? '- - -')
                        .trim(),
                  ),
                ),
              ],
            );
          },
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 2);
      },
      itemCount: modules.length,
    );
  }
}
