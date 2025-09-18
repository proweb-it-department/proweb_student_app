import 'package:drift/drift.dart';

class CacheRequest extends Table {
  TextColumn get url => text()();
  TextColumn get response => text()();
  DateTimeColumn get expiry => dateTime()();

  @override
  Set<Column> get primaryKey => {url};
}
