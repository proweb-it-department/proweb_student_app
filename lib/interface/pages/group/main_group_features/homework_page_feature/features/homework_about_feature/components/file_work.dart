import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/download_file/downloader_files_bloc.dart';
import 'package:proweb_student_app/models/file_download/file_download_model.dart';
import 'package:proweb_student_app/models/homework_group/homework_group.dart';
import 'package:proweb_student_app/utils/download_manager/file_download_manager.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/file_icon_manager/file_icon_manager.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class FileWork extends StatefulWidget {
  final List<AttachedData> attachFile;
  const FileWork({super.key, required this.attachFile});

  @override
  State<FileWork> createState() => _FileWorkState();
}

class _FileWorkState extends State<FileWork> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(
        color: customColors?.borderColor ?? Colors.transparent,
        width: 1,
      ),
    );
    final files = widget.attachFile
        .where((element) => element.file is String)
        .toList();
    bool isFiles = false;
    if (files.isNotEmpty) isFiles = true;
    return ExpansionTile(
      backgroundColor: customColors?.containerColor,
      collapsedBackgroundColor: customColors?.containerColor,
      collapsedShape: shape,
      shape: shape,
      leading: Icon(Icons.insert_drive_file_sharp),
      initiallyExpanded: isFiles,
      title: Text('group_homework.file_to_work'.tr()),
      children: [
        Divider(height: 1),
        if (!isFiles)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NoData(
              text: 'group_homework.file_to_work_not_found'.tr(),
              icon: Icons.insert_drive_file_sharp,
              color: customColors?.primaryBg,
            ),
          )
        else
          ...List.generate(files.length, (index) {
            final item = files[index];
            final filePath = item.file;
            if (filePath == null) return SizedBox();
            String downloadPath = filePath;
            if (!downloadPath.contains('http')) {
              downloadPath = '${GlobalPath.main}${item.file!}';
            }

            return ListTile(
              leading: item.file != null
                  ? FileIconManager().getIconPath(filePath: downloadPath)
                  : null,
              title: Text(
                item.displayName ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: TrailingFileButton(item: item),
            );
          }),
      ],
    );
  }
}

class TrailingFileButton extends StatelessWidget {
  final AttachedData item;
  const TrailingFileButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloaderFilesBloc, DownloaderFilesState>(
      builder: (context, state) {
        return state.when(
          initial: () => SizedBox(),
          download: (download, downloaders) {
            final find = downloaders.firstWhere(
              (element) => element.id == item.id,
              orElse: () =>
                  FileSavedData(displayName: '', id: 0, link: '', createdAt: 0),
            );
            if (download == null && find.id == 0) {
              return IconButton(
                onPressed: () {
                  if (item.file == null) return;
                  sl<DownloadManagerFile>().download(
                    FileDownloadModel(
                      progress: 0,
                      progressType: ProgressTypeDownloadVideo.key,
                      createdAt: DateTime.now().millisecondsSinceEpoch,
                      displayName: item.displayName ?? '',
                      id: item.id ?? 0,
                      link: item.file!,
                    ),
                  );
                },
                icon: Icon(Icons.download),
              );
            } else if (find.id != 0) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 5,
                children: [
                  IconButton(
                    icon: Icon(Icons.share),
                    alignment: Alignment.center,
                    onPressed: () async {
                      await sl<LocalData>().shareFiles(files: [find.link]);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_right),
                    alignment: Alignment.centerRight,
                    onPressed: () async {
                      await sl<LocalData>().openFile(path: find.link);
                    },
                  ),
                ],
              );
            } else if (download != null && download.id == item.id) {
              final type = download.progressType;
              if (type == ProgressTypeDownloadVideo.segements) {
                final progress = (download.progress / 100);
                return SizedBox(
                  width: 25,
                  height: 25,
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                    value: progress < 0.05 ? null : progress,
                  ),
                );
              } else {
                return SizedBox(
                  width: 25,
                  height: 25,
                  child: CircularProgressIndicator(strokeWidth: 1),
                );
              }
            } else {
              return SizedBox();
            }
          },
        );
      },
    );
  }
}
