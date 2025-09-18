import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:better_player_plus/better_player_plus.dart';
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

class _PlayerWidgetState extends State<PlayerWidget>
    with AutoRouteAware, SingleTickerProviderStateMixin {
  final Player player = Player();
  late final controller = VideoController(
    player,
    configuration: const VideoControllerConfiguration(
      enableHardwareAcceleration: true,
    ),
  );
  List<BetterPlayerDataSource> dataSourceList = [];
  BetterPlayerController? _controller;

  @override
  void initState() {
    super.initState();

    if (Platform.isIOS) {
      Media media = Media(widget.playlists);
      player.open(media, play: false);
    } else if (Platform.isAndroid) {
      BetterPlayerDataSource dataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        widget.playlists,
        useAsmsSubtitles: false,
        subtitles: [],
        liveStream: false,
        videoFormat: BetterPlayerVideoFormat.hls,
        videoExtension: '.m3u8',
        headers: {"User-Agent": "BetterPlayer"},
      );

      _controller = BetterPlayerController(
        BetterPlayerConfiguration(
          controlsConfiguration: BetterPlayerControlsConfiguration(
            showControls: false,
          ),
          fit: BoxFit.contain,
          routePageBuilder:
              (context, animation, secondaryAnimation, controllerProvider) {
                SystemChrome.setEnabledSystemUIMode(
                  SystemUiMode.immersiveSticky,
                );
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
          eventListener: (p0) {
            if (p0.betterPlayerEventType ==
                BetterPlayerEventType.changedPlayerVisibility) {
              SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
            }
          },
          placeholder: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: widget.preview != null
                  ? DecorationImage(
                      image: CachedNetworkImageProvider(widget.preview!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
          ),
          placeholderOnTop: true,
        ),
        betterPlayerDataSource: dataSource,
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    sl<AutoRouteObserver>().subscribe(this, context.routeData);
  }

  @override
  void didPushNext() {
    if (player.state.playing) {
      player.pause();
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final maxHeight = MediaQuery.of(context).size.height * 0.5;
    final width = MediaQuery.of(context).size.width;
    final aspectrationHeight = width * (9 / 16);
    return Container(
      color: customColors?.primaryBlack,
      width: double.infinity,
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: maxHeight > aspectrationHeight
            ? aspectrationHeight
            : maxHeight,
      ),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: VideoPlayerPlatform(
          iosController: controller,
          androidController: _controller,
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
        controls: (state) {
          return myMaterialVideoControls(state);
        },
      );
    } else if (Platform.isAndroid && androidController != null) {
      return MyVideoControllers(
        player: BetterPlayer(controller: androidController!),
        controller: androidController!,
        isFullScreen: false,
      );
    }
    return const SizedBox();
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
  late AnimationController _animationController;
  late Animation<double> _heightAnimation;
  double _currentPosition = 0.0;
  double _videoDuration = 0.0;
  bool _showControls = true;
  bool _isPlay = false;
  Timer? _hideTimer;
  @override
  void initState() {
    super.initState();
    if (widget.controller.isPlaying() == true) {
      if (!mounted) return;
      setState(() {
        _isPlay = true;
      });
    } else if (widget.controller.isPlaying() == false) {
      if (!mounted) return;
      setState(() {
        _isPlay = false;
      });
    }
    widget.controller.addEventsListener((event) {
      if (event.betterPlayerEventType == BetterPlayerEventType.progress) {
        if (!mounted) return;
        setState(() {
          _currentPosition =
              (event.parameters?["progress"] as Duration?)?.inSeconds
                  .toDouble() ??
              0;
          _videoDuration =
              (event.parameters?["duration"] as Duration?)?.inSeconds
                  .toDouble() ??
              0;
        });
      }
      if (event.betterPlayerEventType == BetterPlayerEventType.initialized) {
        if (!mounted) return;
        if (event.parameters?["progress"] is Duration &&
            event.parameters?["duration"] is Duration) {
          setState(() {
            _currentPosition =
                (event.parameters?["progress"] as Duration?)?.inSeconds
                    .toDouble() ??
                0;
            _videoDuration =
                (event.parameters?["duration"] as Duration?)?.inSeconds
                    .toDouble() ??
                0;
          });
        }
      }
      if (event.betterPlayerEventType == BetterPlayerEventType.play) {
        if (!mounted) return;
        setState(() {
          _isPlay = true;
        });
      } else if (event.betterPlayerEventType == BetterPlayerEventType.pause) {
        if (!mounted) return;
        setState(() {
          _isPlay = false;
        });
      }
      if (event.betterPlayerEventType == BetterPlayerEventType.openFullscreen) {
        _startHideTimer();
      } else if (event.betterPlayerEventType ==
          BetterPlayerEventType.hideFullscreen) {
        _startHideTimer();
      }
    });

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    _heightAnimation = Tween<double>(
      begin: 6,
      end: 8,
    ).animate(_animationController);
  }

  _changeCurrentPosition(double position) {
    if (!mounted) return;
    setState(() {
      _currentPosition = position;
    });
  }

  void _toggleControls() {
    if (!mounted) return;
    setState(() {
      _showControls = !_showControls;
    });
    if (_showControls) {
      _startHideTimer();
    }
  }

  void _startHideTimer() {
    _hideTimer?.cancel();
    _hideTimer = Timer(Duration(seconds: 3), () {
      if (widget.controller.isPlaying() == true) {
        if (!mounted) return;
        setState(() {
          _showControls = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleControls,
      child: Stack(
        children: [
          widget.player,
          AnimatedOpacity(
            opacity: _showControls ? 1.0 : 0.0,
            duration: Duration(milliseconds: 300),
            child: Container(color: Colors.black.withAlpha(150)),
          ),
          Positioned(
            bottom: 0,
            top: 0,
            left: 0,
            width: MediaQuery.of(context).size.width * 0.4,
            child: ClipRRect(
              child: GestureDetector(
                child: InkWell(
                  onTap: _toggleControls,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onDoubleTap: () {
                    final newPosition = _currentPosition.toInt();
                    widget.controller.seekTo(
                      Duration(
                        seconds:
                            _currentPosition.toInt() -
                            (newPosition < 10 ? newPosition : 10),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: 0,
            right: 0,
            width: MediaQuery.of(context).size.width * 0.4,
            child: ClipRRect(
              child: GestureDetector(
                child: InkWell(
                  onTap: _toggleControls,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onDoubleTap: () {
                    widget.controller.seekTo(
                      Duration(seconds: _currentPosition.toInt() + 10),
                    );
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
            ),
          ),
          if (_showControls) ...[
            Positioned(
              bottom: !widget.isFullScreen ? 0 : 50,
              left: 0,
              right: 0,
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  _animationController.forward(from: 8);
                  _startHideTimer();
                  double newPosition =
                      (details.localPosition.dx /
                          MediaQuery.of(context).size.width) *
                      _videoDuration;
                  newPosition = newPosition.clamp(0.0, _videoDuration);
                  _changeCurrentPosition(newPosition);
                  widget.controller.seekTo(
                    Duration(seconds: newPosition.toInt()),
                  );
                },
                onHorizontalDragEnd: (details) {
                  _animationController.reverse(from: 6);
                },
                onTapDown: (details) {
                  _animationController.forward(from: 8);
                  _startHideTimer();
                  double newPosition =
                      (details.localPosition.dx /
                          MediaQuery.of(context).size.width) *
                      _videoDuration;
                  newPosition = newPosition.clamp(0.0, _videoDuration);
                  _changeCurrentPosition(newPosition);
                  widget.controller.seekTo(
                    Duration(seconds: newPosition.toInt()),
                  );
                },
                child: Container(
                  height: 50,
                  color: Colors.transparent,
                  alignment: widget.isFullScreen
                      ? Alignment.center
                      : Alignment.bottomCenter,
                  child: _videoDuration > 0
                      ? AnimatedBuilder(
                          animation: _heightAnimation,
                          builder: (context, child) {
                            return CustomPaint(
                              size: Size(
                                MediaQuery.of(context).size.width,
                                _heightAnimation.value,
                              ),
                              painter: VideoProgressPainter(
                                _currentPosition,
                                _videoDuration,
                                _heightAnimation.value,
                                true,
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
            Positioned(
              bottom: !widget.isFullScreen ? 40 : 20,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 5,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _startHideTimer();
                          _isPlay
                              ? widget.controller.pause()
                              : widget.controller.play();
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 2,
                          ),
                          child: Icon(
                            _isPlay ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      if (widget.isFullScreen) ...[
                        GestureDetector(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              final newPosition = _currentPosition.toInt();
                              widget.controller.seekTo(
                                Duration(
                                  seconds:
                                      _currentPosition.toInt() -
                                      (newPosition < 10 ? newPosition : 10),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              child: Icon(
                                Icons.replay_10,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              widget.controller.seekTo(
                                Duration(
                                  seconds: _currentPosition.toInt() + 10,
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              child: Icon(
                                Icons.forward_10,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                      Text(
                        '${readableTime(_currentPosition)}/${readableTime(_videoDuration)}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      _startHideTimer();
                      widget.controller.toggleFullScreen();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      child: Icon(
                        widget.isFullScreen
                            ? Icons.fullscreen_exit
                            : Icons.fullscreen,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ] else
            Positioned(
              bottom: 0,
              child: _videoDuration > 0
                  ? CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 3),
                      painter: VideoProgressPainter(
                        _currentPosition,
                        _videoDuration,
                        3,
                        false,
                      ),
                    )
                  : SizedBox(),
            ),
        ],
      ),
    );
  }

  String readableTime(double seconds) {
    if (seconds < 60) return '00:${_nulNumber(seconds)}';

    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds.round() % 60;

    if (minutes < 60) {
      return remainingSeconds > 0
          ? '${_nulNumber(minutes.toDouble())}:${_nulNumber(remainingSeconds.toDouble())}'
          : '${_nulNumber(minutes.toDouble())}:00';
    }

    int hours = minutes ~/ 60;
    minutes %= 60;

    return (minutes > 0 || remainingSeconds > 0)
        ? '${_nulNumber(hours.toDouble())}:${_nulNumber(minutes.toDouble())}:${_nulNumber(remainingSeconds.toDouble())}'
        : '${_nulNumber(hours.toDouble())}:00:00';
  }

  String _nulNumber(double number) {
    return number < 10 ? '0${number.toInt()}' : '${number.toInt()}';
  }
}

class VideoProgressPainter extends CustomPainter {
  final double progress;
  final double total;
  final double height;
  final bool isCircule;

  VideoProgressPainter(this.progress, this.total, this.height, this.isCircule);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = Colors.grey.shade700
      ..strokeCap = StrokeCap.round
      ..strokeWidth = height;

    Paint progressPaint = Paint()
      ..color = isCircule ? Colors.white : Colors.white.withAlpha(100)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = height;

    Paint progressShadowPaint = Paint()
      ..color = Colors.black.withAlpha(100)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = height + 4
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 4);

    Paint circlePaint = Paint()
      ..color = isCircule ? Colors.white : Colors.white.withAlpha(100)
      ..style = PaintingStyle.fill;

    Paint circleShadowPaint = Paint()
      ..color = Colors.black.withAlpha(100)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 6);

    final heightCircle = height * 1.1;
    double progressWidth = (progress / total) * size.width;
    double circleX = progressWidth < heightCircle
        ? heightCircle
        : progressWidth;

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      backgroundPaint,
    );

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(progressWidth, size.height / 2),
      progressShadowPaint,
    );

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(progressWidth, size.height / 2),
      progressPaint,
    );
    if (isCircule) {
      canvas.drawCircle(
        Offset(circleX, size.height / 2),
        heightCircle * 1.2,
        circleShadowPaint,
      );
      canvas.drawCircle(
        Offset(circleX, size.height / 2),
        heightCircle,
        circlePaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
