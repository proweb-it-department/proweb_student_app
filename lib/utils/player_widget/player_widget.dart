import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:better_player_plus/better_player_plus.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/player_widget/video_controlls.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class PlayerWidget extends StatefulWidget {
  final String playlists;
  final String? preview;

  const PlayerWidget({super.key, required this.playlists, this.preview});

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> with AutoRouteAware {
  // iOS player (media_kit)
  final Player _iosPlayer = Player();
  late final VideoController _iosVideoController = VideoController(
    _iosPlayer,
    configuration: const VideoControllerConfiguration(
      enableHardwareAcceleration: true,
    ),
  );

  // Android player (better_player)
  BetterPlayerController? _androidController;
  final ValueNotifier<bool> _androidFullscreenVN = ValueNotifier(false);

  bool _subscribedToRouteObserver = false;

  bool get _isIOS => Platform.isIOS;
  bool get _isAndroid => Platform.isAndroid;

  bool get _isInBuildPhase {
    final phase = SchedulerBinding.instance.schedulerPhase;
    return phase == SchedulerPhase.transientCallbacks ||
        phase == SchedulerPhase.midFrameMicrotasks ||
        phase == SchedulerPhase.persistentCallbacks;
  }

  void _runSafelyAfterBuild(VoidCallback action) {
    if (_isInBuildPhase) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        action();
      });
      return;
    }
    action();
  }

  void _setAndroidFullscreenState(
    bool isFullscreen, {
    bool deferIfBuilding = true,
  }) {
    if (!_isAndroid) return;

    void apply() {
      if (_androidFullscreenVN.value != isFullscreen) {
        _androidFullscreenVN.value = isFullscreen;
      }
    }

    if (deferIfBuilding) {
      _runSafelyAfterBuild(apply);
    } else {
      apply();
    }
  }

  void _setAndroidSystemUiMode(
    bool isFullscreen, {
    bool deferIfBuilding = true,
  }) {
    if (!_isAndroid) return;

    void apply() {
      if (isFullscreen) {
        // Скрываем статус-бар и navigation bar.
        // Они будут вызываться системным свайпом.
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      } else {
        // Возвращаем системные бары в обычный режим приложения.
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      }
    }

    if (deferIfBuilding) {
      _runSafelyAfterBuild(apply);
    } else {
      apply();
    }
  }

  void _applyAndroidFullscreen(
    bool isFullscreen, {
    bool deferIfBuilding = true,
  }) {
    _setAndroidFullscreenState(isFullscreen, deferIfBuilding: deferIfBuilding);
    _setAndroidSystemUiMode(isFullscreen, deferIfBuilding: deferIfBuilding);
  }

  @override
  void initState() {
    super.initState();
    _initPlayers();
  }

  @override
  void didUpdateWidget(covariant PlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.playlists != widget.playlists) {
      _updateDataSource(widget.playlists);
    }
  }

  void _initPlayers() {
    if (_isIOS) {
      _iosPlayer.open(Media(widget.playlists), play: false);
      return;
    }

    if (_isAndroid) {
      final dataSource = _buildAndroidDataSource(widget.playlists);
      _androidController = BetterPlayerController(
        BetterPlayerConfiguration(
          controlsConfiguration: const BetterPlayerControlsConfiguration(
            showControls: false,
          ),
          fit: BoxFit.contain,
          placeholder: _buildPlaceholder(),
          placeholderOnTop: true,
          routePageBuilder:
              (context, animation, secondaryAnimation, controllerProvider) {
                // Fullscreen route: скрываем системные бары.
                _applyAndroidFullscreen(true);
                return AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) {
                    return Opacity(
                      opacity: animation.value,
                      child: Scaffold(
                        backgroundColor: Colors.black,
                        body: Center(
                          child: MyVideoControllers(
                            player: controllerProvider,
                            controller: controllerProvider.controller,
                            isFullScreen: true,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
          eventListener: (event) {
            switch (event.betterPlayerEventType) {
              case BetterPlayerEventType.openFullscreen:
                _applyAndroidFullscreen(true, deferIfBuilding: false);
                break;
              case BetterPlayerEventType.hideFullscreen:
                _applyAndroidFullscreen(false, deferIfBuilding: false);
                break;
              case BetterPlayerEventType.changedPlayerVisibility:
                // Фолбэк для некоторых устройств/версий плеера.
                if (!_androidFullscreenVN.value) {
                  _setAndroidSystemUiMode(false, deferIfBuilding: false);
                }
                break;
              default:
                break;
            }
          },
        ),
        betterPlayerDataSource: dataSource,
      );
    }
  }

  BetterPlayerDataSource _buildAndroidDataSource(String url) {
    return BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      url,
      useAsmsSubtitles: false,
      subtitles: const [],
      liveStream: false,
      videoFormat: BetterPlayerVideoFormat.hls,
      videoExtension: '.m3u8',
      headers: const {'User-Agent': 'BetterPlayer'},
    );
  }

  Widget _buildPlaceholder() {
    // В fullscreen не показываем preview как фон, чтобы не было "мигания"/некрасивой подложки.
    return ValueListenableBuilder<bool>(
      valueListenable: _androidFullscreenVN,
      builder: (context, isFullscreen, _) {
        final showPreview = !isFullscreen && widget.preview != null;

        return Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: showPreview
                ? DecorationImage(
                    image: CachedNetworkImageProvider(widget.preview!),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          child: Center(
            child: isFullscreen
                ? const SizedBox.shrink()
                : const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2.4,
                    ),
                  ),
          ),
        );
      },
    );
  }

  Future<void> _updateDataSource(String url) async {
    if (_isIOS) {
      await _iosPlayer.open(Media(url), play: false);
      return;
    }

    if (_isAndroid && _androidController != null) {
      await _androidController!.setupDataSource(_buildAndroidDataSource(url));
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_subscribedToRouteObserver) {
      sl<AutoRouteObserver>().subscribe(this, context.routeData);
      _subscribedToRouteObserver = true;
    }
  }

  @override
  void didPushNext() {
    // Pause when current route is covered by next route.
    if (_isIOS && _iosPlayer.state.playing) {
      _iosPlayer.pause();
    }

    if (_isAndroid && (_androidController?.isPlaying() ?? false)) {
      _androidController?.pause();
    }
  }

  @override
  void dispose() {
    if (_subscribedToRouteObserver) {
      sl<AutoRouteObserver>().unsubscribe(this);
    }

    _applyAndroidFullscreen(false, deferIfBuilding: false);
    _androidController?.dispose(forceDispose: true);
    _androidFullscreenVN.dispose();
    _iosPlayer.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final screenSize = MediaQuery.sizeOf(context);
    final maxHeight = screenSize.height * 0.5;
    final aspectHeight = screenSize.width * (9 / 16);

    return Container(
      color: customColors?.primaryBlack,
      width: double.infinity,
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: maxHeight > aspectHeight ? aspectHeight : maxHeight,
      ),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: VideoPlayerPlatform(
          iosController: _iosVideoController,
          androidController: _androidController,
        ),
      ),
    );
  }
}

