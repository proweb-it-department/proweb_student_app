import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_presenter/flutter_story_presenter.dart';
import 'package:proweb_student_app/interface/components/story/view_story_model.dart';

class HeaderStoryGroupView extends StatefulWidget {
  final FlutterStoryController controller;
  const HeaderStoryGroupView({
    super.key,
    required this.storyModel,
    required this.controller,
  });

  final ViewStoryModel storyModel;

  @override
  State<HeaderStoryGroupView> createState() => _HeaderStoryGroupViewState();
}

class _HeaderStoryGroupViewState extends State<HeaderStoryGroupView> {
  bool _paused = false;

  void _changeState() {
    setState(() {
      _paused = widget.controller.storyStatus.isPause;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  padding: const EdgeInsets.all(1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CachedNetworkImage(
                      imageUrl: widget.storyModel.preview,
                      height: 35,
                      width: 35,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.storyModel.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.verified, size: 15, color: Colors.white),
                    const SizedBox(width: 3),
                  ],
                ),
              ),
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {
                  if (_paused) {
                    widget.controller.play();
                  } else {
                    widget.controller.pause();
                  }
                  _changeState();
                },
                icon: Icon(
                  _paused ? Icons.play_arrow : Icons.pause,
                  color: Colors.white,
                ),
              ),
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
