import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:path_drawing/path_drawing.dart';

class SvgClipper extends CustomClipper<Path> {
  final PathSvgShape shape;
  SvgClipper(this.shape);

  Path get path => parseSvgPathData(shape.path);

  @override
  Path getClip(Size size) {
    final Rect bounds = path.getBounds();

    final Matrix4 matrix4 = Matrix4.identity()
      ..scaleByVector3(
        Vector3(size.width / bounds.width, size.height / bounds.height, 1),
      )
      ..translateByVector3(Vector3(-bounds.left, -bounds.top, 0));

    return path.transform(matrix4.storage);
  }

  @override
  bool shouldReclip(SvgClipper oldClipper) => oldClipper.shape != shape;
}
