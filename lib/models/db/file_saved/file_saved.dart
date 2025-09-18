import 'package:drift/drift.dart';

class FileSaved extends Table {
  IntColumn get id => integer()();
  TextColumn get displayName => text()();
  TextColumn get link => text()();
  IntColumn get createdAt => integer()();
}
