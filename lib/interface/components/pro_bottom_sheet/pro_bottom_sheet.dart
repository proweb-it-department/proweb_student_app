import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

Future<T?> showProBottomSheet<T>({
  required BuildContext context,
  required Widget body,
  String? title,
  List<Widget>? actions,
  bool useSafeArea = true,
  bool isDismissible = true,
  bool enableDrag = true,

  double initial = 0.5,

  double min = 0.1,

  double fullScreenMax = 1,

  double borderRadius = 20,

  double appBarHeight = 56,

  double appBarFadeDistanceFactor = 1.0,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    useSafeArea: useSafeArea,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: false,
    backgroundColor: Colors.transparent,
    builder: (_) {
      final statusBar = MediaQueryData.fromView(View.of(context)).padding.top;

      return _ProAdaptiveBottomSheet(
        title: title,
        actions: actions,
        body: body,
        initial: initial,
        min: min,
        fullScreenMax: fullScreenMax,
        borderRadius: borderRadius,
        appBarHeight: appBarHeight + statusBar,
        appBarFadeDistanceFactor: appBarFadeDistanceFactor,
      );
    },
  );
}

class _ProAdaptiveBottomSheet extends StatefulWidget {
  final String? title;
  final List<Widget>? actions;
  final Widget body;

  final double initial;
  final double min;
  final double fullScreenMax;

  final double borderRadius;

  final double appBarHeight;

  final double appBarFadeDistanceFactor;

  const _ProAdaptiveBottomSheet({
    required this.body,
    required this.initial,
    required this.min,
    required this.fullScreenMax,
    required this.borderRadius,
    required this.appBarHeight,
    required this.appBarFadeDistanceFactor,
    this.title,
    this.actions,
  });

  @override
  State<_ProAdaptiveBottomSheet> createState() =>
      _ProAdaptiveBottomSheetState();
}

class _ProAdaptiveBottomSheetState extends State<_ProAdaptiveBottomSheet> {
  final ValueNotifier<double> _extent = ValueNotifier<double>(0.5);

  // измеренная высота контента (body)
  double? _bodyHeightPx;

  @override
  void initState() {
    super.initState();
    _extent.value = widget.initial;
  }

  @override
  void dispose() {
    _extent.dispose();
    super.dispose();
  }

  void _onBodySize(Size s) {
    if (_bodyHeightPx != s.height) {
      setState(() => _bodyHeightPx = s.height);
    }
  }

