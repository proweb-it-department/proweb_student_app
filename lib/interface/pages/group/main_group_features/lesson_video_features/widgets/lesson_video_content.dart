import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/lesson_video/lesson_video_bloc.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_video_features/widgets/lesson_info.dart';
import 'package:proweb_student_app/models/group_lesson_info/group_lesson_info.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/player_widget/player_widget.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class LessonVideoContent extends StatefulWidget {
  final GroupLessonInfo lesson;
  final MyGroupsItem groupUser;
  const LessonVideoContent({
    super.key,
    required this.lesson,
    required this.groupUser,
  });

  @override
  State<LessonVideoContent> createState() => _LessonVideoContentState();
}

class _LessonVideoContentState extends State<LessonVideoContent> {
  String? initPath;
  String? initSlug;
  String? preview;
  int initIndex = 0;
  List<MiddelwareModelVideo> videosModel = [];

  @override
  void initState() {
    super.initState();
    final videos = widget.lesson.groupLesson?.videos;
    if (videos != null) {
      for (var element in videos) {
        final playlist = element.video?.playlist;
        final preview = element.video?.preview;
        final slug = element.video?.slug;
        final title = element.video?.title;
        final size = element.video?.size;
        final duration = element.video?.durations;
        final isDownload = element.video?.isDownload;
        if (playlist != null && preview != null && slug != null) {
          videosModel.add(
            MiddelwareModelVideo(
              path: playlist,
              slug: slug,
              preview: preview,
              title: title ?? '',
              size: size ?? 0,
              duration: duration ?? 0,
              isDownload: isDownload ?? false,
            ),
          );
        }
      }
    }
    _selectVideo(initIndex);
  }

