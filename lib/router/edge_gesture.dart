import 'package:flutter/material.dart';
import 'package:proweb_student_app/router/predictive_back_controller.dart';

class PredictiveBackGesture extends StatelessWidget {
  final PredictiveBackController controller;
  final void Function(double velocity) onEnd;

  const PredictiveBackGesture({
    super.key,
    required this.controller,
    required this.onEnd,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      width: 24,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onHorizontalDragUpdate: (d) {
          controller.update(d.localPosition.dx / width);
        },
        onHorizontalDragEnd: (d) {
          onEnd(d.velocity.pixelsPerSecond.dx);
        },
      ),
    );
  }
}
