import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/course_list/course_list_bloc.dart';
import 'package:proweb_student_app/interface/pages/ranking_screen/pages/course_ranking_screen.dart';

@RoutePage()
class ProwebCourseScreen extends StatelessWidget {
  const ProwebCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseListBloc(),
      child: CoursesView(
        key: ValueKey('ProwebCourses'),
        language: context.locale.languageCode,
        onTap: (id) {
          if (id == null) return;
          context.router.navigatePath('/courses/$id');
        },
      ),
    );
  }
}
