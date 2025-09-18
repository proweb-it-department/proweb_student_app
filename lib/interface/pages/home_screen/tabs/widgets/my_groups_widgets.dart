import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/my_groups_item_widgets.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class MyGroupsWidgets extends StatelessWidget {
  final List<MyGroupsItem> groups;
  const MyGroupsWidgets({super.key, required this.groups});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * (groups.length > 1 ? 0.9 : 1);
    final customColors = Theme.of(context).extension<CustomColors>();

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: CarouselView(
        itemExtent: width,
        shrinkExtent: width * 0.1,
        itemSnapping: true,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        enableSplash: false,
        backgroundColor: customColors?.containerColor,
        onTap: null,
        children: List.generate(
          groups.length,
          (index) => ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: MyGroupsItemWidgets(myGroup: groups[index]),
          ),
        ),
      ),
    );
  }
}
