import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/my_watched_lesson/my_watched_lesson_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/my_watched_lesson_screen/my_watched_lesson_screen.dart';
import 'package:proweb_student_app/models/my_watched_lesson/my_watched_lesson.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class MyWatchedLessonWidget extends StatelessWidget {
  final int? groupId;
  const MyWatchedLessonWidget({super.key, this.groupId});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WatchedStatus(),
      child: MyWatchedBody(groupId: groupId),
    );
  }
}

class MyWatchedBody extends StatelessWidget {
  final int? groupId;
  const MyWatchedBody({super.key, this.groupId});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final provider = context.watch<WatchedStatus>();
    final bloc = context.read<MyWatchedLessonBloc>();
    return BlocBuilder<MyWatchedLessonBloc, MyWatchedLessonState>(
      bloc: bloc
        ..add(
          MyWatchedLessonEvent.started(
            isWatched: provider.status,
            groupId: groupId,
          ),
        ),
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 10,
          children: [
            SizedBox(
              width: double.infinity,

              child: SegmentedButton<String>(
                expandedInsets: EdgeInsets.symmetric(horizontal: 10),
                style: segementStyle(customColors),
                segments: <ButtonSegment<String>>[
                  ButtonSegment<String>(
                    value: 'no',
                    label: Text(
                      'Не смотрели',
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
                      MyWatchedLessonEvent.started(
                        isWatched: provider.status,
                        groupId: groupId,
                      ),
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
                  MyWatchedLessons(data: data, groupId: groupId),
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
  final int? groupId;
  const MyWatchedLessons({super.key, required this.data, this.groupId});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    if (data.list.isEmpty) {
      return NoData(
        text: 'У вас на данный момент нет видео уроков',
        icon: Icons.video_camera_back_outlined,
      );
    }
    final provider = context.watch<WatchedStatus>();
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,

      children: [
        ...data.list.map((item) => MyWatchedLessonItem(item: item)),
        if (data.count > 15)
          SizedBox(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  context.router.push(
                    MyWatchedLessonRoute(
                      isWatched: provider.status,
                      groupId: groupId,
                    ),
                  );
                },
                child: GoPage(
                  color: customColors?.primaryBg,
                  width: 50,
                  height: 50,
                  child: Icon(Icons.chevron_right),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class MyWatchedLessonItem extends StatelessWidget {
  final MyWatchedLesson item;
  final double? width;
  final double? height;
  final bool showGoBtn;
  const MyWatchedLessonItem({
    super.key,
    required this.item,
    this.width,
    this.height,
    this.showGoBtn = true,
  });

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
    final twoVideo = videos.elementAtOrNull(1);
    return GestureDetector(
      onTap: videos.isNotEmpty
          ? () {
              final groupId = item.groupLesson?.group?.id;
              final lessonId = item.groupLesson?.id;
              if (groupId == null) return;
              if (lessonId == null) return;
              context.router.push(
                LessonVideoRoute(lessonId: lessonId, groupId: groupId),
              );
            }
          : null,
      child: Container(
        width: width ?? 290,
        height: height ?? double.infinity,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.only(
          top: twoVideo != null ? 10 : 5,
          bottom: 5,
          left: 5,
          right: 5,
        ),
        decoration: BoxDecoration(
          color: customColors?.primaryBg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            if (videos.isNotEmpty)
              Stack(
                clipBehavior: Clip.none,
                children: [
                  if (twoVideo != null)
                    Positioned(
                      top: -10,
                      left: 0,
                      right: 0,
                      child: Opacity(
                        opacity: 0.4,
                        child: Transform.scale(
                          scale: 0.95,
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(6),
                              child: CachedNetworkImage(
                                imageUrl: twoVideo.preview!,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(6),
                      child: CachedNetworkImage(
                        imageUrl: videos.first.preview!,
                      ),
                    ),
                  ),
                  if (videos.length > 1) ...{
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 8,
                          top: 4,
                          bottom: 4,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: customColors?.containerColor.withAlpha(220),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 5,
                          children: [
                            Icon(Icons.playlist_play_rounded),
                            Text('${videos.length} видео'),
                          ],
                        ),
                      ),
                    ),
                  },
                ],
              ),
            if (videos.firstOrNull != null)
              Text(
                videos.first.title ?? '- - -',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            else ...{
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: customColors?.containerColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: NoData(
                    text: 'Виде в уроке нет',
                    icon: Icons.play_arrow_rounded,
                    shape: PathSvgShape.pill,
                    color: HexColor('#4971FE'),
                  ),
                ),
              ),
            },

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 11,
                    right: 11,
                    top: 5,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                    color: customColors?.containerColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Урок #${item.groupLesson?.lessonNumber ?? 0}',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Row(
                  spacing: 5,
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 11,
                          right: 11,
                          top: 5,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          color: customColors?.containerColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 5,
                          children: [
                            CachedNetworkImage(
                              imageUrl: item.groupLesson!.group!.course!.icon!,
                              width: 16,
                              colorBlendMode: BlendMode.srcIn,
                              color: customColors?.primaryTextColor,
                            ),
                            Text(
                              '#${item.groupLesson!.group!.id}',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (videos.firstOrNull != null && showGoBtn)
                      GoPage(
                        color: customColors?.containerColor,
                        width: 30,
                        height: 30,
                        child: Icon(Icons.chevron_right),
                      ),
                  ],
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
  late String _status;
  WatchedStatus({String? status}) {
    _status = status ?? 'no';
  }
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
