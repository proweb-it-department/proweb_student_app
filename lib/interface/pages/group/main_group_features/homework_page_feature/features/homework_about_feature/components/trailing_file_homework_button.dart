import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/download_file/downloader_files_bloc.dart';
import 'package:proweb_student_app/models/file_download/file_download_model.dart';
import 'package:proweb_student_app/models/homework_student_relation_group/homework_student_relation_group.dart';
import 'package:proweb_student_app/utils/download_manager/file_download_manager.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class TrailingFileHomeworkButton extends StatelessWidget {
  final HomeworkMaterials item;
  const TrailingFileHomeworkButton({super.key, required this.item});

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
                  final name =
                      item.file?.split('/').last ??
                      '${DateTime.now().millisecondsSinceEpoch}';
                  sl<DownloadManagerFile>().download(
                    FileDownloadModel(
                      progress: 0,
                      progressType: ProgressTypeDownloadVideo.key,
                      createdAt: DateTime.now().millisecondsSinceEpoch,
                      displayName: name,
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
