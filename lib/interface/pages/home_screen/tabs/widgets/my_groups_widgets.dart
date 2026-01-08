import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_groups_item_widgets.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';

class MyGroupsWidgets extends StatelessWidget {
  final List<MyGroupsItem> groups;
  const MyGroupsWidgets({super.key, required this.groups});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: PageView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
              child: ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(20),
                child: Material(
                  color: Colors.transparent,
                  child: MyGroupsItemWidgets(myGroup: groups[index]),
                ),
              ),
            );
          },
          itemCount: groups.length,
        ),
      ),
    );
  }
}
