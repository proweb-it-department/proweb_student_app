import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/download_file/downloader_files_bloc.dart';
import 'package:proweb_student_app/models/file_download/file_download_model.dart';
import 'package:proweb_student_app/models/global_comment/global_comment.dart';
import 'package:proweb_student_app/utils/download_manager/file_download_manager.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class FileComments extends StatelessWidget {
  final List<Files> files;
  const FileComments({super.key, required this.files});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<DownloaderFilesBloc, DownloaderFilesState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return SizedBox();
          },
          download: (download, downloaders) {
            return Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10,
              children: [
                ...List.generate(files.length, (index) {
                  final item = files[index];
                  final id = 1000000000;
                  final find = downloaders.firstWhere(
                    (element) =>
                        element.id == int.parse('${id + (item.id ?? 0)}'),
                    orElse: () => FileSavedData(
                      displayName: '',
                      id: 0,
                      link: item.file ?? '',
                      createdAt: 0,
                    ),
                  );
                  File? file;
                  if (!find.link.startsWith('http')) {
                    file = File(find.link);
                  }
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: file != null
                              ? Image.file(file).image
                              : CachedNetworkImageProvider(find.link),
                          fit: BoxFit.cover,
                        ),
                        color: customColors?.primaryBg,
                      ),
                      child: _icon(download, downloaders, item),
                    ),
                  );
                }),
              ],
            );
          },
        );
      },
    );
  }

  Widget _icon(
    FileDownloadModel? download,
    List<FileSavedData> downloaders,
    Files item,
  ) {
    final id = 1000000000;
    final find = downloaders.firstWhere(
      (element) => element.id == int.parse('${id + (item.id ?? 0)}'),
      orElse: () => FileSavedData(
        displayName: '',
        id: 0,
        link: item.file ?? '',
        createdAt: 0,
      ),
    );
    if (download == null && find.id == 0) {
      return Container(
        alignment: Alignment.center,
        color: Colors.black.withAlpha(150),
        width: double.infinity,
        height: double.infinity,
        child: IconButton(
          onPressed: () {
            if (item.file == null) return;
            sl<DownloadManagerFile>().download(
              FileDownloadModel(
                progress: 0,
                progressType: ProgressTypeDownloadVideo.key,
                createdAt: DateTime.now().millisecondsSinceEpoch,
                displayName: find.link.split('/').last,
                id: id + (item.id ?? 0),
                link: item.file!,
              ),
            );
          },
          icon: Icon(Icons.download, color: Colors.white),
        ),
      );
    } else if (find.id != 0) {
      return InkWell(
        onLongPress: () async {
          await sl<LocalData>().shareFiles(files: [find.link]);
        },
        onTap: () async {
          await sl<LocalData>().openFile(path: find.link);
        },
        child: SizedBox(width: double.infinity, height: double.infinity),
      );
    } else if (download != null &&
        download.id == int.parse('${id + (item.id ?? 0)}')) {
      final type = download.progressType;
      if (type == ProgressTypeDownloadVideo.segements) {
        final progress = (download.progress / 100);
        return Container(
          alignment: Alignment.center,
          color: Colors.black.withAlpha(150),
          width: double.infinity,
          height: double.infinity,
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 1,
              value: progress < 0.05 ? null : progress,
            ),
          ),
        );
      } else {
        return Container(
          alignment: Alignment.center,
          color: Colors.black.withAlpha(150),
          width: double.infinity,
          height: double.infinity,
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 1,
              color: Colors.white,
            ),
          ),
        );
      }
    } else {
      return Container(
        alignment: Alignment.center,
        color: Colors.black.withAlpha(150),
        width: double.infinity,
        height: double.infinity,
      );
    }
  }
}
