import 'package:drift/drift.dart';

class ExclusiveProductModel extends Table {
  IntColumn get productId => integer()();
  TextColumn get productName => text()();
  TextColumn get cover => text()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
    {productId},
  ];
}

class ExclusiveProductModuleModel extends Table {
  IntColumn get moduleId => integer()();
  IntColumn get productId => integer()();
  TextColumn get moduleName => text()();
  IntColumn get moduleNumber => integer().withDefault(const Constant(0))();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
    {moduleId},
  ];
}

class ExclusiveProductModuleMaterialModel extends Table {
  IntColumn get materialId => integer()();
  IntColumn get moduleId => integer()();
  TextColumn get moduleName => text()();
  TextColumn get cover => text()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
    {materialId},
  ];
}

class ExclusiveProductModuleMaterialVideoModel extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get materialId => integer()();
  TextColumn get slug => text()();
}
