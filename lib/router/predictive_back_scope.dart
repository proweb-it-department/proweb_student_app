import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/physics.dart';

class PredictiveBackScope extends StatefulWidget {
  final Widget child;
  final VoidCallback onPop;

  const PredictiveBackScope({
    super.key,
    required this.child,
    required this.onPop,
  });

  @override
  State<PredictiveBackScope> createState() => _PredictiveBackScopeState();
}

class _PredictiveBackScopeState extends State<PredictiveBackScope>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  static const double _edgeWidth = 24;
  static const double _commitThreshold = 0.35;
  static const double _velocityThreshold = 900;

  static const SpringDescription _spring = SpringDescription(
    mass: 1,
    stiffness: 500,
    damping: 45,
  );

  bool _dragging = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, value: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _update(double dx, double width) {
    _controller.value = (_controller.value + dx / width).clamp(0.0, 1.0);
  }

  void _end(double velocity) {
    final shouldPop =
        _controller.value > _commitThreshold || velocity > _velocityThreshold;

    final target = shouldPop ? 1.0 : 0.0;

    if (shouldPop) {
      HapticFeedback.lightImpact();
    }

    final simulation = SpringSimulation(
      _spring,
      _controller.value,
      target,
      velocity / 1000,
    );

    _controller.animateWith(simulation).then((_) {
      if (shouldPop) widget.onPop();
    });

    _dragging = false;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        final t = _controller.value;

        // opacity всего stack (fade-out в конце)
        final stackOpacity = t < 0.9
            ? 1.0
            : (1 - (t - 0.9) / 0.1).clamp(0.0, 1.0);

        return Opacity(
          opacity: stackOpacity,
          child: Stack(
            children: [
              // scrim над предыдущим экраном
              IgnorePointer(
                child: Container(
                  color: Colors.black.withOpacity(
                    (0.8 * (1 - t)).clamp(0.0, 0.8),
                  ),
                ),
              ),

              // текущий экран
              Transform.translate(
                offset: Offset(width * 0.1 * t, 0),
                child: Transform.scale(
                  scale: 1 - 0.15 * t,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25 * t),
                    child: widget.child,
                  ),
                ),
              ),

              // edge gesture
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                width: _edgeWidth,
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onHorizontalDragStart: (_) => _dragging = true,
                  onHorizontalDragUpdate: (d) {
                    if (_dragging) {
                      _update(d.delta.dx, width);
                    }
                  },
                  onHorizontalDragEnd: (d) {
                    if (_dragging) {
                      _end(d.velocity.pixelsPerSecond.dx);
                    }
                  },
                  onHorizontalDragCancel: () {
                    if (_dragging) _end(0);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
