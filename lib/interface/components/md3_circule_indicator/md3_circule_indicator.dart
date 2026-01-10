import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class Md3CirculeIndicator extends StatefulWidget {
  final double size;
  final Color? background;
  final Color? shapeColor;
  final bool center;
  const Md3CirculeIndicator({
    super.key,
    this.size = 50,
    this.background,
    this.shapeColor,
    this.center = true,
  });

  @override
  State<Md3CirculeIndicator> createState() => _Md3CirculeIndicatorState();
}

class _Md3CirculeIndicatorState extends State<Md3CirculeIndicator>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _rotation;

  late final AnimationController _scaleController;
  late final Animation<double> _scale;

  int _currentIndex = 0;
  bool _isDisposed = false;
  bool _switched = false;
  double _currentAngle = 0.0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _scale = TweenSequence([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.0,
          end: 1.1,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.1,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.easeIn)),
        weight: 50,
      ),
    ]).animate(_scaleController);

    _setupAnimation();

    _controller.addListener(() {
      if (_isDisposed) return;

      if (!_switched && _controller.value >= 0.5) {
        _switched = true;

        if (mounted) {
          setState(() {
            _currentIndex = (_currentIndex + 1) % 5;
          });
        }

        // 👇 запускаем bounce-эффект
        _scaleController.forward(from: 0);
      }
    });

    _startLoop();
  }

  void _setupAnimation() {
    final newAngle = _currentAngle + 2 * 3.1415926535 * 0.8; // +288°
    _rotation = Tween<double>(
      begin: _currentAngle,
      end: newAngle,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _currentAngle = newAngle % (2 * 3.1415926535);
  }

  Future<void> _startLoop() async {
    while (!_isDisposed) {
      _switched = false;
      _setupAnimation();
      await _controller.forward(from: 0);
      if (_isDisposed) return;
      await Future.delayed(const Duration(milliseconds: 200));
      if (_isDisposed) return;
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    _controller.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.center) {
      return Center(child: _build(context));
    }
    return _build(context);
  }

  Container _build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      alignment: Alignment.center,
      width: widget.size,
      height: widget.size,
      decoration: BoxDecoration(
        color: widget.background ?? customColors?.additionalOne,
        borderRadius: BorderRadius.circular(widget.size),
      ),
      child: AnimatedBuilder(
        animation: Listenable.merge([_rotation, _scale]),
        builder: (context, child) {
          return Transform.rotate(
            angle: _rotation.value,
            child: Transform.scale(scale: _scale.value, child: child),
          );
        },
        child: _ShapeMd3CirculeIndicator(
          score: _currentIndex + 1,
          size: widget.size,
          shapeColor: widget.shapeColor,
        ),
      ),
    );
  }
}

class _ShapeMd3CirculeIndicator extends StatelessWidget {
  final int score;
  final double size;
  final Color? shapeColor;

  const _ShapeMd3CirculeIndicator({
    required this.score,
    required this.size,
    this.shapeColor,
  });

  @override
  Widget build(BuildContext context) {
    final customColros = Theme.of(context).extension<CustomColors>();
    PathSvgShape clipper = PathSvgShape.sunny;
    if (score == 1) {
      clipper = PathSvgShape.leaf12Cookie;
    } else if (score == 2) {
      clipper = PathSvgShape.oval;
    } else if (score == 3) {
      clipper = PathSvgShape.pentagon;
    } else if (score == 4) {
      clipper = PathSvgShape.pill;
    } else if (score == 0) {
      clipper = PathSvgShape.leaf4Cookie;
    }
    return ClipPath(
      clipper: SvgClipper(clipper),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        width: size * 0.65,
        height: size * 0.65,
        color: shapeColor ?? customColros?.primaryTextColor,
      ),
    );
  }
}
