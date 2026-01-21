import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/product_ditail/product_ditail_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/products/products.dart';
import 'package:proweb_student_app/models/products_modules/products_modules.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ModuleProductScreen extends StatelessWidget {
  final int id;
  const ModuleProductScreen({
    super.key,
    @PathParam.inherit('id') required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final tabController = context.read<TabController>();

    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: MainAppBar(
          isBorder: false,
          tab: TabBar(
            controller: tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorWeight: 4,
            dragStartBehavior: DragStartBehavior.down,
            dividerColor: Colors.transparent,
            tabs: [
              Tab(text: 'shop_app.About_the_product'.tr()),
              Tab(text: 'shop_app.ModuleExcProduct'.tr()),
            ],
          ),
        ),
        body: ModuleProductBody(id: id),
      ),
    );
  }
}

class ModuleProductBody extends StatelessWidget {
  final int id;
  const ModuleProductBody({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<ProductDitailBloc, ProductDitailState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: Md3CirculeIndicator());
          },
          load: () {
            return Center(child: Md3CirculeIndicator());
          },
          error: () {
            return Center(child: ErrorLoad());
          },
          complited: (product, productModules) {
            final bottom = MediaQuery.of(context).viewPadding.bottom;
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
                    bottom: bottom + 10,
                  ),
                  itemBuilder: (context, index) {
                    final modul = productModules.elementAt(index);
                    return ModuleItem(
                      id: id,
                      index: index,
                      length: productModules.length,
                      modul: modul,
                      product: product,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 2),
                  itemCount: productModules.length,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class ModuleItem extends StatelessWidget {
  final ProductsModules modul;
  final Products product;
  final int id;
  final int index;
  final int length;
  const ModuleItem({
    super.key,
    required this.modul,
    required this.index,
    required this.length,
    required this.id,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ListTileBuilder(
      isStart: index == 0,
      isEnd: index == (length - 1),
      builder: (shape, contentPadding, isThreeLine) {
        return Material(
          color: Colors.transparent,
          child: ListTile(
            shape: shape,
            onTap: modul.access == true
                ? () {
                    final moduleId = modul.id;
                    if (moduleId == null) return;
                    context.router.push(
                      ModuleRoute(
                        id: id,
                        moduleId: moduleId,
                        module: modul,
                        product: product,
                      ),
                    );
                  }
                : modul.description == null
                ? null
                : () {
                    _openDialog(context);
                  },
            contentPadding: contentPadding,
            selected: modul.access == true || modul.description != null,
            selectedColor: customColors?.primaryTextColor,
            selectedTileColor: customColors?.primaryBg,
            tileColor: customColors?.primaryBg,
            textColor: customColors?.primaryTextColor,
            title: Text(modul.name ?? '- - -'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                if ((modul.access == false || modul.access == null) &&
                    modul.description != null)
                  Icon(Icons.info_outline),
                modul.access == false || modul.access == null
                    ? Icon(Icons.lock)
                    : IconButtonMoreModule(
                        openDialog: _openDialog,
                        id: id,
                        modul: modul,
                        product: product,
                      ),
              ],
            ),
            leading: CircleAvatar(
              backgroundColor: customColors?.containerColor,
              child: Text(
                '${index + 1}',
                style: TextStyle(color: customColors?.primaryTextColor),
              ),
            ),
          ),
        );
      },
    );
  }

  void _openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('shop_app.About_the_module'.tr()),
          titleTextStyle: TextStyle(fontSize: 20),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [Text(modul.description ?? '- - -')],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.router.pop();
              },
              child: Text('global_data.closed_text'.tr()),
            ),
          ],
        );
      },
    );
  }
}

class IconButtonMoreModule extends StatefulWidget {
  final Function(BuildContext) openDialog;
  final ProductsModules modul;
  final Products product;
  final int id;
  const IconButtonMoreModule({
    super.key,
    required this.openDialog,
    required this.modul,
    required this.id,
    required this.product,
  });

  @override
  State<IconButtonMoreModule> createState() => _IconButtonMoreModuleState();
}

class _IconButtonMoreModuleState extends State<IconButtonMoreModule> {
  final GlobalKey _iconKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: _iconKey,
      icon: const Icon(Icons.more_vert),
      onPressed: () {
        _showContextMenu(context);
      },
    );
  }

  void _showContextMenu(BuildContext context) async {
    final RenderBox button =
        _iconKey.currentContext!.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(
          button.size.bottomRight(Offset.zero),
          ancestor: overlay,
        ),
      ),
      Offset.zero & overlay.size,
    );

    final customColors = Theme.of(context).extension<CustomColors>();

    final result = await showMenu<int>(
      context: context,
      position: position,
      color: customColors?.containerColor,
      items: [
        if (widget.modul.description != null)
          PopupMenuItem(
            value: 0,
            child: Row(
              spacing: 8,
              children: [
                Icon(Icons.info_outline, color: customColors?.additionalTwo),
                Text(
                  'shop_app.About_the_module'.tr(),
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
              Icon(Icons.open_in_new, color: customColors?.additionalTwo),
              Text(
                'global_data.open_text'.tr(),
                style: TextStyle(color: customColors?.primaryTextColor),
              ),
            ],
          ),
        ),
      ],
    );

    if (!context.mounted || result == null) return;

    if (result == 1) {
      final moduleId = widget.modul.id;
      if (moduleId == null) return;
      context.router.push(
        ModuleRoute(
          id: widget.id,
          moduleId: moduleId,
          module: widget.modul,
          product: widget.product,
        ),
      );
    } else if (result == 0) {
      widget.openDialog(context);
    }
  }
}