class VideoPlayerPlatform extends StatelessWidget {
  final BetterPlayerController? androidController;
  final VideoController iosController;

  const VideoPlayerPlatform({
    super.key,
    this.androidController,
    required this.iosController,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Video(
        controller: iosController,
        controls: myMaterialVideoControls,
      );
    }

    if (Platform.isAndroid && androidController != null) {
      return MyVideoControllers(
        player: BetterPlayer(controller: androidController!),
        controller: androidController!,
        isFullScreen: false,
      );
    }

    return const SizedBox.shrink();
  }
}

class MyVideoControllers extends StatefulWidget {
  final Widget player;
  final BetterPlayerController controller;
  final bool isFullScreen;

  const MyVideoControllers({
    super.key,
    required this.player,
    required this.controller,
    required this.isFullScreen,
  });

  @override
  State<MyVideoControllers> createState() => _MyVideoControllersState();
}

class _MyVideoControllersState extends State<MyVideoControllers>
    with SingleTickerProviderStateMixin {
  static const Duration _controlsAutoHideDelay = Duration(seconds: 3);
  static const Duration _fadeDuration = Duration(milliseconds: 300);

  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
  );

  late final Animation<double> _heightAnimation = Tween<double>(
    begin: 6,
    end: 8,
  ).animate(_animationController);

  Timer? _hideTimer;

  double _currentPosition = 0.0;
  double _videoDuration = 0.0;
  bool _showControls = true;
  bool _isPlay = false;

  bool _isDraggingProgress = false;

  int _lastPositionSeconds = -1;
  int _lastDurationSeconds = -1;

  late final void Function(BetterPlayerEvent) _eventsListener;

  @override
  void initState() {
    super.initState();

    _isPlay = widget.controller.isPlaying() == true;

    _eventsListener = _onPlayerEvent;
    widget.controller.addEventsListener(_eventsListener);

    _startHideTimer();
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    _animationController.dispose();

    // Important to prevent listener accumulation.
    widget.controller.removeEventsListener(_eventsListener);

    super.dispose();
  }

  void _onPlayerEvent(BetterPlayerEvent event) {
    if (!mounted) return;

    switch (event.betterPlayerEventType) {
      case BetterPlayerEventType.progress:
      case BetterPlayerEventType.initialized:
        _updateProgressFromEvent(event);
        break;

      case BetterPlayerEventType.play:
        if (!_isPlay) {
          setState(() => _isPlay = true);
        }
        _startHideTimer();
        break;

      case BetterPlayerEventType.pause:
        if (_isPlay) {
          setState(() => _isPlay = false);
        }
        _showControlsIfNeeded();
        break;

      case BetterPlayerEventType.finished:
        _showControlsIfNeeded();
        break;

      case BetterPlayerEventType.openFullscreen:
      case BetterPlayerEventType.hideFullscreen:
        _startHideTimer();
        break;

      default:
        break;
    }
  }

  void _updateProgressFromEvent(BetterPlayerEvent event) {
    if (_isDraggingProgress) return;

    final progress =
        (event.parameters?['progress'] as Duration?)?.inSeconds ??
        _currentPosition.toInt();
    final duration =
        (event.parameters?['duration'] as Duration?)?.inSeconds ??
        _videoDuration.toInt();

    // Skip redundant rebuilds when values are unchanged.
    if (progress == _lastPositionSeconds && duration == _lastDurationSeconds) {
      return;
    }

    _lastPositionSeconds = progress;
    _lastDurationSeconds = duration;

    setState(() {
      _currentPosition = progress.toDouble();
      _videoDuration = duration.toDouble();
    });
  }

  void _showControlsIfNeeded() {
    if (!_showControls) {
      setState(() => _showControls = true);
    }
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });

    if (_showControls) {
      _startHideTimer();
    } else {
      _hideTimer?.cancel();
    }
  }

  void _startHideTimer() {
    _hideTimer?.cancel();

    _hideTimer = Timer(_controlsAutoHideDelay, () {
      if (!mounted) return;
      if (widget.controller.isPlaying() == true && _showControls) {
        setState(() {
          _showControls = false;
        });
      }
    });
  }

  double _clampSeconds(double seconds) {
    if (_videoDuration <= 0) return 0;
    return seconds.clamp(0.0, _videoDuration);
  }

  Future<void> _seekAbsolute(double seconds) async {
    final clamped = _clampSeconds(seconds);
    await widget.controller.seekTo(Duration(seconds: clamped.round()));

    if (!mounted) return;
    setState(() {
      _currentPosition = clamped;
    });
  }

  Future<void> _seekRelative(int deltaSeconds) async {
    final target = _clampSeconds(_currentPosition + deltaSeconds);
    await _seekAbsolute(target);
    _startHideTimer();
  }

  void _onProgressDragStart() {
    _isDraggingProgress = true;
    _animationController.forward(from: 0.0);
    _startHideTimer();
  }

  void _onProgressDragUpdate(double positionSeconds) {
    setState(() {
      _currentPosition = _clampSeconds(positionSeconds);
    });
  }

  Future<void> _onProgressDragEnd() async {
    _isDraggingProgress = false;
    _animationController.reverse(from: 1.0);
    await _seekAbsolute(_currentPosition);
  }

  String _readableTime(double seconds) {
    final totalSeconds = seconds.round();
    final duration = Duration(seconds: totalSeconds);

    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final secs = duration.inSeconds.remainder(60);

    String two(int value) => value.toString().padLeft(2, '0');

    if (hours > 0) {
      return '${two(hours)}:${two(minutes)}:${two(secs)}';
    }
    return '${two(minutes)}:${two(secs)}';
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: _toggleControls,
          child: Stack(
            fit: StackFit.expand,
            children: [
              widget.player,

              // Dark backdrop when controls are visible.
              IgnorePointer(
                ignoring: true,
                child: AnimatedOpacity(
                  opacity: _showControls ? 1.0 : 0.0,
                  duration: _fadeDuration,
                  child: Container(color: Colors.black.withAlpha(150)),
                ),
              ),

              // Double-tap seek zones (left / right)
              _SeekZone(
                alignment: Alignment.centerLeft,
                width: width * 0.4,
                onTap: _toggleControls,
                onDoubleTap: () => _seekRelative(-10),
              ),
              _SeekZone(
                alignment: Alignment.centerRight,
                width: width * 0.4,
                onTap: _toggleControls,
                onDoubleTap: () => _seekRelative(10),
              ),

              if (_showControls) ...[
                Positioned(
                  bottom: widget.isFullScreen ? 50 : 0,
                  left: 0,
                  right: 0,
                  child: _ProgressGestureBar(
                    width: width,
                    durationSeconds: _videoDuration,
                    onSeekStart: _onProgressDragStart,
                    onSeekUpdate: _onProgressDragUpdate,
                    onSeekEnd: _onProgressDragEnd,
                    child: SizedBox(
                      height: 50,
                      child: Align(
                        alignment: widget.isFullScreen
                            ? Alignment.center
                            : Alignment.bottomCenter,
                        child: _videoDuration > 0
                            ? AnimatedBuilder(
                                animation: _heightAnimation,
                                builder: (context, child) {
                                  return RepaintBoundary(
                                    child: CustomPaint(
                                      size: Size(width, _heightAnimation.value),
                                      painter: VideoProgressPainter(
                                        _currentPosition,
                                        _videoDuration,
                                        _heightAnimation.value,
                                        true,
                                      ),
                                    ),
                                  );
                                },
                              )
                            : LinearProgressIndicator(
                                color: Colors.white,
                                backgroundColor: Colors.grey.shade700,
                                minHeight: _heightAnimation.value,
                              ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: widget.isFullScreen ? 20 : 40,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.transparent,
                            ),
                            onPressed: () {
                              _startHideTimer();
                              if (_isPlay) {
                                widget.controller.pause();
                              } else {
                                widget.controller.play();
                              }
                            },
                            splashRadius: 20,
                            icon: Icon(
                              _isPlay ? Icons.pause : Icons.play_arrow,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          if (widget.isFullScreen) ...[
                            IconButton(
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.transparent,
                              ),
                              onPressed: () => _seekRelative(-10),
                              splashRadius: 20,
                              icon: const Icon(
                                Icons.replay_10,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            IconButton(
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.transparent,
                              ),
                              onPressed: () => _seekRelative(10),
                              splashRadius: 20,
                              icon: const Icon(
                                Icons.forward_10,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                          Text(
                            '${_readableTime(_currentPosition)}/${_readableTime(_videoDuration)}',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {
                          _startHideTimer();
                          widget.controller.toggleFullScreen();
                        },
                        splashRadius: 20,
                        icon: Icon(
                          widget.isFullScreen
                              ? Icons.fullscreen_exit
                              : Icons.fullscreen,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ] else
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: _videoDuration > 0
                      ? RepaintBoundary(
                          child: CustomPaint(
                            size: Size(width, 3),
                            painter: VideoProgressPainter(
                              _currentPosition,
                              _videoDuration,
                              3,
                              false,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _SeekZone extends StatelessWidget {
  final Alignment alignment;
  final double width;
  final VoidCallback onTap;
  final VoidCallback onDoubleTap;

  const _SeekZone({
    required this.alignment,
    required this.width,
    required this.onTap,
    required this.onDoubleTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SizedBox(
        width: width,
        height: double.infinity,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onTap,
          onDoubleTap: onDoubleTap,
        ),
      ),
    );
  }
}

class _ProgressGestureBar extends StatelessWidget {
  final double width;
  final double durationSeconds;
  final VoidCallback onSeekStart;
  final ValueChanged<double> onSeekUpdate;
  final Future<void> Function() onSeekEnd;
  final Widget child;

  const _ProgressGestureBar({
    required this.width,
    required this.durationSeconds,
    required this.onSeekStart,
    required this.onSeekUpdate,
    required this.onSeekEnd,
    required this.child,
  });

  double _positionFromDx(double dx) {
    if (durationSeconds <= 0 || width <= 0) return 0;
    return (dx / width).clamp(0.0, 1.0) * durationSeconds;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onHorizontalDragStart: (_) => onSeekStart(),
      onHorizontalDragUpdate: (details) {
        onSeekUpdate(_positionFromDx(details.localPosition.dx));
      },
      onHorizontalDragEnd: (_) {
        onSeekEnd();
      },
      onTapDown: (details) async {
        onSeekStart();
        onSeekUpdate(_positionFromDx(details.localPosition.dx));
        await onSeekEnd();
      },
      child: child,
    );
  }
}

class VideoProgressPainter extends CustomPainter {
  final double progress;
  final double total;
  final double height;
  final bool isCircle;

  VideoProgressPainter(this.progress, this.total, this.height, this.isCircle);

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()
      ..color = Colors.grey.shade700
      ..strokeCap = StrokeCap.round
      ..strokeWidth = height;

    final progressPaint = Paint()
      ..color = isCircle ? Colors.white : Colors.white.withAlpha(100)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = height;

    final progressShadowPaint = Paint()
      ..color = Colors.black.withAlpha(100)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = height + 4
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);

    final circlePaint = Paint()
      ..color = isCircle ? Colors.white : Colors.white.withAlpha(100)
      ..style = PaintingStyle.fill;

    final circleShadowPaint = Paint()
      ..color = Colors.black.withAlpha(100)
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);

    final safeTotal = total <= 0 ? 1.0 : total;
    final safeProgress = progress.clamp(0.0, safeTotal);

    final progressWidth = (safeProgress / safeTotal) * size.width;
    final heightCircle = height * 1.1;
    final circleX = progressWidth.clamp(heightCircle, size.width);

    final y = size.height / 2;

    canvas.drawLine(Offset(0, y), Offset(size.width, y), backgroundPaint);
    canvas.drawLine(
      Offset(0, y),
      Offset(progressWidth, y),
      progressShadowPaint,
    );
    canvas.drawLine(Offset(0, y), Offset(progressWidth, y), progressPaint);

    if (isCircle) {
      canvas.drawCircle(
        Offset(circleX, y),
        heightCircle * 1.2,
        circleShadowPaint,
      );
      canvas.drawCircle(Offset(circleX, y), heightCircle, circlePaint);
    }
  }

  @override
  bool shouldRepaint(covariant VideoProgressPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.total != total ||
        oldDelegate.height != height ||
        oldDelegate.isCircle != isCircle;
  }
}
