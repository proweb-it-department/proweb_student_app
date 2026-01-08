import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/download_video/download_video_bloc.dart';
import 'package:proweb_student_app/interface/components/download_video_item/download_video_item.dart';
import 'package:proweb_student_app/interface/components/download_video_progress/download_video_progress.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [DownloadVideosRoute(), DownloadFilesRoute()],
      builder: (context, child, tabController) {
        final customColor = Theme.of(context).extension<CustomColors>();
        return AnnotatedRegion(
          value: FlexColorScheme.themedSystemNavigationBar(
            context,
            systemNavBarStyle: FlexSystemNavBarStyle.transparent,
          ),
          child: TabBarPopScope(
            mainPage: DownloadVideosRoute(),
            child: Scaffold(
              appBar: AppBar(
                shape: Border(
                  bottom: BorderSide(
                    color: customColor?.primaryBgBorder ?? Colors.black,
                    width: 1,
                  ),
                ),
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
                title: Text('Загрузки'),
                bottom: TabBar(
                  controller: tabController,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  indicatorWeight: 4,
                  dragStartBehavior: DragStartBehavior.down,
                  tabs: [
                    Tab(text: 'downloads.down_tab_videos'.tr()),
                    Tab(text: 'downloads.down_tab_files'.tr()),
                  ],
                ),
              ),
              body: child,
            ),
          ),
        );
      },
    );
  }
}

class DownloadBody extends StatelessWidget {
  const DownloadBody({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<DownloadVideoBloc, DownloadVideoState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          download: (download, downloaders) {
            return ListView(
              children: [
                if (download != null)
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'video.download_progress_title'.tr(),
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                if (download != null) DownloadVideoProgress(video: download),
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
                                      child: Text(
                                        'global_data.cansel_btn'.tr(),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop(false);
                                      },
                                    ),
                                    TextButton(
                                      child: Text(
                                        'global_data.delete_btn'.tr(),
                                      ),
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
                          icon: Icon(
                            Icons.delete,
                            color: customColors?.errorFill,
                          ),
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
          },
        );
      },
    );
  }
}
