import 'dart:ui';
import 'package:flutter/material.dart';

class PredictiveBackGesture extends StatefulWidget {
  final Widget child;
  final double edgeWidth;

  const PredictiveBackGesture({
    super.key,
    required this.child,
    this.edgeWidth = 24,
  });

  @override
  State<PredictiveBackGesture> createState() => _PredictiveBackGestureState();
}

class _PredictiveBackGestureState extends State<PredictiveBackGesture>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _dragging = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _endDrag() {
    if (_controller.value > 0.35) {
      _controller.forward().then((_) {
        Navigator.of(context).maybePop();
      });
    } else {
      _controller.reverse();
    }
    _dragging = false;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            final t = _controller.value;

            return Transform.scale(
              scale: lerpDouble(1.0, 0.70, t)!,
              alignment: Alignment.center,
              child: child,
            );
          },
          child: widget.child,
        ),

        // Edge zone
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          width: widget.edgeWidth,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onHorizontalDragStart: (_) {
              _dragging = true;
            },
            onHorizontalDragUpdate: (details) {
              if (!_dragging) return;

              final delta = details.delta.dx / context.size!.width;
              _controller.value = (_controller.value + delta).clamp(0.0, 1.0);
            },
            onHorizontalDragEnd: (_) => _endDrag(),
            onHorizontalDragCancel: _endDrag,
          ),
        ),
      ],
    );
  }
}
