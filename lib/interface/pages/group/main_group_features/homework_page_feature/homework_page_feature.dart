import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart';
import 'package:proweb_student_app/bloc/homework_relation/homework_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';

@RoutePage()
class HomeworkPageScreen extends StatelessWidget {
  final int relationId;
  final int groupId;
  final GroupDetailBloc? bloc;
  const HomeworkPageScreen({
    super.key,
    @PathParam('relationId') required this.relationId,
    @PathParam('id') required this.groupId,
    this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: BlocProvider(
        create: (context) => bloc ?? GroupDetailBloc()
          ..add(GroupDetailEvent.started(groupId: groupId)),
        child: BlocProvider<HomeworkRelationBloc>(
          create: (context) =>
              HomeworkRelationBloc()
                ..add(HomeworkRelationEvent.started(relationId: relationId)),
          child: AutoTabsRouter.tabBar(
            routes: [
              HomeworkAboutRoute(bloc: bloc),
              HomeworkStudentWorkRoute(bloc: bloc),
              HomeworkStudentCommentsRoute(bloc: bloc),
            ],
            builder: (context, child, tabController) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: TabBarPopScope(
                  mainPage: HomeworkAboutRoute(),
                  child: Scaffold(
                    appBar: MainAppBar(
                      isBorder: false,
                      tab: TabBar(
                        controller: tabController,
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        indicatorWeight: 4,
                        dragStartBehavior: DragStartBehavior.down,
                        dividerColor: Colors.transparent,
                        tabs: [
                          Tab(text: 'group_homework.homework_about'.tr()),
                          Tab(
                            text: 'group_homework.homework_student_work'.tr(),
                          ),
                          Tab(
                            text: 'group_homework.homework_student_comment'
                                .tr(),
                          ),
                        ],
                        onTap: (value) {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),
                    body: child,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
