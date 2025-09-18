import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/interface/components/download_file_item/download_file_item.dart';
import 'package:proweb_student_app/interface/components/download_file_progress/download_file_progress.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/download_file/downloader_files_bloc.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class DownloadFilesScreen extends StatelessWidget {
  const DownloadFilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<DownloaderFilesBloc, DownloaderFilesState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(child: CircularProgressIndicator());
          },
          download: (download, downloaders) {
            return ListView(
              children: [
                if (download != null)
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'downloads.down_progress_file'.tr(),
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                if (download != null) DownloadFileProgress(file: download),
                if (downloaders.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'downloads.down_complite_file'.tr(),
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(width: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 13,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: customColors?.containerColor,
                              ),
                              child: Text('${downloaders.length}'),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () async {
                            final returned = await showDialog<bool>(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    'downloads.delete_local_file_title_all'
                                        .tr(),
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  content: Text(
                                    'downloads.delete_local_file_desc_all'.tr(),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text(
                                        'global_data.cansel_btn'.tr(),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop(false);
                                      },
                                    ),
                                    TextButton(
                                      child: Text(
                                        'global_data.delete_btn'.tr(),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop(true);
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                            if (returned == true) {
                              if (context.mounted) {
                                final bloc = context
                                    .read<DownloaderFilesBloc>();
                                bloc.add(DownloaderFilesEvent.deleteAll());
                              }
                            }
                          },
                          style: IconButton.styleFrom(
                            backgroundColor: customColors?.errorFillOp,
                          ),
                          icon: Icon(
                            Icons.delete,
                            color: customColors?.errorFill,
                          ),
                        ),
                      ],
                    ),
                  ),
                if (downloaders.isNotEmpty)
                  ...List.generate(downloaders.length, (index) {
                    return DownloadFileItem(item: downloaders[index]);
                  })
                else
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: NoData(
                      text: 'downloads.down_not_found_file'.tr(),
                      icon: Icons.insert_drive_file_outlined,
                    ),
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
