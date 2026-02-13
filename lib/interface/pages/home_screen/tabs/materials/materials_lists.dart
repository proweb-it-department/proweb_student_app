import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/bloc/home_material/home_material_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_item/homework_info_item.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/home_homework_screen.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/material_homepage_group/material_homepage_group.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:proweb_student_app/utils/ts_map.dart';

class MaterialsProvider extends StatelessWidget {
  final MyGroupsItem? group;
  final GroupDetail? groupDetail;
  const MaterialsProvider({super.key, required this.group, this.groupDetail});

  @override
  Widget build(BuildContext context) {
    int? groupId;
    if (group != null) {
      groupId = group?.group?.id;
    } else if (groupDetail != null) {
      groupId = groupDetail?.id;
    }
    if (group == null && groupDetail == null) {
      return ErrorLoad();
    }
    if (groupId == null) {
      return ErrorLoad();
    }
    return BlocProvider(
      create: (context) => HomeMaterialBloc()
        ..add(
          HomeMaterialEvent.started(groupId: groupId!, limit: 50, offset: 0),
        ),
      child: MaterialViewData(group: group, groupDetail: groupDetail),
    );
  }
}

class MaterialViewData extends StatelessWidget {
  final MyGroupsItem? group;
  final GroupDetail? groupDetail;
  const MaterialViewData({super.key, this.group, this.groupDetail});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeMaterialBloc, HomeMaterialState>(
      builder: (context, state) {
        return switch (state) {
          HomeMaterialStateInitial() => Md3CirculeIndicator(),
          HomeMaterialStateComplited(
            materials: final materials,
            load: final load,
          ) =>
            ListMaterial(
              data: materials,
              group: group,
              groupDetail: groupDetail,
              load: load,
            ),
        };
      },
    );
  }
}

class ListMaterial extends StatefulWidget {
  final MyGroupsItem? group;
  final GroupDetail? groupDetail;
  final bool load;
  final DataHomeMaterial data;
  const ListMaterial({
    super.key,
    required this.data,
    this.group,
    required this.load,
    this.groupDetail,
  });

  @override
  State<ListMaterial> createState() => _ListMaterialState();
}

class _ListMaterialState extends State<ListMaterial> {
  late final ScrollEndNotifier notifier;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    notifier = ScrollEventInherited.of(context);
    notifier.addListener(_onScrollEnd);
  }

  void _onScrollEnd() {
    if (context.mounted && mounted) {
      final data = context.read<HomeMaterialBloc>();
      final load = data.state.when(
        initial: () => null,
        complited: (_, load) => load,
      );
      final homeworks = data.state.when(
        initial: () => null,
        complited: (homeworks, load) => homeworks,
      );
      if (load == true) return;
      if (homeworks == null) return;
      final count = homeworks.count;
      final length = homeworks.map.values.toList().fold(
        0,
        (value, element) => value + element.length,
      );
      if (length < count && (load == false || load == null)) {
        int? groupId;
        if (widget.group != null) {
          groupId = widget.group?.group?.id;
        } else if (widget.groupDetail != null) {
          groupId = widget.groupDetail?.id;
        }
        if (groupId == null) return;
        data.add(
          HomeMaterialEvent.started(
            groupId: groupId,
            limit: 50,
            offset: length,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    notifier.removeListener(_onScrollEnd);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> month = widget.data.map.keys.toList();
    String? groupColor;
    if (widget.group?.group != null) {
      groupColor = widget.group?.group?.course?.color;
    } else if (widget.groupDetail != null) {
      groupColor = widget.groupDetail?.course?.color;
    }
    if (month.isEmpty && widget.load == false) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: NoData(
            text: 'Преподаватель еще не назначил ни одного материала Вам.',
            icon: Icons.description,
            color: groupColor != null ? HexColor(groupColor) : null,
            shape: PathSvgShape.fan,
          ),
        ),
      );
    }
    month.sort(
      (a, b) =>
          (DateTime.parse('$b-01').millisecondsSinceEpoch) -
          (DateTime.parse('$a-01').millisecondsSinceEpoch),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        for (final e in month)
          ItemMonthMaterial(
            month: e,
            data: widget.data.map,
            group: widget.group,
            groupDetail: widget.groupDetail,
          ),

        if (widget.load)
          Padding(
            padding: EdgeInsetsGeometry.only(bottom: 20),
            child: Md3CirculeIndicator(),
          ),
      ],
    );
  }
}

class ItemMonthMaterial extends StatelessWidget {
  final MyGroupsItem? group;
  final GroupDetail? groupDetail;
  final String month;
  final TsMap<String, List<MaterialHomepageGroup>> data;
  const ItemMonthMaterial({
    super.key,
    required this.month,
    required this.data,
    this.group,
    this.groupDetail,
  });

  @override
  Widget build(BuildContext context) {
    final date = '$month-01';
    final list = data.get(month);
    String? groupColor;
    if (group?.group != null) {
      groupColor = group?.group?.course?.color;
    } else if (groupDetail != null) {
      groupColor = groupDetail?.course?.color;
    }
    final courseColor = HexColor(groupColor ?? '#ffffff');
    final colorImg = ThemeData.estimateBrightnessForColor(courseColor);
    final customColors = Theme.of(context).extension<CustomColors>();
    if (list == null) {
      return SizedBox();
    }
    int? groupId;
    if (group != null) {
      groupId = group?.group?.id;
    } else if (groupDetail != null) {
      groupId = groupDetail?.id;
    }
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 10, bottom: 10),
      child: Stack(
        children: [
          Positioned(
            top: 13,
            bottom: 5,
            left: 44,
            child: Container(
              width: 2,
              decoration: BoxDecoration(
                color: courseColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Container(
                  height: 30,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: courseColor,
                  ),
                  child: Text(
                    sl<LocalData>().getDateString(
                      date: DateTime.parse(date),
                      seporator: DateSeporator.wMY,
                    ),
                    style: TextStyle(
                      color: colorImg == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: courseColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 2,
                  children: list.map((e) {
                    final index = list.indexWhere(
                      (element) => element.material?.id == e.material?.id,
                    );
                    return ListTileBuilder(
                      isStart: index == 0,
                      isEnd: index == (list.length - 1),
                      builder: (shape, contentPadding, isThreeLine) {
                        return Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          child: ListTile(
                            dense: true,
                            onTap: () {
                              context.router.push(
                                MaterialViewRoute(
                                  relationId: e.material?.id ?? 0,
                                  groupId: groupId ?? 0,
                                ),
                              );
                            },
                            tileColor: customColors?.primaryBg,
                            shape: shape,
                            title: Text(
                              e.material?.name ?? '- - -',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Wrap(
                              spacing: 7,
                              children: [
                                Text(
                                  sl<LocalData>().getDateString(
                                    date: DateTime.parse(
                                      e.createdAt ?? '2026-01-15',
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: customColors?.primaryTextColor
                                        .withAlpha(150),
                                  ),
                                ),
                              ],
                            ),
                            trailing: TrailingWork(color: groupColor),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TrailingWork extends StatelessWidget {
  final String? color;
  const TrailingWork({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    final brightness = ThemeData.estimateBrightnessForColor(
      HexColor(color ?? '#ffffff'),
    );
    final colorText = brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
    return ScoreIcon(
      score: 0,
      child: Container(
        width: 30,
        height: 30,
        color: HexColor(color ?? '#ffffff'),
        child: Center(child: Icon(Icons.chevron_right, color: colorText)),
      ),
    );
  }
}
