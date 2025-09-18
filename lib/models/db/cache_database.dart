import 'dart:convert';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:proweb_student_app/models/db/cache.dart';

part 'cache_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'cache.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [CacheRequest])
class CacheDatabase extends _$CacheDatabase {
  CacheDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<CacheRequestData?> getCache(String url) async {
    final result = await (select(
      cacheRequest,
    )..where((tbl) => tbl.url.equals(url))).getSingleOrNull();
    if (result == null) return null;

    if (DateTime.now().isAfter(result.expiry)) {
      await deleteCache(url);
      return null;
    }
    return result;
  }

  Future<void> setCache(
    String url,
    Map<String, dynamic> response,
    Duration duration,
  ) async {
    final expiry = DateTime.now().add(duration);
    await into(cacheRequest).insertOnConflictUpdate(
      CacheRequestCompanion.insert(
        url: url,
        response: jsonEncode(response),
        expiry: expiry,
      ),
    );
  }

  Future<void> deleteCache(String url) async {
    await (delete(cacheRequest)..where((tbl) => tbl.url.equals(url))).go();
  }
}
