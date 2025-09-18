import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/video_sendet_model/video_sendet_model.dart';
import 'package:proweb_student_app/utils/download_manager/video_download_manager.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:talker_logger/talker_logger.dart';

class DownloadVideoProgress extends StatelessWidget {
  final VideoSendetModel video;
  const DownloadVideoProgress({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    final String? preview = video.preview;
    final String? title = video.title;
    final int? size = video.size;
    final progress = (video.progress / 100);
    final customColors = Theme.of(context).extension<CustomColors>();
    TalkerLogger().error(preview);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: preview == null
              ? null
              : ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: SizedBox(
                      height: 80,
                      child: CachedNetworkImage(imageUrl: preview),
                    ),
                  ),
                ),
          title: title != null
              ? Text(title, maxLines: 1, overflow: TextOverflow.ellipsis)
              : null,
          subtitle: size != null
              ? Text(
                  sl<LocalData>().formatSize(size),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              : null,
          trailing: SizedBox(
            width: 25,
            height: 25,
            child: CircularProgressIndicator(
              strokeWidth: 1,
              value: progress < 0.01 ? null : progress,
            ),
          ),
        ),
        FilledButton.icon(
          style: FilledButton.styleFrom(
            backgroundColor: customColors?.errorFillOp,
            textStyle: TextStyle(color: customColors?.errorFill),
          ),
          onPressed: () {
            sl<DownloadManager>().stopenDownload(video.slug);
          },
          icon: Icon(Icons.stop, color: customColors?.errorFill),
          label: Text(
            'video.stoped_download'.tr(),
            style: TextStyle(color: customColors?.errorFill),
          ),
        ),
      ],
    );
  }
}
