import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/comment_file.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class HomeworkCommentsBody extends StatelessWidget {
  final List<GlobalComment> comments;
  const HomeworkCommentsBody({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ListView.separated(
      padding: EdgeInsets.all(10),
      reverse: true,
      itemBuilder: (context, index) {
        final myProfile = sl<LocalData>().profile;
        final width = MediaQuery.of(context).size.width * 0.8;
        final item = comments.reversed.toList()[index];
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
        final id = (item.createdBy?.id ?? item.createdBy?.userId);
        final isMyUser = myProfile?.id == id;
        if (isMyUser) {
          mainAxisAlignment = MainAxisAlignment.end;
        }
        String time = '';
        if (item.createdAt != null) {
          time =
              '${sl<LocalData>().getDateString(date: DateTime.parse(item.createdAt!), seporator: DateSeporator.wd)} ${DateTime.parse(item.createdAt!).hour.toString().padLeft(2, '0')}:${DateTime.parse(item.createdAt!).minute.toString().padLeft(2, '0')}';
        }
        return Align(
          alignment: isMyUser ? Alignment.centerRight : Alignment.centerLeft,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: width),
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              spacing: 5,
              children: [
                if (!isMyUser)
                  Avatar(
                    user: isMyUser ? null : item.createdBy?.user,
                    profile: isMyUser ? myProfile : null,
                  ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: !isMyUser
                          ? customColors?.containerColor
                          : customColors?.additionalTwo.withAlpha(150),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
                      children: [
                        if (!isMyUser)
                          Text(
                            sl<LocalData>().nameUser(item.createdBy?.user),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: customColors?.primaryTextColor.withAlpha(
                                100,
                              ),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        if (item.files?.isNotEmpty == true)
                          FileComments(files: item.files ?? []),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 4,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: isMyUser
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                          children: [
                            Linkify(
                              softWrap: true,
                              style: TextStyle(
                                color: customColors?.primaryTextColor,
                              ),
                              linkStyle: TextStyle(color: Colors.blue),
                              onOpen: (link) {
                                _launchUrl(link.url);
                              },
                              text: item.content ?? '',
                            ),
                            if (item.createdAt != null)
                              Opacity(
                                opacity: 0.7,
                                child: Text(
                                  time,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: comments.length,
    );
  }

  Future<void> _launchUrl(String? url) async {
    await sl<LocalData>().openLink(url: url);
  }
}
