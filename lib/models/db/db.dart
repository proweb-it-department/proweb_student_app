import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:proweb_student_app/models/db/file_saved/group_tables.dart';
import 'package:proweb_student_app/models/db/file_saved/product_video_tables.dart';
import 'package:proweb_student_app/models/db/file_saved/video_saved.dart';

import './file_saved/file_saved.dart';

part 'db.g.dart';

@DriftDatabase(
  tables: [
    FileSaved,
    VideoSaved,
    GroupsModel,
    GroupLessonModel,
    GroupLessonVideoModel,
    ExclusiveProductModel,
    ExclusiveProductModuleModel,
    ExclusiveProductModuleMaterialModel,
    ExclusiveProductModuleMaterialVideoModel,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
    },
    onUpgrade: (m, from, to) async {
      if (from == 1) {
        await m.createTable(exclusiveProductModel);
        await m.createTable(exclusiveProductModuleModel);
        await m.createTable(exclusiveProductModuleMaterialModel);
        await m.createTable(exclusiveProductModuleMaterialVideoModel);
      } else if (from < 4) {
        await m.addColumn(
          exclusiveProductModuleModel,
          exclusiveProductModuleModel.moduleNumber,
        );
      }
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'app.sqlite'));
    return NativeDatabase(file);
  });
}
