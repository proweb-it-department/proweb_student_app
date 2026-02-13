import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/interface/pages/ranking_screen/pages/all_ranking_screen.dart';

@RoutePage()
class CourseRankingViewScreen extends StatelessWidget {
  final int id;
  const CourseRankingViewScreen({
    super.key,
    @PathParam.inherit('id') required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final tabController = context.read<TabController>();
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Рейтинг курса'),
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
        body: AllRankingInit(courseId: id),
      ),
    );
  }
}
