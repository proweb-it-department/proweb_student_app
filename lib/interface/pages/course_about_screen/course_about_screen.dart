import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/course_detail/course_detail_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';

@RoutePage()
class CourseAboutScreen extends StatelessWidget {
  final int id;
  const CourseAboutScreen({super.key, @PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CourseDetailBloc>(
      create: (context) {
        final bloc = CourseDetailBloc();
        bloc.add(CourseDetailEvent.started(id: id));
        return bloc;
      },
      child: CourseAboutContent(),
    );
  }
}

// CourseDetailBloc
class CourseAboutContent extends StatelessWidget {
  const CourseAboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseDetailBloc, CourseDetailState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          child: switch (state) {
            CourseDetailInitial() => ScafoldBase(child: Md3CirculeIndicator()),
            CourseDetailError() => ScafoldBase(
              child: Center(child: ErrorLoad()),
            ),
            CourseDetailComplited(course: final course) =>
              AutoTabsRouter.tabBar(
                routes: [
                  CourseMainRouteRoute(),
                  CourseModulesRoute(id: course.defaultVersion?.id ?? 0),
                  CourseRankingViewRoute(),
                ],
                builder: (context, child, tabController) {
                  return ChangeNotifierProvider.value(
                    value: tabController,
                    child: TabBarPopScope(
                      mainPage: CourseMainRouteRoute(),
                      child: child,
                    ),
                  );
                },
              ),
          },
        );
      },
    );
  }
}

class ScafoldBase extends StatelessWidget {
  final Widget child;
  const ScafoldBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Загрузка...')),
      body: child,
    );
  }
}
