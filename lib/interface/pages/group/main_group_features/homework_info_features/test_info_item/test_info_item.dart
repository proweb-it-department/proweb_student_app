import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/test_list_group/test_list_group.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class TestInfoItem extends StatefulWidget {
  final TestListGroup item;
  final GroupDetail group;
  const TestInfoItem({super.key, required this.item, required this.group});

  @override
  State<TestInfoItem> createState() => _TestInfoItemState();
}

class _TestInfoItemState extends State<TestInfoItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        onTap: () {
          context.router.push(
            TestRouteRoute(
              relationId: widget.item.id ?? 0,
              groupId: widget.group.id ?? 0,
            ),
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: Icon(Icons.checklist),
        tileColor: HexColor(
          widget.group.course?.color ?? '#ffffff',
        ).withAlpha(20),
        title: Text(
          widget.item.testing?.name ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          sl<LocalData>().getDateString(
            date: DateTime.parse(widget.item.createdAt ?? '03.02.2025'),
          ),
        ),
      ),
    );
  }
}
