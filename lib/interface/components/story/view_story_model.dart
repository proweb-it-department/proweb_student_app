import 'package:flutter_story_presenter/flutter_story_presenter.dart';
import 'package:proweb_student_app/models/story_groups_for_student/story_groups_for_student.dart';

class ViewStoryModel {
  String title;
  String preview;
  String hero;
  int groupId;
  List<ViewStoryItemModel> stories;

  ViewStoryModel({required this.title, required this.preview, required this.hero, required this.stories, required this.groupId});
}

class ViewStoryItemModel {
  StoryItem story;
  List<Actions> action;
  int storyId;
  String? buttonText;
  String? buttonUrl;
  ViewStoryItemModel({required this.story, required this.action, required this.storyId, this.buttonText, this.buttonUrl});
}
