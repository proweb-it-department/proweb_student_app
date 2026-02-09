import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';

@RoutePage()
class ProwebScreen extends StatelessWidget {
  const ProwebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        ProwebCourseRoute(),
        ProwebBranchRoute(),
        ProwebMasterClassRoute(),
      ],
      builder: (context, child, controller) {
        return TabBarPopScope(
          mainPage: ProwebCourseRoute(),
          child: Scaffold(
            appBar: MainAppBar(
              isBorder: false,
              tab: TabBar(
                controller: controller,
                isScrollable: true,
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                indicatorWeight: 4,
                dragStartBehavior: DragStartBehavior.down,
                onTap: (value) {},
                tabs: [
                  Tab(text: 'Курсы'),
                  Tab(text: 'Филиалы'),
                  Tab(text: 'Мастер-классы'),
                ],
              ),
            ),
            body: child,
          ),
        );
      },
    );
  }
}
