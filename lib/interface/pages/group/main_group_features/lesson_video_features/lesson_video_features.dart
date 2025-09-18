import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/lesson_video/lesson_video_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_video_features/widgets/lesson_video_body.dart';
import 'package:screen_protector/screen_protector.dart';

@RoutePage()
class LessonVideoScreen extends StatefulWidget {
  final int lessonId;
  final int groupId;
  const LessonVideoScreen({
    super.key,
    @PathParam('lessonid') required this.lessonId,
    @PathParam('id') required this.groupId,
  });

  @override
  State<LessonVideoScreen> createState() => _LessonVideoScreenState();
}

class _LessonVideoScreenState extends State<LessonVideoScreen> {
  @override
  void initState() {
    super.initState();
    _protectDataLeakageOn();
  }

  @override
  void dispose() {
    ScreenProtector.protectDataLeakageOff();
    super.dispose();
  }

  void _protectDataLeakageOn() async {
    if (Platform.isIOS) {
      await ScreenProtector.protectDataLeakageWithColor(Colors.black);
    } else if (Platform.isAndroid) {
      await ScreenProtector.protectDataLeakageOn();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return LessonVideoBloc()..add(
          LessonVideoEvent.started(
            groupId: widget.groupId,
            lessonId: widget.lessonId,
          ),
        );
      },
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: MainAppBar(),
          body: LessonVideoBody(
            groupId: widget.groupId,
            lessonId: widget.lessonId,
          ),
        ),
      ),
    );
  }
}
