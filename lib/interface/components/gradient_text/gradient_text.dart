import 'dart:math';
import 'package:flutter/material.dart';

class GradientTextPaint extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;
  final bool fitToContainer;
  final double minShaderWidth;
  final double expandFactor;
  const GradientTextPaint({
    super.key,
    required this.text,
    required this.style,
    required this.gradient,
    this.fitToContainer = false,
    this.minShaderWidth = 48.0,
    this.expandFactor = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    if (fitToContainer) {
      return ShaderMask(
        shaderCallback: (bounds) {
          return gradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          );
        },
        blendMode: BlendMode.srcIn,
        child: Text(text, style: style.copyWith(color: Colors.white)),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final textDirection = Directionality.of(context);
        final tp = TextPainter(
          text: TextSpan(text: text, style: style),
          textDirection: textDirection,
          maxLines: 1,
          ellipsis: null,
        );

        final maxWidth = constraints.hasBoundedWidth
            ? constraints.maxWidth
            : double.infinity;
        tp.layout(minWidth: 0, maxWidth: maxWidth);

        double shaderWidth = tp.width;
        shaderWidth = max(shaderWidth * expandFactor, minShaderWidth);

        final shaderHeight = tp.height > 0
            ? tp.height
            : (style.fontSize ?? 20.0);

        final shader = gradient.createShader(
          Rect.fromLTWH(0, 0, shaderWidth, shaderHeight),
        );

        return Text(
          text,
          style: style.copyWith(foreground: Paint()..shader = shader),
        );
      },
    );
  }
}
