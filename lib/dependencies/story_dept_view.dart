import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_story_presenter/src/story_presenter/story_custom_view_wrapper.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter_story_presenter/src/story_presenter/story_view_indicator.dart';
import 'package:flutter_story_presenter/src/models/story_item.dart';
import 'package:flutter_story_presenter/src/models/story_view_indicator_config.dart';
import 'package:flutter_story_presenter/src/controller/flutter_story_controller.dart';
import 'package:flutter_story_presenter/src/story_presenter/image_story_view.dart';
import 'package:flutter_story_presenter/src/story_presenter/video_story_view.dart';
import 'package:flutter_story_presenter/src/story_presenter/web_story_view.dart';
import 'package:flutter_story_presenter/src/story_presenter/text_story_view.dart';
import 'package:flutter_story_presenter/src/utils/smooth_video_progress.dart';
import 'package:flutter_story_presenter/src/utils/story_utils.dart';
import 'package:video_player/video_player.dart';

typedef OnStoryChanged = void Function(int);
typedef OnCompleted = Future<void> Function();
typedef OnLeftTap = void Function();
typedef OnRightTap = void Function();
typedef OnDrag = void Function();
typedef OnItemBuild = Widget? Function(int, Widget);
typedef OnVideoLoad = void Function(VideoPlayerController?);
typedef OnAudioLoaded = void Function(AudioPlayer);
typedef CustomViewBuilder = Widget Function(AudioPlayer);
typedef OnSlideDown = void Function(DragUpdateDetails);
typedef OnSlideStart = void Function(DragStartDetails);
typedef OnSlideEnd = void Function(DragEndDetails, int);

class FlutterStoryPROWEB extends StatefulWidget {
  const FlutterStoryPROWEB({
    this.flutterStoryController,
    this.items = const [],
    this.onStoryChanged,
    this.onLeftTap,
    this.onRightTap,
    this.onCompleted,
    this.onPreviousCompleted,
    this.initialIndex = 0,
    this.storyViewIndicatorConfig,
    this.restartOnCompleted = true,
    this.onVideoLoad,
    this.headerWidget,
    this.footerWidget,
    this.onSlideDown,
    this.onSlideStart,
    this.onSlideEnd,
    super.key,
  }) : assert(initialIndex < items.length);

  /// List of StoryItem objects to display in the story view.
  final List<StoryItem> items;

  /// Controller for managing the current playing media.
  final FlutterStoryController? flutterStoryController;

  /// Callback function triggered whenever the story changes or the user navigates to the previous/next story.
  final OnStoryChanged? onStoryChanged;

  /// Callback function triggered when all items in the list have been played.
  final OnCompleted? onCompleted;

  /// Callback function triggered when all items in the list have been played.
  final OnCompleted? onPreviousCompleted;

  /// Callback function triggered when the user taps on the left half of the screen.
  final OnLeftTap? onLeftTap;

  /// Callback function triggered when the user taps on the right half of the screen.
  final OnRightTap? onRightTap;

  /// Callback function triggered when user drag downs the storyview.
  final OnSlideDown? onSlideDown;
  final OnSlideEnd? onSlideEnd;

  /// Callback function triggered when user starts drag downs the storyview.
  final OnSlideStart? onSlideStart;

  /// Indicates whether the story view should restart from the beginning after all items have been played.
  final bool restartOnCompleted;

  /// Index to start playing the story from initially.
  final int initialIndex;

  /// Configuration and styling options for the story view indicator.
  final StoryViewIndicatorConfig? storyViewIndicatorConfig;

  /// Callback function to retrieve the VideoPlayerController when it is initialized and ready to play.
  final OnVideoLoad? onVideoLoad;

  /// Widget to display user profile or other details at the top of the screen.
  final Widget? headerWidget;

  /// Widget to display text field or other content at the bottom of the screen.
  final Widget? footerWidget;

  @override
  State<FlutterStoryPROWEB> createState() => _FlutterStoryPROWEBState();
}

