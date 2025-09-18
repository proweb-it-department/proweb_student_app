import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/course_list/course_list_bloc.dart';
import 'package:proweb_student_app/interface/components/course_card/course_card.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class CourseRankingScreen extends StatelessWidget {
  const CourseRankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseListBloc(),
      child: CoursesView(language: context.locale.languageCode),
    );
  }
}

class CoursesView extends StatelessWidget {
  final String language;
  const CoursesView({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    Theme.of(context).extension<CustomColors>();
    return BlocBuilder<CourseListBloc, CourseListState>(
      bloc: context.read<CourseListBloc>()
        ..add(CourseListEvent.started(language: context.locale.languageCode)),
      builder: (context, state) {
        return Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SegementLangs(language: language),
            ),
            state.when(
              initial: () {
                return Center(child: CircularProgressIndicator());
              },
              loading: () {
                return Center(child: CircularProgressIndicator());
              },
              complited: (courses) {
                return Expanded(
                  child: GridView.builder(
                    itemCount: courses.length,
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 110),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 3 / 4,
                        ),
                    itemBuilder: (context, index) {
                      final course = courses.elementAt(index);
                      final id = course.id;
                      return CourseCard(
                        course: course,
                        onTap: id != null
                            ? () {
                                context.router.push(
                                  CourseRankingViewRoute(id: id),
                                );
                              }
                            : null,
                      );
                    },
                  ),
                );
              },
              error: () {
                return Center(child: ErrorLoad());
              },
            ),
          ],
        );
      },
    );
  }
}

class SegementLangs extends StatefulWidget {
  final String language;
  const SegementLangs({super.key, required this.language});

  @override
  State<SegementLangs> createState() => _SegementLangsState();
}

class _SegementLangsState extends State<SegementLangs> {
  late String language;

  @override
  void initState() {
    super.initState();
    language = widget.language;
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return SegmentedButton<String>(
      style: SegmentedButton.styleFrom(
        iconColor: customColors?.primaryTextColor,
        backgroundColor: customColors?.containerColor,
        selectedBackgroundColor: customColors?.primaryBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: customColors?.borderColor ?? Colors.transparent,
          ),
        ),
      ),
      onSelectionChanged: (p0) {
        setState(() {
          language = p0.first;
        });
        final bloc = context.read<CourseListBloc>();
        bloc.add(CourseListEvent.started(language: language));
      },
      segments: [
        ButtonSegment<String>(
          value: 'ru',
          label: Text(
            'Русский',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: customColors?.primaryTextColor),
          ),
        ),
        ButtonSegment<String>(
          value: 'uz',
          label: Text(
            'O`zbek',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: customColors?.primaryTextColor),
          ),
        ),
      ],
      selected: {language},
    );
  }
}
