import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/homework_list_group/homework_list_group.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class HomeworkInfoItem extends StatefulWidget {
  final HomeworkListGroup item;
  final GroupDetail group;
  const HomeworkInfoItem({super.key, required this.item, required this.group});

  @override
  State<HomeworkInfoItem> createState() => _HomeworkInfoItemState();
}

class _HomeworkInfoItemState extends State<HomeworkInfoItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        onTap: () {
          context.router.push(
            HomeworkRouteRoute(
              relationId: widget.item.id ?? 0,
              groupId: widget.group.id ?? 0,
            ),
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: Icon(Icons.assignment),
        tileColor: HexColor(
          widget.group.course?.color ?? '#ffffff',
        ).withAlpha(20),
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
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                      Icon(Icons.check_circle_outline, color: Colors.black),
                    if (widget.item.checked == true &&
                        widget.item.hasMaterial == true)
                      Text(
                        '${widget.item.score}',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
