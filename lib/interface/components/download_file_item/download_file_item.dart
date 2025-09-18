import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mime/mime.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/download_file/downloader_files_bloc.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/file_icon_manager/file_icon_manager.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class DownloadFileItem extends StatefulWidget {
  final FileSavedData item;
  const DownloadFileItem({super.key, required this.item});

  @override
  State<DownloadFileItem> createState() => _DownloadFileItemState();
}

class _DownloadFileItemState extends State<DownloadFileItem> {
  Offset _tapPosition = Offset.zero;
  bool _isActive = false;

  void _getTapPosition(TapDownDetails position) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    setState(() {
      _tapPosition = renderBox.localToGlobal(position.localPosition);
    });
  }

  void _showContextMenu(BuildContext context) async {
    RenderObject? overlay = Overlay.of(context).context.findRenderObject();
    final customColors = Theme.of(context).extension<CustomColors>();
    setState(() {
      _isActive = true;
    });
    final result = await showMenu<FileMenuSelected>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 10, 10),
        Rect.fromLTWH(
          0,
          0,
          overlay!.paintBounds.size.width,
          overlay.paintBounds.size.height,
        ),
      ),
      color: customColors?.containerColor,
      items: List.generate(FileMenuSelected.values.length, (index) {
        final item = FileMenuSelected.values[index];
        return PopupMenuItem(
          value: item,
          child: Row(
            spacing: 8,
            children: [
              Icon(item.icon, color: customColors?.additionalTwo),
              Text(
                item.name.tr(),
                style: TextStyle(color: customColors?.primaryTextColor),
              ),
            ],
          ),
        );
      }),
    );

    if (result != null) {
      if (result == FileMenuSelected.deleted) {
        if (context.mounted) {
          await _openDeletedDialog(context);
        }
      } else if (result == FileMenuSelected.openNew) {
        await _openNew();
      } else if (result == FileMenuSelected.share) {
        await _share();
      } else if (result == FileMenuSelected.info) {
        if (context.mounted) {
          await _openInfoDialog(context);
        }
      }
    }

    setState(() {
      _isActive = false;
    });
  }

  Future<void> _openNew() async {
    await sl<LocalData>().openFile(path: widget.item.link);
  }

  Future<void> _share() async {
    await sl<LocalData>().shareFiles(files: [widget.item.link]);
  }

  Future<void> _openInfoDialog(BuildContext context) async {
    final file = File(widget.item.link);
    if (await file.exists()) {
      if (context.mounted) {
        final customColors = Theme.of(context).extension<CustomColors>();
        await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              title: Text(
                'downloads.file_information'.tr(),
                style: TextStyle(fontSize: 25),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text(
                      'downloads.info_file_name'.tr(),
                      style: TextStyle(color: customColors?.additionalTwo),
                    ),
                    subtitle: Text(Uri.decodeFull(widget.item.displayName)),
                  ),

                  ListTile(
                    title: Text(
                      'downloads.length_file_size'.tr(),
                      style: TextStyle(color: customColors?.additionalTwo),
                    ),
                    subtitle: Text(
                      sl<LocalData>().formatSize(
                        file.lengthSync(),
                        type: FileSizeType.by,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'downloads.type_file_local'.tr(),
                      style: TextStyle(color: customColors?.additionalTwo),
                    ),
                    subtitle: Text(lookupMimeType(widget.item.link) ?? '- - -'),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  child: Text('global_data.cansel_btn'.tr()),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }
  }

  Future<void> _openDeletedDialog(BuildContext context) async {
    final returned = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'downloads.delete_local_file_title'.tr(),
            style: TextStyle(fontSize: 25),
          ),
          content: Text('downloads.delete_local_file_desc'.tr()),
          actions: [
            TextButton(
              child: Text('global_data.cansel_btn'.tr()),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: Text('global_data.delete_btn'.tr()),
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
        final bloc = context.read<DownloaderFilesBloc>();
        bloc.add(DownloaderFilesEvent.delete(id: widget.item.id));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final encoded = Uri.encodeFull(widget.item.displayName);
    return GestureDetector(
      onTapDown: _getTapPosition,
      onLongPress: () => _showContextMenu(context),
      child: ListTile(
        tileColor: _isActive
            ? customColors?.additionalTwo.withAlpha(100)
            : null,
        onTap: _openNew,
        leading: FileIconManager().getIconPath(filePath: widget.item.link),
        title: Text(
          Uri.decodeFull(encoded),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          sl<LocalData>().getDateString(
            date: DateTime.fromMillisecondsSinceEpoch(widget.item.createdAt),
          ),
        ),
        // trailing: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
