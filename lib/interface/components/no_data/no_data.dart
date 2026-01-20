import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class NoData extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget? action;
  final double? size;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final Color? color;
  final PathSvgShape? shape;
  const NoData({
    super.key,
    required this.text,
    required this.icon,
    this.action,
    this.textStyle,
    this.textAlign,
    this.size,
    this.color,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomColors>();
    final colorImg = ThemeData.estimateBrightnessForColor(
      color ?? customTheme?.containerColor ?? Colors.black,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipPath(
          clipper: SvgClipper(shape ?? PathSvgShape.leaf4Cookie),
          child: Container(
            color: color ?? customTheme?.containerColor,
            width: 40 * 2,
            height: 40 * 2,
            child: Icon(
              icon,
              color: colorImg == Brightness.dark ? Colors.white : Colors.black,
              size: size ?? 30,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(text, style: textStyle, textAlign: textAlign ?? TextAlign.center),
        if (action != null) SizedBox(height: 5),
        if (action != null) action!,
      ],
    );
  }
}
