import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/video_repository/video_repository.dart';
import 'package:proweb_student_app/bloc/download_video/download_video_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/player_widget/player_widget.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:screen_protector/screen_protector.dart';

@RoutePage()
class VideoSlugScreen extends StatefulWidget {
  final String slug;
  const VideoSlugScreen({super.key, @PathParam('slug') required this.slug});

  @override
  State<VideoSlugScreen> createState() => _VideoSlugScreenState();
}

class _VideoSlugScreenState extends State<VideoSlugScreen> {
  @override
  void initState() {
    _protectDataLeakageOn();
    super.initState();
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

  Future<VideoModel?>? getModel() async {
    final getVideo = await sl<VideoRepository>().getVideoBySlug(widget.slug);
    final model = _storeToModel(getVideo);
    return model;
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: MainAppBar(),
        body: FutureBuilder(
          future: getModel(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.data == null) {
              return Center(child: ErrorLoad());
            } else if (snapshot.data != null) {
              return Column(
                children: [
                  PlayerWidget(
                    playlists: sl<LocalData>().generateUrlVideo(
                      publickPath: snapshot.data!.playlist!,
                      slug: snapshot.data!.slug!,
                    ),
                    preview: snapshot.data!.preview,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                onTap: () async {
                                  final returned = await showDialog<bool>(
                                    context: context,
                                    builder: (context) {
                                      return AlertDeleteVideo();
                                    },
                                  );
                                  if (returned == true) {
                                    if (context.mounted &&
                                        snapshot.data!.slug != null) {
                                      final bloc = context
                                          .read<DownloadVideoBloc>();
                                      bloc.add(
                                        DownloadVideoEvent.delete(
                                          slug: snapshot.data!.slug!,
                                        ),
                                      );
                                      context.router.maybePop();
                                    }
                                  }
                                },
                                tileColor: customColors?.containerColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                leading: snapshot.data!.preview != null
                                    ? SizedBox(
                                        height: 80,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl: snapshot.data!.preview!,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    : null,
                                title: Text(snapshot.data!.title ?? ''),
                                subtitle: Text(
                                  sl<LocalData>().formatSize(
                                    snapshot.data!.size ?? 0,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.delete,
                                  color: customColors?.errorFill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  VideoModel? _storeToModel(VideoSavedData? model) {
    if (model == null) return null;
    VideoModel data = VideoModel(
      playlist: model.playlist,
      preview: model.preview,
      size: model.size,
      slug: model.slug,
      title: model.title,
      status: StatusVideoData.download,
    );
    return data;
  }
}

class AlertDeleteVideo extends StatelessWidget {
  const AlertDeleteVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'video.delete_local_video_title'.tr(),
        style: TextStyle(fontSize: 25),
      ),
      content: Text('video.delete_local_video_desc'.tr()),
      actions: [
        TextButton(
          child: Text('global_data.cansel_btn'.tr()),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        TextButton(
          child: Text('global_data.delete_btn'.tr()),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );
  }
}
