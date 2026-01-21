import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';

class GoPage extends StatelessWidget {
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Widget child;
  final Clip clipBehavior = Clip.none;

  const GoPage({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SvgClipper(PathSvgShape.circle),
      child: Container(
        alignment: alignment,
        clipBehavior: clipBehavior,
        color: color,
        constraints: constraints,
        decoration: decoration,
        foregroundDecoration: foregroundDecoration,
        height: height,
        width: width,
        margin: margin,
        padding: padding,
        transform: transform,
        transformAlignment: transformAlignment,
        child: child,
      ),
    );
  }
}
