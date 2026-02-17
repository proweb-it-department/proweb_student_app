import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/download_exclusive_product_modules_video/download_exclusive_product_modules_video_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class DownloadsExclusiveProductModulesVideoScreen extends StatelessWidget {
  final int productId;
  const DownloadsExclusiveProductModulesVideoScreen({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) {
        final bloc = DownloadExclusiveProductModulesVideoBloc();
        bloc.add(
          DownloadExclusiveProductModulesVideoEvent.started(
            productId: productId,
          ),
        );
        return bloc;
      },
      child: DownloadsExclusiveProductModulesVideoScafold(),
    );
  }
}

class DownloadsExclusiveProductModulesVideoScafold extends StatelessWidget {
  const DownloadsExclusiveProductModulesVideoScafold({super.key});

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
          title: Text('downloads.Modules'.tr()),
        ),
        body: DownloadsExclusiveProductModulesVideo(),
      ),
    );
  }
}

class DownloadsExclusiveProductModulesVideo extends StatelessWidget {
  const DownloadsExclusiveProductModulesVideo({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<
      DownloadExclusiveProductModulesVideoBloc,
      DownloadExclusiveProductModulesVideoState
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
                text: 'downloads.There_are_no_modules_in_the_product'.tr(),
                icon: Icons.videocam_off,
              ),
            );
          },
          complited: (modules) {
            return ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
              child: Container(
                color: customColors?.containerColor,
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    final isStart = index == 0;
                    final isEnd = index == (modules.length - 1);
                    final item = modules.elementAt(index);
                    return Padding(
                      padding: EdgeInsetsGeometry.only(bottom: 2),
                      child: ListTileBuilder(
                        isStart: isStart,
                        isEnd: isEnd,
                        builder: (shape, contentPadding, isThreeLine) {
                          return Material(
                            color: Colors.transparent,
                            child: ListTile(
                              onTap: () {
                                context.router.push(
                                  DownloadsExclusiveProductModulesMaterialVideoRoute(
                                    moduleId: item.moduleId,
                                  ),
                                );
                              },
                              shape: shape,
                              contentPadding: contentPadding,
                              selected: true,
                              selectedTileColor: customColors?.primaryBg,
                              selectedColor: customColors?.primaryTextColor,
                              title: Text(
                                item.moduleName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  itemCount: modules.length,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
