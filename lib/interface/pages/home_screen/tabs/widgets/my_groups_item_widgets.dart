import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

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
      _tapPosition = renderBox.localToGlobal(position.localPosition);
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
        context.router.pushPath('/group/$groupId/homeworks/');
      } else if (result == 2) {
        context.router.pushPath('/group/$groupId/attendancebook/');
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
    return GestureDetector(
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
      child: Stack(
        children: [
          ClipRect(
            child: OverflowBox(
              maxWidth: width,
              minWidth: width,
              child: url != null
                  ? Image(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(url),
                    )
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, right: 0, bottom: 8),
                child: Text(
                  'education.group_id'.tr(
                    namedArgs: {'id': widget.myGroup.group!.id.toString()},
                  ),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        blurRadius: 2,
                        color: Colors.black,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 0, bottom: 8),
                child: Text(
                  widget.myGroup.group?.course?.name ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 2,
                        color: Colors.black,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          if (block)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                color: customColors?.primaryBg.withAlpha(150),
                child: Center(child: Icon(Icons.lock, size: 50)),
              ),
            )
          else
            Positioned(
              right: 0,
              top: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 30, top: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.white.withAlpha(200),
                  child: Icon(Icons.keyboard_arrow_right, color: Colors.black),
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
    return Container(
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
