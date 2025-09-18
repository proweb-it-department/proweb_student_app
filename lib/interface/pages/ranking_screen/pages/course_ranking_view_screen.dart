import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/pages/ranking_screen/pages/all_ranking_screen.dart';

@RoutePage()
class CourseRankingViewScreen extends StatelessWidget {
  final int id;
  const CourseRankingViewScreen({super.key, @PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: MainAppBar(),
        body: AllRankingInit(courseId: id),
      ),
    );
  }
}