  void _selectVideo(int position) {
    if (videosModel.isNotEmpty && (videosModel.length - 1) >= position) {
      final video = videosModel.elementAtOrNull(position);
      if (video != null) {
        setState(() {
          initPath = video.path;
          initSlug = video.slug;
          initIndex = position;
          preview = video.preview;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    if (initPath == null || initSlug == null || videosModel.isEmpty) {
      return Center(
        child: NoData(
          text: 'video.no_video_added'.tr(),
          icon: Icons.videocam_off,
        ),
      );
    }
    return Column(
      children: [
        PlayerWidget(
          key: ValueKey<int>(initIndex),
          playlists: sl<LocalData>().generateUrlVideo(
            publickPath: initPath!,
            slug: initSlug!,
          ),
          preview: preview,
        ),
        Expanded(
          child: ListView(
            children: [
              if (videosModel.length > 1)
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  margin: EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  color: customColors?.containerColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('video.list_of_video_lessons'.tr()),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          children: List.generate(videosModel.length, (index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: ItemListVideoLesson(
                                index: index,
                                initIndex: initIndex,
                                lesson: widget.lesson,
                                groupUser: widget.groupUser,
                                model: videosModel[index],
                                selectVideo: () {
                                  if (initIndex != index) {
                                    _selectVideo(index);
                                  }
                                },
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  right: 10,
                  left: 10,
                  top: 15,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    color: customColors?.containerColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'video.how_much_did_you_like_the_lesson'.tr(),
                        style: TextStyle(fontSize: 18),
                      ),
                      ScoreLesson(
                        lesson: widget.lesson,
                        groupUser: widget.groupUser,
                      ),
                    ],
                  ),
                ),
              ),
              LessonContent(lesson: widget.lesson, groupUser: widget.groupUser),
            ],
          ),
        ),
      ],
    );
  }
}

class ItemListVideoLesson extends StatefulWidget {
  final MiddelwareModelVideo model;
  final GroupLessonInfo lesson;
  final MyGroupsItem groupUser;
  final int initIndex;
  final int index;
  final void Function() selectVideo;
  const ItemListVideoLesson({
    super.key,
    required this.model,
    required this.lesson,
    required this.initIndex,
    required this.index,
    required this.selectVideo,
    required this.groupUser,
  });

  @override
  State<ItemListVideoLesson> createState() => _ItemListVideoLessonState();
}

class _ItemListVideoLessonState extends State<ItemListVideoLesson> {
  Offset _tapPosition = Offset.zero;

  void _getTapPosition(TapDownDetails position) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    setState(() {
      _tapPosition = renderBox.localToGlobal(position.localPosition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.selectVideo,
      onTapDown: _getTapPosition,
      onLongPress: () {
        _showContextMenu(context);
      },
      child: SizedBox(
        width: 130,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Column(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            widget.model.preview,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 300),
                        child: widget.initIndex == widget.index
                            ? Container(
                                color: Colors.black.withAlpha(150),
                                child: Center(
                                  child: Lottie.asset(
                                    'assets/lottie/Playing.json',
                                  ),
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                widget.model.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showContextMenu(BuildContext context) async {
    RenderObject? overlay = Overlay.of(context).context.findRenderObject();
    final customColors = Theme.of(context).extension<CustomColors>();

    final result = await showMenu<int>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 10, 10),
        Rect.fromLTWH(
          0,
          0,
          overlay!.paintBounds.size.width,
          overlay.paintBounds.size.height,
        ),
      ),
      color: customColors?.containerColor,
      items: [
        if (widget.initIndex != widget.index)
          PopupMenuItem(
            value: 0,
            child: Row(
              spacing: 8,
              children: [
                Icon(Icons.play_arrow, color: customColors?.additionalTwo),
                Text(
                  "video.plaeng_video".tr(),
                  style: TextStyle(color: customColors?.primaryTextColor),
                ),
              ],
            ),
          ),
        PopupMenuItem(
          value: 1,
          child: Row(
            spacing: 8,
            children: [
              Icon(Icons.download, color: customColors?.additionalTwo),
              Text(
                "video.download_video_list_item".tr(),
                style: TextStyle(color: customColors?.primaryTextColor),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            spacing: 8,
            children: [
              Icon(Icons.info, color: customColors?.additionalTwo),
              Text(
                "video.information_video".tr(),
                style: TextStyle(color: customColors?.primaryTextColor),
              ),
            ],
          ),
        ),
      ],
    );
    if (context.mounted && result != null) {
      if (result == 1) {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          useSafeArea: true,
          showDragHandle: true,
          builder: (context) {
            return BottomSheetLesson(
              lesson: widget.lesson,
              groupUser: widget.groupUser,
            );
          },
        );
      } else if (result == 0) {
        widget.selectVideo();
      } else if (result == 2) {
        _openInfoDialog(context);
      }
    }
  }

  Future<void> _openInfoDialog(BuildContext context) async {
    if (context.mounted) {
      final customColors = Theme.of(context).extension<CustomColors>();
      await showDialog(
        context: context,
        builder: (contextDialog) {
          return AlertDialog(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            title: Text(
              'video.information_about_the_video'.tr(),
              style: TextStyle(fontSize: 25),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text(
                    'downloads.info_file_name'.tr(),
                    style: TextStyle(color: customColors?.additionalTwo),
                  ),
                  subtitle: Text(widget.model.title),
                ),
                ListTile(
                  title: Text(
                    'video.video_size'.tr(),
                    style: TextStyle(color: customColors?.additionalTwo),
                  ),
                  subtitle: Text(sl<LocalData>().formatSize(widget.model.size)),
                ),
                ListTile(
                  title: Text(
                    'video.duration_video'.tr(),
                    style: TextStyle(color: customColors?.additionalTwo),
                  ),
                  subtitle: Text(
                    sl<LocalData>().secondToTime(
                      widget.model.duration.toDouble(),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                child: Text('global_data.cansel_btn'.tr()),
                onPressed: () {
                  Navigator.of(contextDialog).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}

class ScoreLesson extends StatelessWidget {
  final GroupLessonInfo lesson;
  final MyGroupsItem groupUser;
  const ScoreLesson({super.key, required this.lesson, required this.groupUser});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 7,
      children: [
        ...List.generate(5, (index) {
          if (lesson.score != null && lesson.score! > 0) {
            if (lesson.score! >= (index + 1)) {
              return IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.star,
                  color: customColors?.warningFill,
                  size: 30,
                ),
              );
            } else {
              return IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.star_border,
                  size: 30,
                  color: customColors?.primaryTextColor,
                ),
              );
            }
          } else {
            return IconButton(
              onPressed: () async {
                final score = await showDialog<PopDialogScore>(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return DialogScoreLesson(score: index + 1);
                  },
                );
                if (score != null && context.mounted) {
                  final bloc = context.read<LessonVideoBloc>();
                  bloc.add(LessonVideoEvent.evaluate(score: score));
                }
              },
              icon: Icon(
                Icons.star_border,
                size: 30,
                color: customColors?.primaryTextColor,
              ),
            );
          }
        }),
      ],
    );
  }
}

class DialogScoreLesson extends StatefulWidget {
  final int score;
  const DialogScoreLesson({super.key, required this.score});

  @override
  State<DialogScoreLesson> createState() => _DialogScoreLessonState();
}

class _DialogScoreLessonState extends State<DialogScoreLesson> {
  late int score;
  late int leghtText;
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    score = widget.score;
    leghtText = 0;
    controller.addListener(() {
      setState(() {
        leghtText = controller.value.text.trim().length;
      });
    });
  }

  _changeScore(int index) {
    if (score != index) {
      setState(() {
        score = index;
        controller.value = TextEditingValue(text: '');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return PopScope(
      canPop: false,
      child: Dialog(
        insetPadding: EdgeInsets.all(12),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              if (score <= 3)
                Lottie.asset('assets/lottie/Angry.json', width: 80, height: 80)
              else if (score == 4)
                Lottie.asset(
                  'assets/lottie/Slightly-frowning.json',
                  width: 80,
                  height: 80,
                )
              else
                Lottie.asset(
                  'assets/lottie/Slightly-happy.json',
                  width: 80,
                  height: 80,
                ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(5, (index) {
                    if (score >= (index + 1)) {
                      return IconButton(
                        onPressed: () => _changeScore(index + 1),
                        icon: Icon(
                          Icons.star,
                          color: customColors?.warningFill,
                          size: 30,
                        ),
                      );
                    } else {
                      return IconButton(
                        onPressed: () => _changeScore(index + 1),
                        icon: Icon(
                          Icons.star_border,
                          size: 30,
                          color: customColors?.primaryTextColor,
                        ),
                      );
                    }
                  }),
                ],
              ),
              SizedBox(height: 10),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Text(
                  key: ValueKey<int>(score <= 3 ? 3 : score),
                  'video.dialog_score_${score <= 3 ? 3 : score}'.tr(),
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              if (score <= 4)
                TextField(
                  controller: controller,
                  minLines: 1,
                  maxLines: 5,
                  autofocus: true,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'video.comment_lesson'.tr(),
                    helperText: 'video.comment_lesson_min_length'.tr(),
                  ),
                ),
              SizedBox(height: 20),
              FilledButton(
                style: FilledButton.styleFrom(
                  disabledBackgroundColor: customColors?.dialogBackground,
                  textStyle: TextStyle(color: customColors?.primaryTextColor),
                ),
                onPressed: score < 4 && leghtText < 15
                    ? null
                    : () {
                        PopDialogScore scoreData = PopDialogScore(
                          score: score,
                          msg: controller.value.text.isEmpty
                              ? null
                              : controller.value.text,
                        );
                        Navigator.of(context).pop(scoreData);
                      },
                child: Text(
                  'global_data.send_btn'.tr(),
                  style: TextStyle(
                    color: score < 4 && leghtText < 15
                        ? customColors?.primaryTextColor.withAlpha(100)
                        : customColors?.primaryBg,
                  ),
                ),
              ),
              if (score == 4) SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class MiddelwareModelVideo {
  final String path;
  final String slug;
  final String preview;
  final String title;
  final int duration;
  final int size;
  final bool isDownload;

  MiddelwareModelVideo({
    required this.path,
    required this.slug,
    required this.preview,
    required this.title,
    required this.duration,
    required this.size,
    required this.isDownload,
  });
}
