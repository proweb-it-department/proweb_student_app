import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mime/mime.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/pass_work/pass_work.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class HomeworkCommentFooter extends StatefulWidget {
  final bool isLoadComment;
  final Function(String comment, List<String> files, BuildContext context)
  onSend;
  const HomeworkCommentFooter({
    super.key,
    required this.isLoadComment,
    required this.onSend,
  });

  @override
  State<HomeworkCommentFooter> createState() => _HomeworkCommentFooterState();
}

class _HomeworkCommentFooterState extends State<HomeworkCommentFooter> {
  List<ModelFile> files = [];
  bool _showLeading = true;
  String _comment = '';
  int key = 1;

  void _addFile(String? path, String? name) {
    if (path != null && name != null) {
      final find = files.firstWhere(
        (element) => element.name == name,
        orElse: () => ModelFile(path: '', icon: SizedBox(), name: ''),
      );
      if (find.name == '') {
        final model = ModelFile(path: path, icon: SizedBox(), name: name);
        setState(() {
          files.add(model);
        });
      }

      return;
    }
    Fluttertoast.showToast(msg: "group_homework.file_select_error".tr());
  }

  void _deletePath(String path) {
    final list = files.where((element) => element.path != path).toList();
    setState(() {
      files = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(width: 2, color: Colors.transparent),
    );
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      padding: EdgeInsetsGeometry.only(
        left: _comment.isEmpty ? 10 : 0,
        right: _comment.isEmpty ? 10 : 0,
        bottom: _comment.isEmpty ? bottomPadding + 10 : 0,
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        decoration: BoxDecoration(
          color: customColors?.additionalTwo,
          borderRadius: _comment.isEmpty
              ? BorderRadius.circular(30)
              : BorderRadius.zero,
        ),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          top: 5,
          left: 5,
          right: 5,
          bottom: _comment.isEmpty ? 5 : bottomPadding + 5,
        ),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (files.isNotEmpty)
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 10,
                children: List.generate(files.length, (index) {
                  final file = File(files[index].path);
                  return GestureDetector(
                    onTap: () {
                      if (!widget.isLoadComment) {
                        _deletePath(files[index].path);
                      }
                    },
                    onLongPress: () async {
                      await sl<LocalData>().openFile(path: files[index].path);
                    },
                    child: Container(
                      width: 70,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: Image.file(file).image,
                          fit: BoxFit.cover,
                        ),
                        color: Colors.black.withAlpha(150),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withAlpha(150),
                            ),
                          ),
                          if (!widget.isLoadComment)
                            Positioned(
                              top: -1,
                              right: -1,
                              child: Icon(
                                Icons.delete,
                                color: customColors?.errorFill,
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    key: ValueKey<int>(key),
                    onChanged: (value) {
                      setState(() {
                        _showLeading = value.trim().isEmpty;
                      });
                      setState(() {
                        _comment = value.trim();
                      });
                    },
                    autofocus: false,
                    decoration: InputDecoration(
                      border: border,
                      errorBorder: border,
                      enabledBorder: border,
                      focusedBorder: border,
                      disabledBorder: border,
                      focusedErrorBorder: border,
                      fillColor: customColors?.primaryBg,
                      focusColor: customColors?.primaryBg,
                      filled: true,
                      hintStyle: TextStyle(color: customColors?.additionalTwo),
                      hintText: 'group_homework.write_comment_homework'.tr(),
                    ),
                    minLines: 1,
                    maxLines: 7,
                    textInputAction: TextInputAction.newline,
                  ),
                ),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 150),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: Offset(0.3, 0),
                            end: Offset(0, 0),
                          ).animate(animation),
                          child: FadeTransition(
                            alwaysIncludeSemantics: true,
                            opacity: animation,
                            child: child,
                          ),
                        );
                      },
                  child: !widget.isLoadComment
                      ? !_showLeading
                            ? IconButton(
                                key: ValueKey('icon2'),
                                onPressed: _comment.trim().isNotEmpty
                                    ? () {
                                        final comment = _comment.trim();
                                        final saveFiles = files
                                            .map((e) => e.path)
                                            .toList();
                                        widget.onSend(
                                          comment,
                                          saveFiles,
                                          context,
                                        );
                                        setState(() {
                                          _comment = '';
                                        });
                                        setState(() {
                                          _showLeading = _comment
                                              .trim()
                                              .isEmpty;
                                        });
                                        files = [];
                                        key++;
                                      }
                                    : null,
                                icon: Icon(Icons.send, size: 18),
                              )
                            : IconButton(
                                key: ValueKey('icon'),
                                onPressed: files.length >= 5
                                    ? null
                                    : () async {
                                        FilePickerResult? result =
                                            await sl<LocalData>().filePicker(
                                              type: FileType.media,
                                            );

                                        if (result != null) {
                                          if (result.files.single.path !=
                                              null) {
                                            final mime = lookupMimeType(
                                              result.files.single.path!,
                                            );
                                            if (mime?.contains('image') ==
                                                true) {
                                              _addFile(
                                                result.files.single.path,
                                                result.files.single.name,
                                              );
                                            }
                                          }
                                        }
                                      },
                                icon: Icon(Icons.image),
                              )
                      : Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Md3CirculeIndicator(size: 30),
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
