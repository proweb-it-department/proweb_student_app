import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/material_list_group/material_list_group.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class MaterialInfoItem extends StatefulWidget {
  final MaterialListGroup item;
  final GroupDetail group;
  const MaterialInfoItem({super.key, required this.item, required this.group});

  @override
  State<MaterialInfoItem> createState() => _MaterialInfoItemState();
}

class _MaterialInfoItemState extends State<MaterialInfoItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        onTap: () {
          context.router.push(
            MaterialViewRoute(
              groupId: widget.group.id ?? 0,
              relationId: widget.item.material?.id ?? 0,
            ),
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: Icon(Icons.description),
        tileColor: HexColor(
          widget.group.course?.color ?? '#ffffff',
        ).withAlpha(20),
        title: Text(
          widget.item.material?.name ?? '',
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
