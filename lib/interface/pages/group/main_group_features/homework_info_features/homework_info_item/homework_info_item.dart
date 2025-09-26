import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/homework_list_group/homework_list_group.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/color_helper/color_helper.dart';
import 'package:proweb_student_app/utils/color_helper/shade_colors.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class HomeworkInfoItem extends StatefulWidget {
  final HomeworkListGroup item;
  final GroupDetail group;
  final bool isStart;
  final bool isEnd;
  const HomeworkInfoItem({
    super.key,
    required this.item,
    required this.group,
    required this.isStart,
    required this.isEnd,
  });

  @override
  State<HomeworkInfoItem> createState() => _HomeworkInfoItemState();
}

class _HomeworkInfoItemState extends State<HomeworkInfoItem> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    ShadeColors? shades;
    ColorCreater? selected;
    final color = widget.group.course?.color;
    if (color != null) {
      shades = ShadeColors(color)..generate();
      selected = shades.theme(context, light: 50, dark: 1100);
    }
    return ListTileBuilder(
      isStart: widget.isStart,
      isEnd: widget.isEnd,
      builder: (shape, contentPadding, isThreeLine) {
        return Material(
          color: Colors.transparent,
          child: ListTile(
            shape: shape,
            contentPadding: contentPadding,
            onTap: () {
              context.router.push(
                HomeworkRouteRoute(
                  relationId: widget.item.id ?? 0,
                  groupId: widget.group.id ?? 0,
                ),
              );
            },

            leading: Icon(Icons.assignment),
            tileColor: customColors?.primaryBg,
            title: Text(
              widget.item.homework?.name ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              sl<LocalData>().getDateString(
                date: DateTime.parse(widget.item.createdAt ?? '03.02.2025'),
              ),
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if ((widget.item.checked == true &&
                        widget.item.hasMaterial == true &&
                        widget.item.score != null) ||
                    widget.item.checked == false &&
                        widget.item.hasMaterial == false)
                  IntrinsicWidth(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(
                          color:
                              customColors?.borderColors ?? Colors.transparent,
                        ),
                        color: HexColor(
                          selected?.hexString() ??
                              widget.group.course?.color ??
                              '#ffffff',
                        ),
                      ),
                      child: Row(
                        spacing: 5,
                        children: List.generate(5, (index) {
                          final isTrue =
                              widget.item.checked == true &&
                              widget.item.hasMaterial == true &&
                              widget.item.score != null;
                          final double opacity =
                              (index) >
                                  (isTrue ? widget.item.score ?? 1 : 0) - 1
                              ? 0.1
                              : 1;
                          return Opacity(
                            opacity: opacity,
                            child: ClipPath(
                              clipper: SvgClipper(
                                index == 0
                                    ? PathSvgShape.arch
                                    : index == 1
                                    ? PathSvgShape.bun
                                    : index == 2
                                    ? PathSvgShape.gem
                                    : index == 3
                                    ? PathSvgShape.ghostIsh
                                    : PathSvgShape.sunny,
                              ),
                              child: Container(
                                width: 20,
                                height: 20,
                                color: HexColor(
                                  widget.group.course?.color ?? '#ffffff',
                                ),
                                child: Center(
                                  child: Text(
                                    '${index + 1}',
                                    style: TextStyle(
                                      color:
                                          ThemeData.estimateBrightnessForColor(
                                                HexColor(
                                                  widget.group.course?.color ??
                                                      '#ffffff',
                                                ),
                                              ) ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  )
                else
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: HexColor(
                          widget.group.course?.color ?? '#ffffff',
                        ).withAlpha(80),
                      ),
                      child: Row(
                        spacing: 7,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.item.checked == false &&
                              widget.item.hasMaterial == false)
                            Icon(Icons.close, color: Colors.black, size: 16),
                          if (widget.item.checked == false &&
                              widget.item.hasMaterial == false)
                            Text(
                              'group_homework.not_passed'.tr(),
                              style: TextStyle(color: Colors.black),
                            ),
                          if (widget.item.checked == false &&
                              widget.item.hasMaterial == true)
                            SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.black,
                              ),
                            ),
                          if (widget.item.checked == false &&
                              widget.item.hasMaterial == true)
                            Text(
                              'group_homework.under_inspection'.tr(),
                              style: TextStyle(color: Colors.black),
                            ),
                          if (widget.item.checked == true &&
                              widget.item.hasMaterial == true)
                            Icon(
                              Icons.check_circle_outline,
                              color: Colors.black,
                            ),
                          if (widget.item.checked == true &&
                              widget.item.hasMaterial == true)
                            Text(
                              '${widget.item.score}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
