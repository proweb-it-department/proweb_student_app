import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/models/pass_work/pass_work.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/file_icon_manager/file_icon_manager.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:uuid/uuid.dart';

class HandInTheWork extends StatefulWidget {
  final MyGroupsItem groupUser;
  final Function(
    List<ModelFile> files,
    List<DataLink> links,
    TextEditingController nots,
  )
  collback;
  const HandInTheWork({
    super.key,
    required this.collback,
    required this.groupUser,
  });

  @override
  State<HandInTheWork> createState() => _HandInTheWorkState();
}

class _HandInTheWorkState extends State<HandInTheWork> {
  List<ModelFile> files = [];
  List<DataLink> links = [];
  final controller = TextEditingController();
  bool isLoad = false;

  @override
  void initState() {
    super.initState();
    if (links.isEmpty) {
      var uuid = Uuid();
      setState(() {
        links.add(DataLink(id: uuid.v4(), controller: TextEditingController()));
      });
    }
  }

  void _addFile(String? path, Widget? icon, String? name, int size) {
    if (path != null && icon != null && name != null) {
      final hasVerifaed = _isFileSizeExceeds(size);
      if (hasVerifaed) {
        final find = files.firstWhere(
          (element) => element.name == name,
          orElse: () => ModelFile(path: '', icon: SizedBox(), name: ''),
        );
        if (find.name == '') {
          final model = ModelFile(path: path, icon: icon, name: name);
          setState(() {
            files.add(model);
          });
        }
        return;
      } else {
        Fluttertoast.showToast(msg: "group_homework.file_big_size_error".tr());
        return;
      }
    }
    Fluttertoast.showToast(msg: "group_homework.file_select_error".tr());
  }

  bool _isFileSizeExceeds(int fileSizeInBytes) {
    const int maxSizeInBytes = 50 * 1024 * 1024;
    return fileSizeInBytes <= maxSizeInBytes;
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

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'group_homework.attach_file_title'.tr(),
            style: TextStyle(fontSize: 18),
          ),
        ),
        ...List.generate(files.length, (index) {
          final item = files[index];
          return Material(
            color: Colors.transparent,
            child: ListTile(
              onTap: () async {
                await sl<LocalData>().openFile(path: item.path);
              },
              tileColor: customColors?.containerColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: customColors?.borderColors ?? Colors.transparent,
                ),
              ),
              leading: item.icon,
              title: Text(
                item.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: customColors?.errorFillOp,
                ),
                icon: Icon(Icons.delete, color: customColors?.errorFill),
                onPressed: () => _deletePath(item.path),
              ),
            ),
          );
        }),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GestureDetector(
            onTap: () async {
              FilePickerResult? result = await sl<LocalData>().filePicker();

              if (result != null) {
                if (result.files.single.path != null) {
                  _addFile(
                    result.files.single.path,
                    FileIconManager().getIconPath(
                      filePath: result.files.single.path!,
                    ),
                    result.files.single.name,
                    result.files.single.size,
                  );
                }
              } else {}
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: customColors?.containerColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: customColors?.borderColors ?? Colors.transparent,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              ),
              child: Column(
                spacing: 15,
                children: [
                  Icon(
                    Icons.upload_file,
                    size: 50,
                    color: customColors?.additionalTwo,
                  ),
                  Text('group_homework.attach_file_select'.tr()),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'group_homework.attach_link_title'.tr(),
            style: TextStyle(fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'group_homework.not_student_links'.tr(),
            style: TextStyle(fontSize: 16, color: customColors?.additionalTwo),
          ),
        ),
        ...List.generate(links.length, (index) {
          final border = OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 3),
          );
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: customColors?.containerColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              key: ValueKey<String>(links[index].id),
              controller: links[index].controller,
              decoration: InputDecoration(
                enabledBorder: border,
                errorBorder: border,
                focusedBorder: border,
                disabledBorder: border,
                focusedErrorBorder: border,
                border: border,
                helperText: 'group_homework.example_link_title'.tr(),
                labelText: 'group_homework.write_link_work'.tr(),
                alignLabelWithHint: false,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                icon: index == (links.length - 1)
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            var uuid = Uuid();
                            setState(() {
                              links.add(
                                DataLink(
                                  id: uuid.v4(),
                                  controller: TextEditingController(),
                                ),
                              );
                            });
                          });
                        },
                        icon: Icon(Icons.add_circle),
                      )
                    : SizedBox(width: 10),
                suffixIcon: links.length > 1
                    ? Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.transparent,
                          ),
                          icon: Icon(
                            Icons.delete,
                            color: customColors?.errorFill,
                          ),
                          onPressed: () {
                            setState(() {
                              links = links.where((element) {
                                return element.id != links[index].id;
                              }).toList();
                            });
                          },
                        ),
                      )
                    : null,
              ),
            ),
          );
        }),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            labelText: 'group_homework.note_to_instructor'.tr(),
          ),
          controller: controller,
          textInputAction: TextInputAction.newline,
          maxLines: 8,
          minLines: 1,
        ),
        SizedBox(height: 5),
        !isLoad
            ? FilledButton(
                onPressed: () async {
                  setState(() {
                    isLoad = true;
                  });
                  await widget.collback(files, links, controller);
                  setState(() {
                    isLoad = false;
                  });
                },
                child: Text('group_homework.submit_for_review_homework'.tr()),
              )
            : Center(child: Md3CirculeIndicator()),
      ],
    );
  }
}
