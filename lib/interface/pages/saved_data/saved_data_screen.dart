import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/download_video/download_video_bloc.dart';
import 'package:proweb_student_app/bloc/saved_data_info/saved_data_info_bloc.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/download_file/downloader_files_bloc.dart';
import 'package:proweb_student_app/models/saved_data_info_model/saved_data_info_model.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class SavedDataScreen extends StatelessWidget {
  const SavedDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocProvider(
      create: (context) =>
          SavedDataInfoBloc()..add(SavedDataInfoEvent.started()),
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: customColors?.containerColor,
              ),
              onPressed: () {
                context.router.pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
            surfaceTintColor: customColors?.additionalTwo,
            title: Text('Память'),
          ),
          body: BodySavedData(),
        ),
      ),
    );
  }
}

class BodySavedData extends StatelessWidget {
  const BodySavedData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedDataInfoBloc, SavedDataInfoState>(
      builder: (context, state) {
        return switch (state) {
          SavedDataInfoInition() => Center(child: Md3CirculeIndicator()),
          SavedDataInfoComplited(data: final data) => SizedData(data: data),
        };
      },
    );
  }
}

class SizedData extends StatelessWidget {
  final SavedDataInfoModel data;
  const SizedData({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final savedData = context.read<SavedDataInfoBloc>();
    final videoStore = context.read<DownloadVideoBloc>();
    final fileStore = context.read<DownloaderFilesBloc>();
    videoStore.add(DownloadVideoEvent.started());
    fileStore.add(DownloaderFilesEvent.started());
    double fileGB = 0;
    final dataFile = data.file;
    if (dataFile != null && dataFile != 0) {
      fileGB = dataFile;
    }
    double videoGB = 0;
    final datavideo = data.video;
    if (datavideo != null && datavideo != 0) {
      videoGB = datavideo;
    }
    double cacheGB = 0;
    final datacache = data.cache;
    if (datacache != null && datacache != 0) {
      cacheGB = datacache;
    }
    double allSize = 0;
    final dataAll = data.all;
    if (dataAll != null) {
      allSize = dataAll;
    }
    final total = sl<LocalData>().formatSize(
      (allSize).round(),
      type: FileSizeType.by,
      round: true,
    );
    final allSizeSaved = videoGB + fileGB + cacheGB;
    final totalDownload = sl<LocalData>()
        .formatSize(allSizeSaved.round(), type: FileSizeType.by, round: true)
        .split(' ');
    final videoDownload = sl<LocalData>().formatSize(
      videoGB.round(),
      type: FileSizeType.by,
      round: true,
    );
    final fileDownload = sl<LocalData>().formatSize(
      fileGB.round(),
      type: FileSizeType.by,
      round: true,
    );
    final cacheDownload = sl<LocalData>().formatSize(
      cacheGB.round(),
      type: FileSizeType.by,
      round: true,
    );
    final totalDownloadNumber = totalDownload.first;
    final totalDownloadSize = totalDownload.last;
    final customColors = Theme.of(context).extension<CustomColors>();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Занято', style: GoogleFonts.openSans(fontSize: 18)),
                    SizedBox(width: 5),
                    Text(
                      totalDownloadNumber,
                      style: GoogleFonts.openSans(fontSize: 75, height: 0.9),
                    ),
                    SizedBox(width: 5),
                    Text(
                      totalDownloadSize,
                      style: GoogleFonts.openSans(fontSize: 18),
                    ),
                  ],
                ),
                Text('Всего $total', style: GoogleFonts.openSans(fontSize: 18)),
              ],
            ),
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(
                  (videoGB + fileGB) / allSize < 0.05 ? 0 : 10,
                ),
                bottomLeft: Radius.circular(
                  (videoGB + fileGB) / allSize < 0.05 ? 0 : 10,
                ),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: LinearProgressIndicator(
                value: (videoGB + fileGB) / allSize,
                year2023: false,
                minHeight: 30,
                backgroundColor: customColors?.additionalTwo,
                stopIndicatorColor: customColors?.primaryTextColor,
                valueColor: AlwaysStoppedAnimation(
                  customColors?.primaryTextColor,
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTileBuilder(
              isStart: true,
              isEnd: false,
              builder: (shape, contentPadding, isThreeLine) {
                return ListTile(
                  shape: shape,
                  contentPadding: contentPadding,
                  leading: IconAvatar(icon: Icons.video_file_outlined),
                  tileColor: customColors?.containerColor,
                  onTap: videoGB == 0
                      ? null
                      : () {
                          context.router.navigate(DownloadVideosRoute());
                        },
                  onLongPress: videoGB == 0
                      ? null
                      : () async {
                          final action = await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Удалить все видео'),
                                titleTextStyle: TextStyle(fontSize: 25),
                                content: Text(
                                  'Вы уверены что хотите удалить все видео скаченные в приложение с устройства?\nПосле удаления восстановить их будет не возможно.',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Отмена'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop('delete');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: customColors?.errorFill
                                          .withAlpha(50),
                                    ),
                                    child: Text(
                                      'Удалить',
                                      style: TextStyle(
                                        color: customColors?.errorFill,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                          if (action != null &&
                              action == 'delete' &&
                              context.mounted) {
                            savedData.add(SavedDataInfoEvent.delete('video'));
                          }
                        },
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 10,
                    children: [
                      Text('Видео', style: TextStyle(fontSize: 18)),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          videoDownload,
                          style: GoogleFonts.openSans(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  subtitle: LinearProgressIndicator(
                    year2023: false,
                    value: videoGB / allSizeSaved,
                    backgroundColor: customColors?.additionalTwo,
                    stopIndicatorColor: customColors?.primaryTextColor,
                    valueColor: AlwaysStoppedAnimation(
                      customColors?.primaryTextColor,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 2),
            ListTileBuilder(
              isStart: false,
              isEnd: false,
              builder: (shape, contentPadding, isThreeLine) {
                return ListTile(
                  shape: shape,
                  contentPadding: contentPadding,
                  leading: IconAvatar(icon: Icons.file_download),
                  tileColor: customColors?.containerColor,
                  onTap: fileGB == 0
                      ? null
                      : () {
                          context.router.navigate(DownloadFilesRoute());
                        },
                  onLongPress: fileGB == 0
                      ? null
                      : () async {
                          final action = await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Удалить все файлы'),
                                titleTextStyle: TextStyle(fontSize: 25),
                                content: Text(
                                  'Вы уверены что хотите удалить все файлы скаченные в приложение с устройства?\nПосле удаления восстановить их будет не возможно.',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Отмена'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop('delete');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: customColors?.errorFill
                                          .withAlpha(50),
                                    ),
                                    child: Text(
                                      'Удалить',
                                      style: TextStyle(
                                        color: customColors?.errorFill,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                          if (action != null &&
                              action == 'delete' &&
                              context.mounted) {
                            savedData.add(SavedDataInfoEvent.delete('file'));
                          }
                        },
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 10,
                    children: [
                      Text('Скаченые файлы', style: TextStyle(fontSize: 18)),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          fileDownload,
                          style: GoogleFonts.openSans(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  subtitle: LinearProgressIndicator(
                    year2023: false,
                    value: fileGB / allSizeSaved,
                    backgroundColor: customColors?.additionalTwo,
                    stopIndicatorColor: customColors?.primaryTextColor,
                    valueColor: AlwaysStoppedAnimation(
                      customColors?.primaryTextColor,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 2),
            ListTileBuilder(
              isStart: false,
              isEnd: true,
              builder: (shape, contentPadding, isThreeLine) {
                return ListTile(
                  shape: shape,
                  contentPadding: contentPadding,
                  leading: IconAvatar(icon: Icons.cached),
                  tileColor: customColors?.containerColor,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 10,
                    children: [
                      Text('Доп. данные', style: TextStyle(fontSize: 18)),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          cacheDownload,
                          style: GoogleFonts.openSans(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  subtitle: LinearProgressIndicator(
                    year2023: false,
                    value: cacheGB / allSizeSaved,
                    backgroundColor: customColors?.additionalTwo,
                    stopIndicatorColor: customColors?.primaryTextColor,
                    valueColor: AlwaysStoppedAnimation(
                      customColors?.primaryTextColor,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            if (videoGB > 0 || fileGB > 0)
              FilledButton.icon(
                onPressed: () async {
                  final action = await showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Удалить всё'),
                        titleTextStyle: TextStyle(fontSize: 25),
                        content: Text(
                          'Вы уверены что хотите удалить все файлы и видео скаченные в приложение с устройства?\nПосле удаления восстановить их будет не возможно.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Отмена'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop('delete');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: customColors?.errorFill
                                  .withAlpha(50),
                            ),
                            child: Text(
                              'Удалить',
                              style: TextStyle(color: customColors?.errorFill),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                  if (action != null && action == 'delete' && context.mounted) {
                    savedData.add(SavedDataInfoEvent.delete('all'));
                  }
                },
                label: Text('Удалить всё'),
                icon: Icon(Icons.delete),
                style: FilledButton.styleFrom(
                  backgroundColor: customColors?.containerColor,
                  iconColor: customColors?.primaryTextColor,
                  textStyle: TextStyle(color: customColors?.primaryTextColor),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
