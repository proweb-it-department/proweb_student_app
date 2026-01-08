import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/my_groups/my_groups_bloc.dart';
import 'package:proweb_student_app/bloc/story_groups/story_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/md3_refresh_indicator/md3_refresh_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_groups_widgets.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/story_groups_view.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/global_context/global_context.dart';

@RoutePage()
class HomeMainTab extends StatelessWidget {
  const HomeMainTab({super.key});
  @override
  Widget build(BuildContext context) {
    if (sl<NavigationService>().context == null) {
      sl<NavigationService>().setContext(context);
    }
    return Md3RefreshIndicator(
      onRefresh: () async {
        final blocstory = context.read<StoryGroupsBloc>();
        final blocgroups = context.read<MyGroupsBloc>();
        blocstory.add(
          StoryGroupsEvent.started(languageCode: context.locale.languageCode),
        );
        await blocstory.stream.first;
        blocgroups.add(MyGroupsEvent.started());
        await blocgroups.stream.first;
        await Future.delayed(Duration(seconds: 1, milliseconds: 500));
      },
      child: ListView(
        children: [
          StoryGroupsView(),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 10,
              top: 20,
              bottom: 10,
            ),
            child: Text(
              'education.my_groups'.tr(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          BlocBuilder<MyGroupsBloc, MyGroupsState>(
            bloc: context.read<MyGroupsBloc>()..add(MyGroupsEvent.started()),
            builder: (context, state) {
              return switch (state) {
                MyGroupsInitial() => Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Md3CirculeIndicator(
                      background: Colors.red.shade100,
                      shapeColor: Colors.red.shade900,
                    ),
                  ),
                ),
                MyGroupsLoading() => Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(child: Md3CirculeIndicator()),
                ),
                MyGroupsNotFound() => Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: NoData(
                      text: 'education.no_group'.tr(),
                      icon: Icons.group_off,
                    ),
                  ),
                ),
                MyGroupsErrorLoad() => Padding(
                  padding: EdgeInsets.all(8),
                  child: ErrorLoad(
                    action: FilledButton(
                      onPressed: () {
                        final bloc = context.read<MyGroupsBloc>();
                        bloc.add(MyGroupsEvent.started());
                      },
                      child: Text('global_data.try_again'.tr()),
                    ),
                  ),
                ),
                MyGroupsComplited(groups: final groups) => MyGroupsWidgets(
                  groups: groups,
                ),
              };
            },
          ),
        ],
      ),
    );
  }
}
