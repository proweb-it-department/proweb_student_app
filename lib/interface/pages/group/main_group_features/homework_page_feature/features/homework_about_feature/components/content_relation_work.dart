import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/homework_relation/homework_relation_bloc.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/hand_in_the_work.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/components/trailing_file_homework_button.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/models/pass_work/pass_work.dart';
import 'package:proweb_student_app/utils/file_icon_manager/file_icon_manager.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ContentRelationWork extends StatelessWidget {
  final HomeworkStudentRelationGroup relation;
  const ContentRelationWork({super.key, required this.relation});

  @override
  Widget build(BuildContext context) {
    final files = relation.homeworkMaterials?.where((element) {
      return element.file != null;
    }).toList();
    final links = relation.homeworkMaterials?.where((element) {
      return element.link != null;
    }).toList();
    final customColors = Theme.of(context).extension<CustomColors>();
    final deadlineExpired = relation.deadlineExpired;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [
        Divider(),
        if ((relation.checkedRetakenAt == null && (relation.score ?? 0) == 0) &&
            deadlineExpired == false)
          FilledButton(
            onPressed: () {
              showDialog(
                useSafeArea: false,
                context: context,
                builder: (contextDialog) {
                  final bottomPadding = MediaQuery.of(
                    contextDialog,
                  ).viewPadding.bottom;
                  final topPadding = MediaQuery.of(contextDialog).padding.top;
                  return Dialog.fullscreen(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        bottom: bottomPadding + 10,
                        top: topPadding + 5,
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(Icons.close),
                                ),
                                Center(
                                  child: Text(
                                    'PROWEB',
                                    style: GoogleFonts.roboto(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                              if (contextDialog.mounted) {
                                Navigator.of(contextDialog).pop();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text('group_homework.attach_more_works'.tr()),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'group_homework.attach_file_title'.tr(),
            style: TextStyle(fontSize: 18),
          ),
        ),
        if (files == null || files.isEmpty)
          NoData(
            text: 'group_homework.not_solved_file_student'.tr(),
            icon: Icons.insert_drive_file_sharp,
          )
        else
          ...List.generate(files.length, (index) {
            final item = files[index];
            final name = item.file?.split('/').last ?? '';
            return Material(
              color: Colors.transparent,
              child: ListTile(
                tileColor: customColors?.containerColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: customColors?.borderColors ?? Colors.transparent,
                  ),
                ),
                leading: FileIconManager().getIconPath(filePath: item.file!),
                title: Text(name, maxLines: 1, overflow: TextOverflow.ellipsis),
                subtitle: item.createdAt == null
                    ? null
                    : Text(
                        sl<LocalData>().getDateString(
                          date: DateTime.parse(item.createdAt!),
                        ),
                      ),
                trailing: TrailingFileHomeworkButton(item: item),
              ),
            );
          }),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'group_homework.attach_link_title'.tr(),
            style: TextStyle(fontSize: 18),
          ),
        ),
        if (links == null || links.isEmpty)
          NoData(
            text: 'group_homework.not_solved_link_student'.tr(),
            icon: Icons.link,
          )
        else
          ...List.generate(links.length, (index) {
            final item = links[index];
            return Material(
              color: Colors.transparent,
              child: ListTile(
                tileColor: customColors?.containerColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: customColors?.borderColors ?? Colors.transparent,
                  ),
                ),
                leading: Icon(Icons.link),
                title: Text(
                  item.link ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: item.createdAt == null
                    ? null
                    : Text(
                        sl<LocalData>().getDateString(
                          date: DateTime.parse(item.createdAt!),
                        ),
                      ),
                trailing: IconButton(
                  onPressed: () => _launchUrl(item.link),
                  icon: Icon(Icons.open_in_new),
                ),
              ),
            );
          }),
      ],
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

  Future<void> _launchUrl(String? url) async {
    await sl<LocalData>().openLink(url: url);
  }
}
