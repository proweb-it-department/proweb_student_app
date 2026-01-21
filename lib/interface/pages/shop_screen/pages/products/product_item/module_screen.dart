import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/module_materials/module_materials_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/module_material/module_material.dart';
import 'package:proweb_student_app/models/products/products.dart';
import 'package:proweb_student_app/models/products_modules/products_modules.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ModuleScreen extends StatelessWidget {
  final int id;
  final int moduleId;
  final ProductsModules module;
  final Products product;
  const ModuleScreen({
    super.key,
    required this.id,
    required this.moduleId,
    required this.module,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = ModuleMaterialsBloc();
        bloc.add(ModuleMaterialsEvent.started(moduleId: moduleId));
        return bloc;
      },
      child: ModulePage(moduleId: moduleId, module: module, product: product),
    );
  }
}

class ModulePage extends StatelessWidget {
  final int moduleId;
  final ProductsModules module;
  final Products product;
  const ModulePage({
    super.key,
    required this.moduleId,
    required this.module,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: MainAppBar(isBorder: false),
        body: ModuleMaterialBody(
          moduleId: moduleId,
          module: module,
          product: product,
        ),
      ),
    );
  }
}

class ModuleMaterialBody extends StatelessWidget {
  final int moduleId;
  final ProductsModules module;
  final Products product;
  const ModuleMaterialBody({
    super.key,
    required this.moduleId,
    required this.module,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    if (module.access != true) {
      return Center(
        child: NoData(
          text: 'shop_app.Access_to_the_module_is_closed'.tr(),
          icon: Icons.lock,
        ),
      );
    }
    return BlocBuilder<ModuleMaterialsBloc, ModuleMaterialsState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          load: () => Center(child: Md3CirculeIndicator()),
          error: () => Center(
            child: ErrorLoad(
              action: FilledButton(
                onPressed: () {
                  final bloc = context.read<ModuleMaterialsBloc>();
                  bloc.add(ModuleMaterialsEvent.started(moduleId: moduleId));
                },
                child: Text('global_data.try_again'.tr()),
              ),
            ),
          ),
          notFound: () {
            return Center(
              child: NoData(
                text:
                    'shop_app.The_module_materials_will_appear_very_soon_we_are_already_preparing_them_for_you'
                        .tr(),
                icon: Icons.video_camera_back_rounded,
              ),
            );
          },
          complited: (materials) {
            return ModuleMaterialView(
              materials: materials,
              module: module,
              product: product,
            );
          },
        );
      },
    );
  }
}

class ModuleMaterialView extends StatelessWidget {
  final List<ModuleMaterial> materials;
  final ProductsModules module;
  final Products product;
  const ModuleMaterialView({
    super.key,
    required this.materials,
    required this.module,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final paddingBottom = MediaQuery.of(context).viewPadding.bottom;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        color: customColors?.containerColor,
        child: ListView.separated(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: paddingBottom + 10,
          ),
          itemBuilder: (context, index) {
            final material = materials.elementAt(index);
            return ModuleMaterialItem(
              material: material,
              isStart: index == 0,
              isEnd: (materials.length - 1) == index,
              module: module,
              product: product,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 0);
          },
          itemCount: materials.length,
        ),
      ),
    );
  }
}

class ModuleMaterialItem extends StatelessWidget {
  final ModuleMaterial material;
  final bool isStart;
  final bool isEnd;
  final ProductsModules module;
  final Products product;
  const ModuleMaterialItem({
    super.key,
    required this.material,
    required this.isStart,
    required this.isEnd,
    required this.module,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final cover = material.cover;
    final double borderRadius = 16;
    final type = material.type;
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
                  final materialId = material.id;
                  if (materialId == null) return;
                  context.router.push(
                    MaterialProductRoute(
                      materialId: materialId,
                      module: module,
                      product: product,
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (cover != null)
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(
                            borderRadius,
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              color: customColors?.additionalOne,
                              image: DecorationImage(
                                image: CachedNetworkImageProvider(cover),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ListTile(
                      leading: type != null
                          ? IconAvatar(
                              icon: type == ModuleMaterialType.video
                                  ? Icons.play_circle
                                  : type == ModuleMaterialType.text
                                  ? Icons.title
                                  : type == ModuleMaterialType.test
                                  ? Icons.list
                                  : Icons.work,
                            )
                          : null,
                      contentPadding: contentPadding,
                      isThreeLine: true,
                      title: Text(
                        material.name ?? '- - -',
                        style: TextStyle(
                          fontSize: 16,
                          color: customColors?.primaryTextColor,
                        ),
                      ),
                      subtitle: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Material(
                            color: Colors.transparent,
                            clipBehavior: Clip.hardEdge,
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 4,
                                bottom: 4,
                                left: 5,
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                color: customColors?.additionalOne,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                spacing: 4,
                                children: [
                                  Icon(
                                    Icons.access_time_outlined,
                                    color: customColors?.primaryTextColor,
                                  ),
                                  Text(
                                    sl<LocalData>().secondToTime(
                                      (material.duration ?? 0).toDouble(),
                                    ),
                                    style: TextStyle(
                                      color: customColors?.primaryTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
