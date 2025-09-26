import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';

class IconAvatar extends StatelessWidget {
  final IconData icon;
  final double size;
  final PathSvgShape? clipPath;
  final LinearGradient? gradient;

  const IconAvatar({
    super.key,
    required this.icon,
    this.size = 35,
    this.gradient,
    this.clipPath,
  });

  static final List<Color> _colors = [
    Colors.red.shade800,
    Colors.pink.shade800,
    Colors.purple.shade800,
    Colors.deepPurple.shade800,
    Colors.indigo.shade800,
    Colors.blue.shade800,
    Colors.lightBlue.shade800,
    Colors.cyan.shade800,
    Colors.teal.shade800,
    Colors.green.shade800,
    Colors.lightGreen.shade800,
    Colors.lime.shade800,
    Colors.yellow.shade800,
    Colors.amber.shade800,
    Colors.orange.shade800,
    Colors.deepOrange.shade800,
    Colors.brown.shade800,
    Colors.blueGrey.shade800,
  ];

  Color _getColorForIcon(IconData icon) {
    final int index = icon.codePoint % _colors.length;
    return _colors[index];
  }

  @override
  Widget build(BuildContext context) {
    if (gradient != null) {
      return ClipPath(
        clipper: clipPath != null ? SvgClipper(clipPath!) : null,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(gradient: gradient!),
          child: Icon(icon, color: Colors.white, size: size * 0.6),
        ),
      );
    }
    return ClipPath(
      clipper: clipPath != null ? SvgClipper(clipPath!) : null,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: _getColorForIcon(icon),
          borderRadius: clipPath != null ? null : BorderRadius.circular(size),
        ),
        child: Icon(icon, color: Colors.white, size: size * 0.6),
      ),
    );
  }
}
