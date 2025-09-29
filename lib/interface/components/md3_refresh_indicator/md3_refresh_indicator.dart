import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:talker_logger/talker_logger.dart';

/// Полностью самописный кастомный RefreshIndicator
class Md3RefreshIndicator extends StatefulWidget {
  final Widget child;
  final Future<void> Function() onRefresh;
  final double displacement; // смещение для триггера
  final double triggerDistance; // высота до срабатывания
  final Color color;

  const Md3RefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
    this.displacement = 40.0,
    this.triggerDistance = 100.0,
    this.color = Colors.blue,
  });

  @override
  State<Md3RefreshIndicator> createState() => _Md3RefreshIndicatorState();
}

class _Md3RefreshIndicatorState extends State<Md3RefreshIndicator>
    with TickerProviderStateMixin {
  late AnimationController _scaleController;

  double _dragOffset = 0.0;
  bool _isRefreshing = false;
  bool _isReverse = false;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (_isRefreshing) return false;

    // Тащим вниз только если в самом верху списка
    if (notification.metrics.pixels <= 0) {
      if (notification is OverscrollNotification &&
          notification.overscroll < 0) {
        setState(() {
          // увеличиваем offset только при pull-down
          _dragOffset += (-notification.overscroll) / 2;
        });
      } else if (notification is ScrollEndNotification) {
        if (_dragOffset >= widget.triggerDistance) {
          _startRefresh();
        } else {
          _reset();
        }
      }
    }
    return false;
  }

  Future<void> _startRefresh() async {
    setState(() {
      _isRefreshing = true;
      _isReverse = false;
    });
    await _scaleController.forward();
    await widget.onRefresh();
    setState(() {
      _isReverse = true;
    });
    await _scaleController.reverse();
    _reset();
  }

  void _reset() {
    setState(() {
      _dragOffset = 0.0;
      _isRefreshing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final progress = (_dragOffset / widget.triggerDistance).clamp(0.0, 1.0);
    final customColors = Theme.of(context).extension<CustomColors>();
    final double size = 50;
    final double translate = size;
    double forword = 0;
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: Stack(
        children: [
          widget.child,
          if (_dragOffset > 0 || _isRefreshing)
            Positioned(
              top: widget.displacement,
              left: 0,
              right: 0,
              child: Center(
                child: AnimatedBuilder(
                  animation: _scaleController,
                  builder: (context, child) {
                    if (_isRefreshing) {
                      final max = (translate * 2 * _scaleController.value);
                      if (!_isReverse) {
                        forword = translate - max * 0.4;
                      }
                      return Transform.scale(
                        scale: _isReverse ? _scaleController.value : 1,
                        child: Transform.translate(
                          offset: Offset(
                            0,
                            _isReverse
                                ? forword * _scaleController.value
                                : forword,
                          ),
                          child: Md3CirculeIndicator(size: size),
                        ),
                      );
                    } else {
                      return Opacity(
                        opacity: progress,
                        child: Transform.translate(
                          offset: Offset(0, translate * progress),
                          child: Transform.scale(
                            scale: 0.5 * progress + 0.5,
                            child: Transform.rotate(
                              angle: math.pi * 2 * progress,
                              child: Container(
                                width: size,
                                height: size,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: customColors?.additionalOne,
                                  borderRadius: BorderRadius.circular(size),
                                ),
                                child: ClipPath(
                                  clipper: SvgClipper(
                                    PathSvgShape.leaf12Cookie,
                                  ),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Container(
                                    width: size * 0.65,
                                    height: size * 0.65,
                                    color: customColors?.primaryTextColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
