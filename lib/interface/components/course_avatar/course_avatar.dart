import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
    this.size = 40,
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
