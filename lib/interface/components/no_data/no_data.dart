import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
    final shapesPath = [
      PathSvgShape.leaf4Cookie,
      PathSvgShape.pill,
      PathSvgShape.slanted,
      PathSvgShape.gem,
      PathSvgShape.square,
      PathSvgShape.sunny,
      PathSvgShape.leaf8Clover,
      PathSvgShape.leaf6Cookie,
    ];
    final colorsPath = [
      HexColor('#B54708'),
      HexColor('#DC6803'),
      HexColor('#027A48'),
      HexColor('#039855'),
      HexColor('#0F766E'),
      HexColor('#0284C7'),
      HexColor('#155EEF'),
      HexColor('#3538CD'),
      HexColor('#7A5AF8'),
      HexColor('#A61B5B'),
    ];
    final random = Random();

    final randomShape = shapesPath[random.nextInt(shapesPath.length)];
    final randomColor = colorsPath[random.nextInt(colorsPath.length)];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -5,
              top: -5,
              child: Opacity(
                opacity: 0.3,
                child: ClipPath(
                  clipper: SvgClipper(shape ?? randomShape),
                  child: Container(
                    color: color ?? randomColor,
                    width: 40 * 1.5,
                    height: 40 * 1.5,
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper: SvgClipper(shape ?? randomShape),
              child: Container(
                color: color ?? randomColor,
                width: 40 * 2,
                height: 40 * 2,
                child: Icon(
                  icon,
                  color: colorImg == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  size: size ?? 30,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(text, style: textStyle, textAlign: textAlign ?? TextAlign.center),
        if (action != null) SizedBox(height: 5),
        if (action != null) action!,
      ],
    );
  }
}
