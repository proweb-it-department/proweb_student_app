import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/app_bar/go_page.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:talker_logger/talker_logger.dart';

class MyGroupsItemWidgets extends StatefulWidget {
  final MyGroupsItem myGroup;
  const MyGroupsItemWidgets({super.key, required this.myGroup});

  @override
  State<MyGroupsItemWidgets> createState() => _MyGroupsItemWidgetsState();
}

class _MyGroupsItemWidgetsState extends State<MyGroupsItemWidgets> {
  Offset _tapPosition = Offset.zero;

  void _getTapPosition(TapDownDetails position) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    setState(() {
      _tapPosition = position.globalPosition;
    });
  }

  void _showContextMenu(BuildContext context) async {
    RenderObject? overlay = Overlay.of(context).context.findRenderObject();
    final customColors = Theme.of(context).extension<CustomColors>();

    final result = await showMenu<int>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 10, 10),
        Rect.fromLTWH(
          0,
          0,
          overlay!.paintBounds.size.width,
          overlay.paintBounds.size.height,
        ),
      ),
      color: customColors?.containerColor,
      items: [
        PopupMenuItem(
          value: 0,
          child: Row(
            spacing: 8,
            children: [
              Icon(
                Icons.video_collection_outlined,
                color: customColors?.additionalTwo,
              ),
              Text(
                "education.group_lessons_info".tr(),
                style: TextStyle(color: customColors?.primaryTextColor),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            spacing: 8,
            children: [
              Icon(Icons.document_scanner, color: customColors?.additionalTwo),
              Text(
                "education.group_tasks".tr(),
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
              Icon(Icons.check_box, color: customColors?.additionalTwo),
              Text(
                "education.attendance_log".tr(),
                style: TextStyle(color: customColors?.primaryTextColor),
              ),
            ],
          ),
        ),
      ],
    );
    if (context.mounted && result != null) {
      final groupId = widget.myGroup.group?.id;
      if (groupId == null) return;
      if (result == 0) {
        context.router.pushPath('/group/$groupId/lessons/');
      } else if (result == 1) {
        context.router.pushPath('/group/$groupId/attendancebook/');
      } else if (result == 2) {
        context.router.pushPath('/group/$groupId/homeworks/');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final block = _isBlock();
    final customColors = Theme.of(context).extension<CustomColors>();
    String? url;
    if (widget.myGroup.group?.course?.posters?.isNotEmpty == true) {
      url = widget.myGroup.group?.course?.posters?.first.image;
    }
    final double width = MediaQuery.sizeOf(context).width;
    final borderRadius = BorderRadius.circular(22);
    final isLeave = widget.myGroup.status == StudentStatus.leave;
    final isTransfer =
        widget.myGroup.status == StudentStatus.transfer ||
        widget.myGroup.status == StudentStatus.transferOtherCourse;
    final isGraduated =
        widget.myGroup.status == StudentStatus.graduate ||
        widget.myGroup.status == StudentStatus.partiallyCompleted;
    final graduated = widget.myGroup.group?.graduatedDate;
    final isPremium = widget.myGroup.hasPackage == true;
    final lesson = widget.myGroup.group?.lessons?.firstOrNull;
    return InkWell(
      onTapDown: block ? null : _getTapPosition,
      onTap: block
          ? null
          : () {
              context.router.push(
                MainGroupRoute(groupId: widget.myGroup.group!.id!),
              );
            },
      onLongPress: block
          ? null
          : () {
              _showContextMenu(context);
            },
      borderRadius: borderRadius,
      child: Stack(
        children: [
          Ink(
            width: width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: customColors?.primaryBg,
              borderRadius: borderRadius,
              border: isPremium
                  ? GradientBoxBorder(
                      gradient: LinearGradient(
                        begin: AlignmentGeometry.topLeft,
                        end: AlignmentGeometry.bottomRight,
                        colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
                      ),
                      width: 2,
                    )
                  : Border.all(
                      color: customColors?.borderColors ?? Colors.transparent,
                      width: 2,
                    ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                IntrinsicHeight(
                  child: Ink(
                    width: width - 20,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: customColors?.primaryBg,
                      borderRadius: BorderRadius.circular(12),
                      image: url != null
                          ? DecorationImage(
                              image: CachedNetworkImageProvider(url),
                              fit: BoxFit.cover,
                              alignment: AlignmentGeometry.topCenter,
                            )
                          : null,
                    ),
                    child: Row(
                      mainAxisAlignment: block
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: CourseAvatar(
                            icon: widget.myGroup.group!.course!.icon!,
                            color: HexColor(
                              widget.myGroup.group!.course!.color!,
                            ),
                            borderRadius: 70,
                            padding: 10,
                            size: 50,
                          ),
                        ),
                        if (block == false)
                          InkWell(
                            onTapDown: block ? null : _getTapPosition,
                            onTap: block
                                ? null
                                : () {
                                    _showContextMenu(context);
                                  },
                            borderRadius: BorderRadius.circular(22),
                            child: Ink(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: customColors?.primaryBg,
                              ),
                              child: Icon(Icons.more_vert),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  widget.myGroup.group?.course?.name ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: customColors?.primaryTextColor,
                  ),
                ),
                // SizedBox(height: 3),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'education.group_id'.tr(
                      namedArgs: {'id': widget.myGroup.group!.id.toString()},
                    ),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: customColors?.primaryTextColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IntrinsicWidth(
                      child: IntrinsicHeight(
                        child: Ink(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: customColors?.containerColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Opacity(
                            opacity: 0.5,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              spacing: 5,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 5,
                                  children: [
                                    Icon(
                                      block
                                          ? Icons.lock_outline
                                          : isLeave
                                          ? Icons.close
                                          : isTransfer
                                          ? Icons.published_with_changes
                                          : isGraduated
                                          ? Icons.celebration
                                          : Icons.check,
                                      size: 12,
                                    ),
                                    Text(
                                      block
                                          ? 'Доступ закрыт'
                                          : isLeave
                                          ? 'Обучение остановлено'
                                          : isTransfer
                                          ? 'Вы перевелись'
                                          : isGraduated
                                          ? graduated == null
                                                ? 'Вы выпустились'
                                                : sl<LocalData>().getDateString(
                                                    date: DateTime.parse(
                                                      graduated,
                                                    ),
                                                  )
                                          : lesson?.status == 'active' &&
                                                lesson?.datetime != null
                                          ? '${sl<LocalData>().getDateString(date: DateTime.parse(lesson!.datetime!).toLocal())}, ${DateTime.parse(lesson.datetime!).toLocal().hour.toString().padLeft(2, '0')}:${DateTime.parse(lesson.datetime!).toLocal().minute.toString().padLeft(2, '0')}'
                                          : 'В процессе обучения',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GoPage(
                      color: customColors?.containerColor,
                      width: 40,
                      height: 40,
                      child: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 80,
            child: Ink(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: customColors?.primaryTextColor,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 5,
                children: [
                  Icon(
                    block
                        ? Icons.lock_outline
                        : isLeave
                        ? Icons.close
                        : isTransfer
                        ? Icons.published_with_changes
                        : isGraduated
                        ? Icons.celebration
                        : Icons.check,
                    color: customColors?.primaryBg,
                    size: 16,
                  ),
                  Text(
                    block
                        ? 'Доступ закрыт'
                        : isLeave
                        ? 'Обучение остановлено'
                        : isTransfer
                        ? 'Вы перевелись'
                        : isGraduated
                        ? 'Вы выпустились'
                        : 'В процессе обучения',
                    style: TextStyle(
                      color: customColors?.primaryBg,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isBlock() {
    return widget.myGroup.status == StudentStatus.notConfirmedReservation ||
        widget.myGroup.status == StudentStatus.reservation ||
        widget.myGroup.status == StudentStatus.notConfirmed ||
        widget.myGroup.status == StudentStatus.autoActivate ||
        widget.myGroup.status == StudentStatus.leaveReservation ||
        widget.myGroup.status == StudentStatus.unstartedLeave;
  }
}

class CourseAvatar extends StatelessWidget {
  final String icon;
  final Color color;
  final double? size;
  final double? borderRadius;
  final double? padding;
  const CourseAvatar({
    super.key,
    required this.icon,
    required this.color,
    this.size,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final colorImg = ThemeData.estimateBrightnessForColor(color);
    return Ink(
      width: size ?? 40,
      height: size ?? 40,
      padding: EdgeInsets.all(padding ?? 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 10)),
        color: color,
      ),
      child: Center(
        child: CachedNetworkImage(
          imageUrl: icon,
          colorBlendMode: BlendMode.srcIn,
          color: colorImg == Brightness.dark ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
