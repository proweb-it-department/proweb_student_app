import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/cups/cups_bloc.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/bloc/my_statistic/my_statistic_bloc.dart';
import 'package:proweb_student_app/bloc/scheduled_student/scheduled_student_bloc.dart';
import 'package:proweb_student_app/bloc/story_groups/story_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_refresh_indicator/md3_refresh_indicator.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/home_groups_widget.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_cups.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_schedule_widget.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_statistcs_widget.dart';

import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/story_groups_view.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/global_context/global_context.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class HomeMainTab extends StatelessWidget {
  const HomeMainTab({super.key});
  @override
  Widget build(BuildContext context) {
    if (sl<NavigationService>().context == null) {
      sl<NavigationService>().setContext(context);
    }
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocProvider(
      create: (context) => ScheduledStudentBloc(),
      child: Md3RefreshIndicator(
        onRefresh: () async {
          final blocstory = context.read<StoryGroupsBloc>();
          final blocgroups = context.read<MyGroupsBloc>();
          final blocStat = context.read<MyStatisticBloc>();
          final blocStatCups = context.read<CupsBloc>();
          blocstory.add(
            StoryGroupsEvent.started(languageCode: context.locale.languageCode),
          );
          blocStatCups.add(CupsEvent.started());
          blocStat.add(MyStatisticEvent.started());
          await blocstory.stream.first;
          blocgroups.add(MyGroupsEvent.started());
          await blocgroups.stream.first;
          await Future.delayed(Duration(seconds: 1, milliseconds: 500));
        },
        child: Material(
          color: customColors?.containerColor,
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Material(
                color: customColors?.primaryBg,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [StoryGroupsView(), SizedBox(height: 10)],
                ),
              ),
              MyStatistcsWidget(),
              Material(
                color: customColors?.primaryBg,
                child: SizedBox(height: 10),
              ),
              MyCups(),
              Material(
                color: customColors?.primaryBg,
                child: SizedBox(height: 10),
              ),
              HomeGroupsWidget(),
              SizedBox(height: 20),
              MyScheduleWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
