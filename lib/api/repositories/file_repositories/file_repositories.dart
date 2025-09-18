import 'package:drift/drift.dart';
import 'dart:io';

import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class FileRepository {
  final db = sl<AppDatabase>();

  Future<void> init() async {}

  Future<List<FileSavedData>> getAllFiles() async {
    List<FileSavedData> files = await db.select(db.fileSaved).get();

    for (var element in files) {
      final path = element.link;
      final File file = File(path);
      final scan = await file.exists();
      if (!scan) {
        await deleteFileById(element.id);
      }
    }
    files = await db.select(db.fileSaved).get();
    files.sort((a, b) => b.createdAt - a.createdAt);
    return files.reversed.toList();
  }

  Future<void> saveFile(FileSavedData file) async {
    await db
        .into(db.fileSaved)
        .insert(
          FileSavedCompanion.insert(
            displayName: file.displayName,
            link: file.link,
            createdAt: file.createdAt,
            id: file.id,
          ),
          mode: InsertMode.insert,
        );
  }

  Future<FileSavedData?> getFileById(int id) async {
    FileSavedData? file = await (db.select(
      db.fileSaved,
    )..where((tbl) => tbl.id.equals(id))).getSingleOrNull();

    if (file == null) return null;
    final File fileEx = File(file.link);
    final fileExist = await fileEx.exists();
    if (fileExist) return file;
    await deleteFileById(file.id);
    return null;
  }

  Future<void> deleteFileById(int id) async {
    await (db.delete(db.fileSaved)..where((tbl) => tbl.id.equals(id))).go();
  }
}
