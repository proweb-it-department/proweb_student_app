import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_presenter/flutter_story_presenter.dart';
import 'package:proweb_student_app/interface/components/story/view_story_model.dart';

class HeaderStoryGroupView extends StatelessWidget {
  final FlutterStoryController controller;
  const HeaderStoryGroupView({super.key, required this.storyModel, required this.controller});

  final ViewStoryModel storyModel;

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
              Hero(
                tag: '${storyModel.hero}${storyModel.groupId}',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(8))),
                    padding: const EdgeInsets.all(1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: CachedNetworkImage(imageUrl: storyModel.preview, height: 35, width: 35, fit: BoxFit.cover),
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
                        storyModel.title,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.verified, size: 15),
                    const SizedBox(width: 3),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
