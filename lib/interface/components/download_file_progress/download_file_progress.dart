import 'package:flutter/material.dart';
import 'package:proweb_student_app/models/file_download/file_download_model.dart';

class DownloadFileProgress extends StatelessWidget {
  final FileDownloadModel file;
  const DownloadFileProgress({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    final progress = (file.progress / 100);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: Icon(Icons.insert_drive_file_sharp),
          title: Text(
            file.displayName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: SizedBox(
            width: 25,
            height: 25,
            child: CircularProgressIndicator(
              strokeWidth: 1,
              value: progress < 0.01 ? null : progress,
            ),
          ),
        ),
      ],
    );
  }
}
