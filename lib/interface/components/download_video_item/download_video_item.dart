import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/repositories/video_group_repositiories/video_group_repositiories.dart';
import 'package:proweb_student_app/api/repositories/video_product_repositiories/video_product_repositiories.dart';
import 'package:proweb_student_app/bloc/download_video/download_video_bloc.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class DownloadVideoItem extends StatelessWidget {
  final VideoSavedData video;
  final bool? longpress;
  const DownloadVideoItem({super.key, required this.video, this.longpress});

  @override
  Widget build(BuildContext context) {
    final String? preview = video.preview;
    final String title = video.title;
    final int? size = video.size;
    return ListTile(
      onTap: () {
        context.router.push(VideoSlugRoute(slug: video.slug));
      },
      onLongPress: longpress == null || longpress == true
          ? () async {
              final returned = await showDialog<bool>(
                context: context,
                builder: (context) {
                  return AlertDialog(
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
                    title: Text(
                      'video.delete_local_video_title'.tr(),
                      style: TextStyle(fontSize: 25),
                    ),
                    content: Text('video.delete_local_video_desc'.tr()),
                  );
                },
              );
              if (returned == true) {
                if (context.mounted) {
                  final bloc = context.read<DownloadVideoBloc>();
                  bloc.add(DownloadVideoEvent.delete(slug: video.slug));
                  final repository = sl<VideoGroupRepositiories>();
                  final repositoryProduct = sl<VideoProductRepositiories>();
                  repository.deleteVideoSlugs(slug: video.slug);
                  repositoryProduct.deleteVideoSlugs(slug: video.slug);
                }
              }
            }
          : null,
      leading: preview != null
          ? SizedBox(
              height: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: CachedNetworkImage(imageUrl: preview),
                ),
              ),
            )
          : null,
      title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: size != null
          ? Text(
              sl<LocalData>().formatSize(size),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          : null,
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }
}
