import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';

@RoutePage()
class RankingScreen extends StatelessWidget {
  const RankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [MyRankingRoute(), AllRankingRoute(), CourseRankingRoute()],
      builder: (context, child, controller) {
        return TabBarPopScope(
          mainPage: MyRankingRoute(),
          child: Scaffold(
            appBar: MainAppBar(
              isBorder: false,
              tab: TabBar(
                controller: controller,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicatorWeight: 4,
                dragStartBehavior: DragStartBehavior.down,
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(text: 'ranking.My_rating'.tr()),
                  Tab(text: 'ranking.Overall_rating'.tr()),
                  Tab(text: 'ranking.Rating_by_courses'.tr()),
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