class _FlutterStoryPROWEBState extends State<FlutterStoryPROWEB> with WidgetsBindingObserver, TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _currentProgressAnimation;
  int currentIndex = 0;
  bool isCurrentItemLoaded = false;
  double currentItemProgress = 0;
  VideoPlayerController? _currentVideoPlayer;
  double? storyViewHeight;
  AudioPlayer? _audioPlayer;
  Duration? _totalAudioDuration;
  StreamSubscription? _audioDurationSubscriptionStream;
  StreamSubscription? _audioPlayerStateStream;
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isStartOpacity = false;
  bool isCallComplited = false;
  @override
  void initState() {
    if (_animationController != null) {
      _animationController?.reset();
      _animationController?.dispose();
      _animationController = null;
    }
    _animationController = AnimationController(
      vsync: this,
    );
    currentIndex = widget.initialIndex;
    widget.flutterStoryController?.addListener(_storyControllerListener);
    _startStoryView();

    WidgetsBinding.instance.addObserver(this);
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    log("STATE ==> $state");
    switch (state) {
      case AppLifecycleState.resumed:
        _resumeMedia();
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.hidden:
        _pauseMedia();
        break;
      case AppLifecycleState.detached:
        break;
    }
  }

  @override
  void dispose() {
    _animationController?.dispose();
    _animationController = null;
    widget.flutterStoryController
      ?..removeListener(_storyControllerListener)
      ..dispose();
    _audioDurationSubscriptionStream?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    super.dispose();
  }

  StoryItem get currentItem => widget.items[currentIndex];

  StoryViewIndicatorConfig get storyViewIndicatorConfig => widget.storyViewIndicatorConfig ?? const StoryViewIndicatorConfig();

  /// Listener for the story controller to handle various story actions.
  void _storyControllerListener() {
    final controller = widget.flutterStoryController;
    final storyStatus = controller?.storyStatus;
    final jumpIndex = controller?.jumpIndex;

    if (storyStatus != null) {
      if (storyStatus.isPlay) {
        _resumeMedia();
      } else if (storyStatus.isMute || storyStatus.isUnMute) {
        _toggleMuteUnMuteMedia();
      } else if (storyStatus.isPause) {
        _pauseMedia();
      } else if (storyStatus.isPrevious) {
        _playPrevious();
      } else if (storyStatus.isNext) {
        _playNext();
      }
    }

    if (jumpIndex != null && jumpIndex >= 0 && jumpIndex < widget.items.length) {
      currentIndex = jumpIndex - 1;
      _playNext();
    }
  }

  /// Starts the story view.
  void _startStoryView() {
    isCallComplited = false;
    widget.onStoryChanged?.call(currentIndex);
    _playMedia();
    if (mounted) {
      setState(() {});
    }
  }

  /// Resets the animation controller and its listeners.
  void _resetAnimation() {
    _animationController?.reset();
    if (_currentProgressAnimation != null) {
      _animationController?.forward(
        from: 0,
      );
    }
    _animationController
      ?..removeListener(animationListener)
      ..removeStatusListener(animationStatusListener);
  }

  /// Initializes and starts the media playback for the current story item.
  void _playMedia() {
    isCurrentItemLoaded = false;
  }

  /// Resumes the media playback.
  void _resumeMedia() {
    _controller.reset();

    _audioPlayer?.play();
    _currentVideoPlayer?.play();
    if (_currentProgressAnimation != null) {
      _animationController?.forward(
        from: _currentProgressAnimation?.value,
      );
      if (_currentVideoPlayer != null) {
        // final videoPlayerValue = _currentVideoPlayer;
        // videoPlayerValue!.seekTo(Duration(milliseconds: 0));
      }
    }
  }

  /// Starts the countdown for the story item duration.
  void _startStoryCountdown() {
    _currentVideoPlayer?.addListener(videoListener);
    if (_currentVideoPlayer != null) {
      return;
    }

    if (currentItem.audioConfig != null) {
      _audioPlayer?.durationFuture?.then((v) {
        _totalAudioDuration = v;
        _animationController ??= AnimationController(
          vsync: this,
        );

        _animationController?.duration = v;

        _currentProgressAnimation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
          ..addListener(animationListener)
          ..addStatusListener(animationStatusListener);

        _animationController!.forward();
      });
      _audioDurationSubscriptionStream = _audioPlayer?.positionStream.listen(audioPositionListener);
      _audioPlayerStateStream = _audioPlayer?.playerStateStream.listen(
        (event) {
          if (event.playing) {
            if (event.processingState == ProcessingState.loading) {
              _pauseMedia();
            } else {
              _resumeMedia();
            }
          }
        },
      );

      return;
    }

    _animationController ??= AnimationController(
      vsync: this,
    );
    _animationController?.duration = _currentVideoPlayer?.value.duration ?? currentItem.duration;
    if (_currentVideoPlayer == null && !currentItem.storyItemType.isVideo) {
      _currentProgressAnimation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
        ..addListener(animationListener)
        ..addStatusListener(animationStatusListener);

      _animationController!.forward();
    }
  }

  void videoListener() {
    final dur = _currentVideoPlayer?.value.duration.inMilliseconds;
    final pos = _currentVideoPlayer?.value.position.inMilliseconds;

    if (pos == dur) {
      _playNext();
      return;
    }

    if (_currentVideoPlayer?.value.isBuffering ?? false) {
      _animationController?.stop(canceled: false);
    }

    if (_currentVideoPlayer?.value.isPlaying ?? false) {
      if (_currentProgressAnimation != null) {
        _animationController?.forward(from: _currentProgressAnimation?.value);
      }
    }
  }

  void audioPositionListener(Duration position) {
    final dur = position.inMilliseconds;
    final pos = _totalAudioDuration?.inMilliseconds;

    if (pos == dur) {
      _playNext();
      return;
    }
  }

  void animationListener() {
    currentItemProgress = _animationController?.value ?? 0;
  }

  void animationStatusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _playNext();
    }
  }

  /// Pauses the media playback.
  void _pauseMedia() {
    _audioPlayer?.pause();
    _currentVideoPlayer?.pause();
    _animationController?.stop(canceled: false);
  }

  /// Toggles mute/unmute for the media.
  void _toggleMuteUnMuteMedia() {
    if (_currentVideoPlayer != null) {
      final videoPlayerValue = _currentVideoPlayer!.value;
      if (videoPlayerValue.volume == 1) {
        _currentVideoPlayer!.setVolume(0);
      } else {
        _currentVideoPlayer!.setVolume(1);
      }
    }
  }

  callComplited() async {
    if (!isCallComplited) {
      isCallComplited = true;
      await widget.onCompleted?.call();
    }
  }

  /// Plays the next story item.
  void _playNext() async {
    if (widget.items.length == 1 && _currentVideoPlayer != null && widget.restartOnCompleted) {
      await callComplited();

      /// In case of story length 1 with video, we won't initialise,
      /// instead we will loop the video
      return;
    }
    if (_currentVideoPlayer != null && currentIndex != (widget.items.length - 1)) {
      /// Dispose the video player only in case of multiple story
      isCurrentItemLoaded = false;
      setState(() {});
      _currentVideoPlayer?.removeListener(videoListener);
      await _currentVideoPlayer?.dispose();
      _currentVideoPlayer = null;
    }
    if (currentIndex == widget.items.length - 1) {
      await callComplited();
      if (widget.restartOnCompleted) {
        currentIndex = 0;
        _resetAnimation();
        _startStoryView();
      }
      if (mounted) {
        setState(() {});
      }
      return;
    }

    currentIndex = currentIndex + 1;
    _resetAnimation();
    widget.onStoryChanged?.call(currentIndex);
    _playMedia();
    if (mounted) {
      setState(() {});
    }
  }

  /// Plays the previous story item.
  void _playPrevious() async {
    if (currentIndex != 0) {
      if (_audioPlayer != null) {
        _audioPlayer?.dispose();
        _audioDurationSubscriptionStream?.cancel();
        _audioPlayerStateStream?.cancel();
      }
      if (_currentVideoPlayer != null) {
        _currentVideoPlayer?.removeListener(videoListener);
        if (currentIndex == 0) {
          _currentVideoPlayer?.seekTo(Duration(milliseconds: 0));
        } else {
          await _currentVideoPlayer?.dispose();
        }
        _currentVideoPlayer = null;
      }
    }

    if (currentIndex == 0) {
      if (mounted) {
        setState(() {});
      }
      widget.onPreviousCompleted?.call();
      return;
    }

    _resetAnimation();
    currentIndex = currentIndex - 1;
    widget.onStoryChanged?.call(currentIndex);
    _playMedia();
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        if (currentItem.thumbnail != null) ...{
          currentItem.thumbnail!,
        },
        if (currentItem.storyItemType.isImage) ...{
          Positioned.fill(
            child: ImageStoryView(
              key: ValueKey('$currentIndex'),
              storyItem: currentItem,
              onImageLoaded: (isLoaded) {
                isCurrentItemLoaded = isLoaded;
                _startStoryCountdown();
              },
              onAudioLoaded: (audioPlayer) {
                _audioPlayer = audioPlayer;
                isCurrentItemLoaded = true;

                _startStoryCountdown();
              },
            ),
          ),
        },
        if (currentItem.storyItemType.isVideo) ...{
          Positioned.fill(
            child: VideoStoryView(
              storyItem: currentItem,
              key: ValueKey('$currentIndex'),
              looping: widget.items.length == 1 && widget.restartOnCompleted,
              onVideoLoad: (videoPlayer) {
                isCurrentItemLoaded = true;
                _currentVideoPlayer = videoPlayer;
                widget.onVideoLoad?.call(videoPlayer);
                _startStoryCountdown();
                if (mounted) {
                  setState(() {});
                }
              },
            ),
          ),
        },
        if (currentItem.storyItemType.isWeb) ...{
          Positioned.fill(
            child: WebStoryView(
              storyItem: currentItem,
              key: ValueKey('$currentIndex'),
              onWebViewLoaded: (controller, loaded) {
                isCurrentItemLoaded = loaded;
                if (loaded) {
                  _startStoryCountdown();
                }
                currentItem.webConfig?.onWebViewLoaded?.call(controller, loaded);
              },
            ),
          ),
        },
        if (currentItem.storyItemType.isText) ...{
          Positioned.fill(
            child: TextStoryView(
              storyItem: currentItem,
              key: ValueKey('$currentIndex'),
              onTextStoryLoaded: (loaded) {
                isCurrentItemLoaded = loaded;
                _startStoryCountdown();
              },
              onAudioLoaded: (audioPlayer) {
                isCurrentItemLoaded = true;
                _audioPlayer = audioPlayer;
                _startStoryCountdown();
              },
            ),
          ),
        },
        if (currentItem.customWidget != null) ...{
          Positioned.fill(
            child: StoryCustomWidgetWrapper(
              isAutoStart: true,
              key: UniqueKey(),
              builder: (audioPlayer) {
                return currentItem.customWidget!(widget.flutterStoryController, audioPlayer) ?? const SizedBox.shrink();
              },
              storyItem: currentItem,
              onLoaded: () {
                isCurrentItemLoaded = true;
                _startStoryCountdown();
              },
              onAudioLoaded: (audioPlayer) {
                isCurrentItemLoaded = true;
                _audioPlayer = audioPlayer;
                _startStoryCountdown();
              },
            ),
          ),
        },
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, _) {
              return Opacity(
                opacity: _animation.value,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(171, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        if (widget.footerWidget != null)
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, _) {
                return Opacity(
                  opacity: _animation.value,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromARGB(171, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        Align(
          alignment: storyViewIndicatorConfig.alignment,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, _) {
              return Opacity(
                opacity: _animation.value,
                child: Padding(
                  padding: storyViewIndicatorConfig.margin,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _currentVideoPlayer != null
                          ? SmoothVideoProgress(
                              controller: _currentVideoPlayer!,
                              builder: (context, progress, duration, child) {
                                return StoryViewIndicator(
                                  currentIndex: currentIndex,
                                  currentItemAnimatedValue: progress.inMilliseconds / duration.inMilliseconds,
                                  totalItems: widget.items.length,
                                  storyViewIndicatorConfig: storyViewIndicatorConfig,
                                );
                              })
                          : _animationController != null
                              ? AnimatedBuilder(
                                  animation: _animationController!,
                                  builder: (context, child) => StoryViewIndicator(
                                    currentIndex: currentIndex,
                                    currentItemAnimatedValue: currentItemProgress,
                                    totalItems: widget.items.length,
                                    storyViewIndicatorConfig: storyViewIndicatorConfig,
                                  ),
                                )
                              : StoryViewIndicator(
                                  currentIndex: currentIndex,
                                  currentItemAnimatedValue: currentItemProgress,
                                  totalItems: widget.items.length,
                                  storyViewIndicatorConfig: storyViewIndicatorConfig,
                                ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: size.width * .2,
            height: size.height,
            child: GestureDetector(
              onTap: _playPrevious,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: size.width * .2,
            height: size.height,
            child: GestureDetector(
              onTap: _playNext,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: GestureDetector(
              key: ValueKey('$currentIndex'),
              onLongPressDown: (details) => _pauseMedia(),
              onLongPress: () => _controller.forward(from: 0),
              onLongPressUp: _resumeMedia,
              onLongPressEnd: (details) => _resumeMedia(),
              onLongPressCancel: _resumeMedia,
              onVerticalDragStart: widget.onSlideStart?.call,
              onVerticalDragUpdate: widget.onSlideDown?.call,
              onVerticalDragEnd: (p0) => widget.onSlideEnd?.call(p0, currentIndex),
            ),
          ),
        ),
        if (widget.headerWidget != null) ...{
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, _) {
                return Opacity(
                  opacity: _animation.value,
                  child: SafeArea(
                    bottom: storyViewIndicatorConfig.enableBottomSafeArea,
                    top: storyViewIndicatorConfig.enableTopSafeArea,
                    child: widget.headerWidget!,
                  ),
                );
              },
            ),
          ),
        },
        if (widget.footerWidget != null) ...{
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, _) {
                return Opacity(
                  opacity: _animation.value,
                  child: widget.footerWidget!,
                );
              },
            ),
          ),
        },
      ],
    );
  }
}
