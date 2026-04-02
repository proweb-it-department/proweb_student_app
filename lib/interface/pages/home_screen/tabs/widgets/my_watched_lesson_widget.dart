import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/my_watched_lesson/my_watched_lesson_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/my_watched_lesson/my_watched_lesson.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class MyWatchedLessonWidget extends StatelessWidget {
  final int? groupId;
  const MyWatchedLessonWidget({super.key, this.groupId});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WatchedStatus(),
      child: MyWatchedBody(),
    );
  }
}

class MyWatchedBody extends StatelessWidget {
  const MyWatchedBody({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final provider = context.watch<WatchedStatus>();
    final bloc = context.read<MyWatchedLessonBloc>();
    return BlocBuilder<MyWatchedLessonBloc, MyWatchedLessonState>(
      bloc: bloc..add(MyWatchedLessonEvent.started(isWatched: provider.status)),
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 10,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
              child: SegmentedButton<String>(
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
                segments: <ButtonSegment<String>>[
                  ButtonSegment<String>(
                    value: 'no',
                    label: Text(
                      'не смотрели',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: customColors?.primaryTextColor),
                    ),
                  ),
                  ButtonSegment<String>(
                    value: 'yes',
                    label: Text(
                      'Просмотрите еще',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: customColors?.primaryTextColor),
                    ),
                  ),
                ],
                selected: {provider.status},
                onSelectionChanged: switch (state) {
                  MyWatchedLessonStateLoad() => null,
                  MyWatchedLessonStateComplited(data: _) => (p0) {
                    provider.changeStatus();
                    bloc.add(
                      MyWatchedLessonEvent.started(isWatched: provider.status),
                    );
                  },
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: switch (state) {
                MyWatchedLessonStateLoad() => Md3CirculeIndicator(),
                MyWatchedLessonStateComplited(data: final data) =>
                  MyWatchedLessons(data: data),
              },
            ),
          ],
        );
      },
    );
  }
}

class MyWatchedLessons extends StatelessWidget {
  final ResponseLazeList<MyWatchedLesson> data;
  const MyWatchedLessons({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.list.isEmpty) {
      return NoData(
        text: 'У вас на данный момент нет видео уроков',
        icon: Icons.video_camera_back_outlined,
      );
    }
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,

      children: [...data.list.map((item) => MyWatchedLessonItem(item: item))],
    );
  }
}

class MyWatchedLessonItem extends StatelessWidget {
  final MyWatchedLesson item;
  const MyWatchedLessonItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final videos =
        item.groupLesson?.videos
            ?.map((vid) => vid.video)
            .toList()
            .whereType<VideoModel>()
            .toList() ??
        [];
    return GestureDetector(
      onTap: () => {},
      child: Container(
        width: 290,
        height: double.infinity,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(5),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: customColors?.primaryBg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            if (videos.isNotEmpty)
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(6),
                      child: CachedNetworkImage(
                        imageUrl: videos.first.preview!,
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class WatchedStatus extends ChangeNotifier {
  String _status = 'no';
  String get status => _status;
  void changeStatus() {
    if (_status == 'no') {
      _status = 'yes';
    } else {
      _status = 'no';
    }
    notifyListeners();
  }
}
