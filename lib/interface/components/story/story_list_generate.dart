import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_presenter/flutter_story_presenter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/bloc/story_groups/story_groups_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/story/view_story_model.dart';
import 'package:proweb_student_app/models/story_groups_for_student/story_groups_for_student.dart';
import 'package:proweb_student_app/utils/enum/story_enums.dart';

List<ViewStoryModel> storyListGenerate(
  List<StoryGroupsForStudent> stories,
  String hero,
  StoryGroupsBloc bloc,
) {
  if (stories.isEmpty) return [];
  final story = stories.map(((story) {
    final storyPreview = story.preview;
    return ViewStoryModel(
      preview: storyPreview ?? '',
      title: story.title ?? '',
      groupId: story.id ?? 0,
      hero: hero,
      stories: (story.stories ?? []).map((storyItem) {
        StoryItemType storyItemType = StoryItemType.custom;
        StoryItemSource storyItemSource = StoryItemSource.network;
        bool isThumbnail = false;
        StoryViewVideoConfig? videoConfig;
        StoryViewImageConfig? imageConfig;
        if (storyItem.contentType == SoryContentType.video) {
          storyItemType = StoryItemType.video;
          isThumbnail = false;
          videoConfig = StoryViewVideoConfig(
            cacheVideo: true,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            loadingWidget: Center(child: Md3CirculeIndicator()),
          );
        } else if (storyItem.contentType == SoryContentType.photo) {
          storyItemType = StoryItemType.image;
          isThumbnail = true;
          imageConfig = StoryViewImageConfig(
            width: double.infinity,
            progressIndicatorBuilder: (p0, p1, p2) {
              return Center(child: Md3CirculeIndicator());
            },
          );
        }
        String? thumbnailImage;
        if (isThumbnail) {
          if (imageConfig != null) {
            if (storyItem.content != null) {
              thumbnailImage = storyItem.content;
            }
          }
        }

        Widget? thumbnail;
        if (isThumbnail) {
          thumbnail = Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: storyPreview != null
                  ? DecorationImage(
                      image: CachedNetworkImageProvider(
                        thumbnailImage ?? storyPreview,
                      ),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                    child: Container(color: Colors.black.withAlpha(50)),
                  ),
                ),
              ],
            ),
          );
        }

        final storyItemWidget = StoryItem(
          storyItemType: storyItemType,
          storyItemSource: storyItemSource,
          url: storyItem.content,
          videoConfig: videoConfig,
          imageConfig: imageConfig,
          duration: Duration(seconds: storyItem.duration ?? 15),
          customWidget: (p0, audioPlayer) {
            final question =
                storyItem.question != null &&
                storyItem.question?.isNotEmpty == true;
            Widget? custom;
            if (question &&
                storyItem.poll == true &&
                storyItem.pollOptions?.isNotEmpty == true) {
              final action = storyItem.actions?.firstOrNull;
              final options = [...(storyItem.pollOptions!)];
              options.sort((a, b) => (a.position ?? 0) - (b.position ?? 0));
              custom = Center(
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha((255 * 0.2).round()),
                            blurRadius: 4,
                            spreadRadius: 1,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 16,
                                ),
                                color: HexColor('#121212'),
                                child: Text(
                                  storyItem.question!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ...options.map((option) {
                                return Material(
                                  child: ListTile(
                                    shape: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.shade100,
                                        width: 1,
                                      ),
                                    ),
                                    onTap: action?.optionId == null
                                        ? () {
                                            bloc.add(
                                              StoryGroupsEvent.action(
                                                storyId: storyItem.id ?? 0,
                                                groupId: story.id!,
                                                optionId: option.id,
                                              ),
                                            );
                                          }
                                        : null,
                                    tileColor: action?.optionId == option.id
                                        ? Colors.grey.shade100.withAlpha(200)
                                        : Colors.white,
                                    leading: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: action?.optionId == option.id
                                              ? Colors.green
                                              : HexColor('#121212'),
                                          width: 2,
                                        ),
                                      ),
                                      child: action?.optionId == option.id
                                          ? Icon(
                                              Icons.check,
                                              size: 12,
                                              color: Colors.green,
                                            )
                                          : null,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 0,
                                    ),
                                    title: Text(
                                      option.text ?? '',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
            if (imageConfig == null && videoConfig == null) {
              custom = FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: storyItem.backgroundColor != null
                      ? HexColor(storyItem.backgroundColor!)
                      : null,
                  child: custom,
                ),
              );
            }
            return custom;
          },
          thumbnail: thumbnail,
        );
        return ViewStoryItemModel(
          story: storyItemWidget,
          storyId: storyItem.id ?? 0,
          buttonText: storyItem.buttonText,
          buttonUrl: storyItem.buttonUrl,
          action: (storyItem.actions ?? []),
        );
      }).toList(),
    );
  })).toList();
  return story;
}
