import 'package:drift/drift.dart';

class VideoSaved extends Table {
  TextColumn get slug => text()();
  TextColumn get title => text()();
  TextColumn get playlist => text()();
  IntColumn get createdAt => integer()();
  TextColumn get preview => text().nullable()();
  IntColumn get duration => integer().nullable()();
  IntColumn get size => integer().nullable()();
  TextColumn get key => text().nullable()();

  @override
  Set<Column> get primaryKey => {slug};
}
