import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/models/group_detail/group_detail.dart';
import 'package:proweb_student_app/models/homework_list_group/homework_list_group.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/svg_clipper/path_svg_shape.dart';
import 'package:proweb_student_app/utils/svg_clipper/svg_clipper.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class HomeworkInfoItem extends StatefulWidget {
  final HomeworkListGroup item;
  final GroupDetail group;
  final bool isStart;
  final bool isEnd;
  const HomeworkInfoItem({
    super.key,
    required this.item,
    required this.group,
    required this.isStart,
    required this.isEnd,
  });

  @override
  State<HomeworkInfoItem> createState() => _HomeworkInfoItemState();
}

class _HomeworkInfoItemState extends State<HomeworkInfoItem> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return ListTileBuilder(
      isStart: widget.isStart,
      isEnd: widget.isEnd,
      builder: (shape, contentPadding, isThreeLine) {
        return Material(
          color: Colors.transparent,
          child: ListTile(
            shape: shape,
            contentPadding: contentPadding,
            onTap: () {
              context.router.push(
                HomeworkRouteRoute(
                  relationId: widget.item.id ?? 0,
                  groupId: widget.group.id ?? 0,
                ),
              );
            },
            leading: Icon(Icons.assignment),
            tileColor: customColors?.primaryBg,
            title: Text(
              widget.item.homework?.name ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              sl<LocalData>().getDateString(
                date: DateTime.parse(widget.item.createdAt ?? '03.02.2025'),
              ),
            ),
            trailing: TrailingWork(item: widget.item, group: widget.group),
          ),
        );
      },
    );
  }
}

class TrailingWork extends StatelessWidget {
  final HomeworkListGroup item;
  final GroupDetail group;
  const TrailingWork({super.key, required this.item, required this.group});

  @override
  Widget build(BuildContext context) {
    final cheked = item.checked == true;
    final hasMaterial = item.hasMaterial == true;
    final score = item.score;
    final isCheked = cheked && hasMaterial && score != null;
    final isExamination = !cheked && hasMaterial;
    final brightness = ThemeData.estimateBrightnessForColor(
      HexColor(group.course?.color ?? '#ffffff'),
    );
    final colorText = brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
    if (isCheked) {
      return ScoreIcon(
        score: score,
        child: Container(
          width: 30,
          height: 30,
          color: HexColor(group.course?.color ?? '#ffffff'),
          child: Center(
            child: Text(
              '$score',
              style: TextStyle(color: colorText, fontSize: 16),
            ),
          ),
        ),
      );
    } else if (isExamination) {
      return RotatingScoreIcon(group: group);
    } else {
      return ScoreIcon(
        score: 0,
        child: Container(
          width: 30,
          height: 30,
          color: Colors.red,
          child: Center(child: Icon(Icons.chevron_right)),
        ),
      );
    }
  }
}

class ScoreIcon extends StatelessWidget {
  final int score;
  final Widget child;

  const ScoreIcon({super.key, required this.score, required this.child});

  @override
  Widget build(BuildContext context) {
    PathSvgShape clipper = PathSvgShape.sunny;
    if (score == 1) {
      clipper = PathSvgShape.arch;
    } else if (score == 2) {
      clipper = PathSvgShape.bun;
    } else if (score == 3) {
      clipper = PathSvgShape.gem;
    } else if (score == 4) {
      clipper = PathSvgShape.ghostIsh;
    } else if (score == 0) {
      clipper = PathSvgShape.pill;
    }
    return ClipPath(
      clipper: SvgClipper(clipper),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: child,
    );
  }
}

class RotatingScoreIcon extends StatefulWidget {
  final GroupDetail group;
  const RotatingScoreIcon({super.key, required this.group});

  @override
  State<RotatingScoreIcon> createState() => _RotatingScoreIconState();
}

class _RotatingScoreIconState extends State<RotatingScoreIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotation;

  int _currentIndex = 0;
  bool _isDisposed = false;
  bool _switched = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _rotation = Tween<double>(
      begin: 0,
      end: 2 * 3.1415926535,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.addListener(() {
      if (_isDisposed) return;

      if (!_switched && _controller.value >= 0.5) {
        _switched = true;
        if (mounted) {
          setState(() {
            _currentIndex = (_currentIndex + 1) % 5;
          });
        }
      }
    });

    _startLoop();
  }

  Future<void> _startLoop() async {
    while (!_isDisposed) {
      _switched = false;
      await _controller.forward(from: 0);
      if (_isDisposed) return;
      await Future.delayed(const Duration(seconds: 1));
      if (_isDisposed) return;
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    _controller.dispose();
    super.dispose();
  }

  Widget _buildScoreIcon(int index) {
    final groupColro = HexColor(widget.group.course?.color ?? '#ffffff');
    final brightness = ThemeData.estimateBrightnessForColor(groupColro);
    final colorText = brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
    return Container(
      width: 30,
      height: 30,
      color: groupColro,
      child: Center(
        child: AnimatedBuilder(
          animation: _rotation,
          builder: (context, child) {
            return Transform.rotate(angle: -_rotation.value, child: child);
          },
          child: Text(
            '${index + 1}',
            style: TextStyle(color: colorText, fontSize: 16),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _rotation,
      builder: (context, child) {
        return Transform.rotate(angle: _rotation.value, child: child);
      },
      child: ScoreIcon(
        score: _currentIndex + 1,
        child: Opacity(opacity: 0.4, child: _buildScoreIcon(_currentIndex)),
      ),
    );
  }
}
