import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class CategoryProductView extends StatelessWidget {
  final String? color;
  final String? name;
  const CategoryProductView({super.key, this.color, this.name});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final colorCategory =
        (color != null ? HexColor(color!) : customColors?.primaryBg) ??
        Colors.black;
    final colorImg = ThemeData.estimateBrightnessForColor(colorCategory);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: colorCategory,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        name ?? '---',
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
          color: colorImg == Brightness.dark ? Colors.white : Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }
}
