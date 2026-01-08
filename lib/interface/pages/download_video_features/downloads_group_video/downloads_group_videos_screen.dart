import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/download_video_lesson/download_video_lesson_bloc.dart';
import 'package:proweb_student_app/interface/components/download_video_item/download_video_item.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class DownloadsGroupVideosScreen extends StatelessWidget {
  final int lessonId;
  const DownloadsGroupVideosScreen({super.key, required this.lessonId});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    return BlocProvider(
      create: (context) =>
          DownloadVideoLessonBloc()
            ..add(DownloadVideoLessonEvent.started(lessonId: lessonId)),
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: IconButton.styleFrom(
                backgroundColor: customColor?.containerColor,
              ),
              icon: Icon(
                Icons.arrow_back,
                color: customColor?.primaryTextColor,
              ),
            ),
            title: Text('Урок'),
          ),
          body: DownloadsGroupVideosBody(),
        ),
      ),
    );
  }
}

class DownloadsGroupVideosBody extends StatelessWidget {
  const DownloadsGroupVideosBody({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<DownloadVideoLessonBloc, DownloadVideoLessonState>(
      builder: (context, state) {
        return state.when(
          load: () {
            return Center(child: Md3CirculeIndicator());
          },
          error: () {
            return Center(child: ErrorLoad());
          },
          notFound: () {
            return Center(
              child: NoData(
                text: 'downloads.There_are_no_downloaded_videos_in_the_lesson'
                    .tr(),
                icon: Icons.videocam_off,
              ),
            );
          },
          complited: (downloaders) {
            return ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
              child: Container(
                color: customColors?.containerColor,
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: downloaders.length,
                  itemBuilder: (context, index) {
                    final video = downloaders.elementAt(index);
                    return DownloadVideoItem(video: video, longpress: false);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