  List<double>? _buildSnapSizes({
    required double minSize,
    required double initialSize,
    required double maxSize,
  }) {
    const eps = 0.0005;

    double clamp(double v) => v.clamp(minSize, maxSize);

    final minV = minSize;
    final initV = clamp(initialSize);
    final maxV = maxSize;

    // Если диапазона нет — snap вообще нельзя
    if ((maxV - minV).abs() <= eps) return null;

    // Собираем точки, но убираем дубликаты по eps
    final points = <double>[minV, initV, maxV];
    points.sort();

    final unique = <double>[];
    for (final p in points) {
      if (unique.isEmpty || (p - unique.last).abs() > eps) {
        unique.add(p);
      }
    }

    // snapSizes должны быть минимум из 2 элементов и строго возрастающими
    if (unique.length < 2) return null;

    // Если вдруг остались равные — ещё раз страховка
    for (var i = 1; i < unique.length; i++) {
      if (!(unique[i] > unique[i - 1] + eps)) return null;
    }

    return unique;
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    final screenH = media.size.height;
    final statusBar = media.padding.top;
    final totalBarHeight = widget.appBarHeight + statusBar;

    const handleTop = 10.0;
    const handleBottom = 6.0;
    const handleHeight = 4.0;
    const bottomPadding = 16.0;

    final chromePx = handleTop + handleHeight + handleBottom + bottomPadding;

    double computedMax = widget.fullScreenMax;

    if (_bodyHeightPx != null) {
      final totalPx = chromePx + _bodyHeightPx!;
      computedMax = (totalPx / screenH).clamp(widget.min, widget.fullScreenMax);
    }

    final initial = math.min(widget.initial, computedMax);
    final minSize = math.min(widget.min, computedMax);
    final snapSizes = _buildSnapSizes(
      minSize: minSize,
      initialSize: initial,
      maxSize: computedMax,
    );
    final enableSnap = snapSizes != null;

    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (n) {
        _extent.value = n.extent;
        return false;
      },
      child: DraggableScrollableSheet(
        minChildSize: minSize,
        initialChildSize: initial,
        maxChildSize: computedMax,
        expand: false,
        snap: enableSnap,
        snapSizes: snapSizes,
        builder: (context, scrollController) {
          return ValueListenableBuilder<double>(
            valueListenable: _extent,
            builder: (context, extent, _) {
              final canReachFullScreen =
                  computedMax >= (widget.fullScreenMax - 0.001);

              final fadeDistancePx =
                  totalBarHeight * widget.appBarFadeDistanceFactor;
              final fadeDistanceExtent = (fadeDistancePx / screenH).clamp(
                0.0,
                1.0,
              );

              final start = (computedMax - fadeDistanceExtent).clamp(0.0, 1.0);
              final end = computedMax.clamp(0.0, 1.0);

              double t = 0;
              if (canReachFullScreen) {
                if (extent <= start)
                  t = 0;
                else if (extent >= end)
                  t = 1;
                else
                  t = (extent - start) / (end - start);
              } else {
                t = 0;
              }

              final topPadding = totalBarHeight * t;
              final customColors = Theme.of(context).extension<CustomColors>();
              return Container(
                decoration: BoxDecoration(
                  color: customColors?.primaryBg,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(widget.borderRadius),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 20,
                      offset: Offset(0, -6),
                      color: Color(0x22000000),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(widget.borderRadius),
                  ),
                  child: Stack(
                    children: [
                      CustomScrollView(
                        controller: scrollController,
                        physics: const ClampingScrollPhysics(),
                        slivers: [
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 6,
                              ),
                              child: Center(
                                child: Container(
                                  width: 44,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: customColors?.borderColors,
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SliverToBoxAdapter(
                            child: SizedBox(height: topPadding),
                          ),

                          SliverToBoxAdapter(
                            child: _MeasureSize(
                              onChange: _onBodySize,
                              child: widget.body,
                            ),
                          ),

                          const SliverToBoxAdapter(child: SizedBox(height: 16)),
                        ],
                      ),

                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        child: IgnorePointer(
                          ignoring: t == 0,
                          child: Opacity(
                            opacity: t,
                            child: Container(
                              height: totalBarHeight,
                              color: customColors?.primaryBg,
                              child: Padding(
                                padding: EdgeInsets.only(top: statusBar),
                                child: _ProSheetAppBar(
                                  height: widget.appBarHeight,
                                  title: widget.title,
                                  actions: widget.actions,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _ProSheetAppBar extends StatelessWidget {
  final double height;
  final String? title;
  final List<Widget>? actions;

  const _ProSheetAppBar({required this.height, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final statusBar = MediaQueryData.fromView(View.of(context)).padding.top;
    return SizedBox(
      height: height,
      child: Padding(
        padding: EdgeInsetsGeometry.only(left: 12, right: 10, top: statusBar),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
            ),
            if (actions != null) ...actions!,
          ],
        ),
      ),
    );
  }
}

class _MeasureSize extends StatefulWidget {
  final Widget child;
  final void Function(Size size) onChange;

  const _MeasureSize({required this.child, required this.onChange});

  @override
  State<_MeasureSize> createState() => _MeasureSizeState();
}

class _MeasureSizeState extends State<_MeasureSize> {
  final _key = GlobalKey();
  Size? _oldSize;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _notifySize());
  }

  @override
  void didUpdateWidget(covariant _MeasureSize oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) => _notifySize());
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void _notifySize() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 16), () {
      final ctx = _key.currentContext;
      if (ctx == null) return;

      final render = ctx.findRenderObject();
      if (render is! RenderBox) return;

      final newSize = render.size;
      if (_oldSize == newSize) return;

      _oldSize = newSize;
      widget.onChange(newSize);
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: _key, child: widget.child);
  }
}
