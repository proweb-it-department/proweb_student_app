import 'package:drift/drift.dart';

class GroupsModel extends Table {
  IntColumn get groupId => integer()();
  TextColumn get courseName => text()();
  TextColumn get banner => text()();
  IntColumn get lessonCount => integer().nullable()();
  IntColumn get blockLessonCount => integer().nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
    {groupId},
  ];
}

class GroupLessonModel extends Table {
  IntColumn get lessonId => integer()();
  IntColumn get groupId => integer()();
  IntColumn get lessonNumber => integer()();
  TextColumn get lessonName => text().nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
    {lessonId},
  ];
}

class GroupLessonVideoModel extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get lessonId => integer()();
  TextColumn get slug => text()();
}
