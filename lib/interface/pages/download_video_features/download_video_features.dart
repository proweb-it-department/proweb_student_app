import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/download_video/download_video_bloc.dart';
import 'package:proweb_student_app/interface/components/download_video_item/download_video_item.dart';
import 'package:proweb_student_app/interface/components/download_video_progress/download_video_progress.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/download_video_features/downloads_exclusive_product_video/downloads_exclusive_product_video.dart';
import 'package:proweb_student_app/interface/pages/download_video_features/downloads_group_video/downloads_group_video.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/video_sendet_model/video_sendet_model.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class DownloadVideosScreen extends StatelessWidget {
  const DownloadVideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadVideoBloc, DownloadVideoState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          download: (download, downloaders) {
            return ListView(
              children: [
                AllPagesView(download: download, downloaders: downloaders),
              ],
            );
          },
        );
      },
    );
  }
}

enum DownloadVideoSegements { all, group, exclusiveProduct }

class AllPagesView extends StatefulWidget {
  final VideoSendetModel? download;
  final List<VideoSavedData> downloaders;
  const AllPagesView({super.key, this.download, required this.downloaders});

  @override
  State<AllPagesView> createState() => _AllPagesViewState();
}

class _AllPagesViewState extends State<AllPagesView> {
  DownloadVideoSegements segmentView = DownloadVideoSegements.all;
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: SegmentedButton<DownloadVideoSegements>(
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
            segments: <ButtonSegment<DownloadVideoSegements>>[
              ButtonSegment<DownloadVideoSegements>(
                value: DownloadVideoSegements.all,
                label: Text(
                  'downloads.All_videos'.tr(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: customColors?.primaryTextColor),
                ),
              ),
              ButtonSegment<DownloadVideoSegements>(
                value: DownloadVideoSegements.group,
                label: Text(
                  'downloads.GroupsD'.tr(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: customColors?.primaryTextColor),
                ),
              ),
              ButtonSegment<DownloadVideoSegements>(
                value: DownloadVideoSegements.exclusiveProduct,
                label: Text(
                  'downloads.Exc_products'.tr(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: customColors?.primaryTextColor),
                ),
              ),
            ],
            selected: {segmentView},
            onSelectionChanged: (p0) {
              setState(() {
                segmentView = p0.first;
              });
            },
          ),
        ),
        if (segmentView == DownloadVideoSegements.all)
          AllDownloadVideo(
            download: widget.download,
            downloaders: widget.downloaders,
          )
        else if (segmentView == DownloadVideoSegements.group)
          DownloadsGroupVideo()
        else if (segmentView == DownloadVideoSegements.exclusiveProduct)
          DownloadsExclusiveProductVideo(),
      ],
    );
  }
}

class AllDownloadVideo extends StatelessWidget {
  final VideoSendetModel? download;
  final List<VideoSavedData> downloaders;
  const AllDownloadVideo({super.key, this.download, required this.downloaders});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (download != null)
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'video.download_progress_title'.tr(),
              style: TextStyle(fontSize: 18),
            ),
          ),
        if (download != null) DownloadVideoProgress(video: download!),
        if (download != null) Divider(),
        if (downloaders.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'video.download_complited_title'.tr(),
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: customColors?.containerColor,
                      ),
                      child: Text('${downloaders.length}'),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () async {
                    final returned = await showDialog<bool>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'video.delete_local_video_title_all'.tr(),
                            style: TextStyle(fontSize: 25),
                          ),
                          content: Text(
                            'video.delete_local_video_desc_all'.tr(),
                          ),
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
                      },
                    );
                    if (returned == true) {
                      if (context.mounted) {
                        final bloc = context.read<DownloadVideoBloc>();
                        bloc.add(DownloadVideoEvent.deleteAll());
                      }
                    }
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: customColors?.errorFillOp,
                  ),
                  icon: Icon(Icons.delete, color: customColors?.errorFill),
                ),
              ],
            ),
          ),
        if (downloaders.isNotEmpty)
          ...List.generate(downloaders.length, (index) {
            final video = downloaders[index];
            return DownloadVideoItem(video: video);
          })
        else
          Padding(
            padding: const EdgeInsets.all(10),
            child: NoData(
              text: 'video.not_download_video'.tr(),
              icon: Icons.download,
            ),
          ),
      ],
    );
  }
}
