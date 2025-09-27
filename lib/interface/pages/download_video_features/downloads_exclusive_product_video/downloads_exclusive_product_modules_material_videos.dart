import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/download_exclusive_product_modules_material_videos_list/download_exclusive_product_modules_material_videos_list_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/download_video_item/download_video_item.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class DownloadsExclusiveProductModulesMaterialVideosScreen
    extends StatelessWidget {
  final int materialId;
  const DownloadsExclusiveProductModulesMaterialVideosScreen({
    super.key,
    required this.materialId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DownloadExclusiveProductModulesMaterialVideosListBloc()..add(
            DownloadExclusiveProductModulesMaterialVideosListEvent.started(
              materialId: materialId,
            ),
          ),
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: MainAppBar(isBorder: false),
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
    return BlocBuilder<
      DownloadExclusiveProductModulesMaterialVideosListBloc,
      DownloadExclusiveProductModulesMaterialVideosListState
    >(
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
                text: 'downloads.No_videos_downloaded'.tr(),
                icon: Icons.videocam_off,
              ),
            );
          },
          coplited: (downloaders) {
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
