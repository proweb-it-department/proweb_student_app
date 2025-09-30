import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proweb_student_app/bloc/homework_relation/homework_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/poll_dialog/poll_dialog.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/content_relation_work.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/footer_relation_homework.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/hand_in_the_work.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/homework_about_content.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/models/homework_group/homework_group.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/models/pass_work/pass_work.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class HomeworkStudentWorkFeature extends StatelessWidget {
  final HomeworkStudentRelationGroup relation;
  final HomeworkGroup work;
  final List<GlobalComment> comments;
  const HomeworkStudentWorkFeature({
    super.key,
    required this.relation,
    required this.work,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final customColors = Theme.of(context).extension<CustomColors>();
    final deadlineExpired = relation.deadlineExpired;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                bottom: bottomPadding + 10,
                left: 10,
                right: 10,
                top: 10,
              ),
              children: [
                FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: customColors?.additionalTwo,
                    textStyle: TextStyle(color: customColors?.primaryTextColor),
                  ),
                  iconAlignment: IconAlignment.start,
                  icon: Icon(
                    Icons.keyboard_arrow_left_outlined,
                    color: customColors?.primaryTextColor,
                  ),
                  onPressed: () {
                    final tabsRouter = AutoTabsRouter.of(context);
                    tabsRouter.setActiveIndex(0);
                  },
                  label: Text(
                    'group_homework.go_to_work'.tr(),
                    style: TextStyle(color: customColors?.primaryTextColor),
                  ),
                ),
                SizedBox(height: 10),
                InfoDedlineWork(
                  relation: relation,
                  padding: EdgeInsetsGeometry.only(bottom: 10),
                ),
                if (relation.homeworkMaterials?.isEmpty == true &&
                    deadlineExpired == false)
                  HandInTheWork(
                    collback: (files, links, nots) async {
                      final bloc = context.read<HomeworkRelationBloc>();
                      List<String> correctLinks = _listLinks(links);
                      if (files.isEmpty && correctLinks.isEmpty) {
                        _showToast(customColors);
                        return;
                      }
                      bloc.add(
                        HomeworkRelationEvent.pass(
                          files: files,
                          links: correctLinks,
                          note: nots.text.trim(),
                        ),
                      );
                      await bloc.stream.first;
                      PollDialog().showGlobalDialog();
                    },
                  )
                else
                  ContentRelationWork(relation: relation),
              ],
            ),
          ),
          if (relation.homeworkMaterials?.isNotEmpty == true)
            FooterRelationHomework(relation: relation),
        ],
      ),
    );
  }

  void _showToast(CustomColors? customColors) {
    Fluttertoast.showToast(
      msg: "group_homework.file_link_is_empty".tr(),
      backgroundColor: customColors?.errorFill,
    );
  }

  List<String> _listLinks(List<DataLink> links) {
    List<String> correctLinks = [];
    final regex = RegExp(
      r'^(https?|ftp):\/\/([^\s\/?\.#]+(?:\.[^\s\/?\.#-]+)+)([^\s]*)$',
      caseSensitive: false,
    );
    for (var element in links) {
      final link = element.controller.text.trim();
      if (regex.hasMatch(link)) {
        correctLinks.add(link);
      }
    }
    return correctLinks;
  }
}
