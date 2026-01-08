import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/download_exclusive_product_modules_material_video/download_exclusive_product_modules_material_video_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class DownloadsExclusiveProductModulesMaterialVideoScreen
    extends StatelessWidget {
  final int moduleId;
  const DownloadsExclusiveProductModulesMaterialVideoScreen({
    super.key,
    required this.moduleId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = DownloadExclusiveProductModulesMaterialVideoBloc();
        bloc.add(
          DownloadExclusiveProductModulesMaterialVideoEvent.started(
            moduleId: moduleId,
          ),
        );
        return bloc;
      },
      child: const DownloadsExclusiveProductModulesMaterialVideoScafold(),
    );
  }
}

class DownloadsExclusiveProductModulesMaterialVideoScafold
    extends StatelessWidget {
  const DownloadsExclusiveProductModulesMaterialVideoScafold({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return AnnotatedRegion(
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
              backgroundColor: customColors?.containerColor,
            ),
            icon: Icon(Icons.arrow_back, color: customColors?.primaryTextColor),
          ),
          title: Text('Материалы'),
        ),
        body: const DownloadsExclusiveProductModulesMaterialVideoBody(),
      ),
    );
  }
}

class DownloadsExclusiveProductModulesMaterialVideoBody
    extends StatelessWidget {
  const DownloadsExclusiveProductModulesMaterialVideoBody({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<
      DownloadExclusiveProductModulesMaterialVideoBloc,
      DownloadExclusiveProductModulesMaterialVideoState
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
          complited: (materials) {
            return ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
              child: Container(
                color: customColors?.containerColor,
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: materials.length,
                  itemBuilder: (context, index) {
                    final material = materials.elementAt(index);
                    return ModuleMaterialItem(
                      material: material,
                      isStart: index == 0,
                      isEnd: index == (materials.length - 1),
                    );
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

class ModuleMaterialItem extends StatelessWidget {
  final ExclusiveProductModuleMaterialModelData material;
  final bool isStart;
  final bool isEnd;
  const ModuleMaterialItem({
    super.key,
    required this.material,
    required this.isStart,
    required this.isEnd,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final double borderRadius = 16;
    final file = File(material.cover);
    return ListTileBuilder(
      isStart: isStart,
      isEnd: isEnd,
      builder: (shape, contentPadding, isThreeLine) {
        return Card.outlined(
          shape: shape,
          clipBehavior: Clip.antiAlias,
          color: customColors?.primaryBg,
          child: ClipRRect(
            borderRadius: shape.borderRadius,
            child: Material(
              shape: shape,
              color: Colors.transparent,
              child: InkWell(
                enableFeedback: true,
                onTap: () {
                  context.router.push(
                    DownloadsExclusiveProductModulesMaterialVideosRoute(
                      materialId: material.materialId,
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(
                          borderRadius,
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            color: customColors?.additionalOne,
                            image: file.existsSync()
                                ? DecorationImage(
                                    image: Image.file(file).image,
                                    fit: BoxFit.cover,
                                  )
                                : null,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: contentPadding,
                      title: Text(
                        material.moduleName,
                        style: TextStyle(
                          fontSize: 16,
                          color: customColors?.primaryTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
