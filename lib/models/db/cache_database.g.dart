// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_database.dart';

// ignore_for_file: type=lint
class $CacheRequestTable extends CacheRequest
    with TableInfo<$CacheRequestTable, CacheRequestData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CacheRequestTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _responseMeta = const VerificationMeta(
    'response',
  );
  @override
  late final GeneratedColumn<String> response = GeneratedColumn<String>(
    'response',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expiryMeta = const VerificationMeta('expiry');
  @override
  late final GeneratedColumn<DateTime> expiry = GeneratedColumn<DateTime>(
    'expiry',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [url, response, expiry];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cache_request';
  @override
  VerificationContext validateIntegrity(
    Insertable<CacheRequestData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('response')) {
      context.handle(
        _responseMeta,
        response.isAcceptableOrUnknown(data['response']!, _responseMeta),
      );
    } else if (isInserting) {
      context.missing(_responseMeta);
    }
    if (data.containsKey('expiry')) {
      context.handle(
        _expiryMeta,
        expiry.isAcceptableOrUnknown(data['expiry']!, _expiryMeta),
      );
    } else if (isInserting) {
      context.missing(_expiryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {url};
  @override
  CacheRequestData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CacheRequestData(
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      response: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}response'],
      )!,
      expiry: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}expiry'],
      )!,
    );
  }

  @override
  $CacheRequestTable createAlias(String alias) {
    return $CacheRequestTable(attachedDatabase, alias);
  }
}

class CacheRequestData extends DataClass
    implements Insertable<CacheRequestData> {
  final String url;
  final String response;
  final DateTime expiry;
  const CacheRequestData({
    required this.url,
    required this.response,
    required this.expiry,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['url'] = Variable<String>(url);
    map['response'] = Variable<String>(response);
    map['expiry'] = Variable<DateTime>(expiry);
    return map;
  }

  CacheRequestCompanion toCompanion(bool nullToAbsent) {
    return CacheRequestCompanion(
      url: Value(url),
      response: Value(response),
      expiry: Value(expiry),
    );
  }

  factory CacheRequestData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CacheRequestData(
      url: serializer.fromJson<String>(json['url']),
      response: serializer.fromJson<String>(json['response']),
      expiry: serializer.fromJson<DateTime>(json['expiry']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'url': serializer.toJson<String>(url),
      'response': serializer.toJson<String>(response),
      'expiry': serializer.toJson<DateTime>(expiry),
    };
  }

  CacheRequestData copyWith({
    String? url,
    String? response,
    DateTime? expiry,
  }) => CacheRequestData(
    url: url ?? this.url,
    response: response ?? this.response,
    expiry: expiry ?? this.expiry,
  );
  CacheRequestData copyWithCompanion(CacheRequestCompanion data) {
    return CacheRequestData(
      url: data.url.present ? data.url.value : this.url,
      response: data.response.present ? data.response.value : this.response,
      expiry: data.expiry.present ? data.expiry.value : this.expiry,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CacheRequestData(')
          ..write('url: $url, ')
          ..write('response: $response, ')
          ..write('expiry: $expiry')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(url, response, expiry);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CacheRequestData &&
          other.url == this.url &&
          other.response == this.response &&
          other.expiry == this.expiry);
}

class CacheRequestCompanion extends UpdateCompanion<CacheRequestData> {
  final Value<String> url;
  final Value<String> response;
  final Value<DateTime> expiry;
  final Value<int> rowid;
  const CacheRequestCompanion({
    this.url = const Value.absent(),
    this.response = const Value.absent(),
    this.expiry = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CacheRequestCompanion.insert({
    required String url,
    required String response,
    required DateTime expiry,
    this.rowid = const Value.absent(),
  }) : url = Value(url),
       response = Value(response),
       expiry = Value(expiry);
  static Insertable<CacheRequestData> custom({
    Expression<String>? url,
    Expression<String>? response,
    Expression<DateTime>? expiry,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (url != null) 'url': url,
      if (response != null) 'response': response,
      if (expiry != null) 'expiry': expiry,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CacheRequestCompanion copyWith({
    Value<String>? url,
    Value<String>? response,
    Value<DateTime>? expiry,
    Value<int>? rowid,
  }) {
    return CacheRequestCompanion(
      url: url ?? this.url,
      response: response ?? this.response,
      expiry: expiry ?? this.expiry,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (response.present) {
      map['response'] = Variable<String>(response.value);
    }
    if (expiry.present) {
      map['expiry'] = Variable<DateTime>(expiry.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CacheRequestCompanion(')
          ..write('url: $url, ')
          ..write('response: $response, ')
          ..write('expiry: $expiry, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$CacheDatabase extends GeneratedDatabase {
  _$CacheDatabase(QueryExecutor e) : super(e);
  $CacheDatabaseManager get managers => $CacheDatabaseManager(this);
  late final $CacheRequestTable cacheRequest = $CacheRequestTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cacheRequest];
}

typedef $$CacheRequestTableCreateCompanionBuilder =
    CacheRequestCompanion Function({
      required String url,
      required String response,
      required DateTime expiry,
      Value<int> rowid,
    });
typedef $$CacheRequestTableUpdateCompanionBuilder =
    CacheRequestCompanion Function({
      Value<String> url,
      Value<String> response,
      Value<DateTime> expiry,
      Value<int> rowid,
    });

class $$CacheRequestTableFilterComposer
    extends Composer<_$CacheDatabase, $CacheRequestTable> {
  $$CacheRequestTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get response => $composableBuilder(
    column: $table.response,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get expiry => $composableBuilder(
    column: $table.expiry,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CacheRequestTableOrderingComposer
    extends Composer<_$CacheDatabase, $CacheRequestTable> {
  $$CacheRequestTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get response => $composableBuilder(
    column: $table.response,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get expiry => $composableBuilder(
    column: $table.expiry,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CacheRequestTableAnnotationComposer
    extends Composer<_$CacheDatabase, $CacheRequestTable> {
  $$CacheRequestTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get response =>
      $composableBuilder(column: $table.response, builder: (column) => column);

  GeneratedColumn<DateTime> get expiry =>
      $composableBuilder(column: $table.expiry, builder: (column) => column);
}

class $$CacheRequestTableTableManager
    extends
        RootTableManager<
          _$CacheDatabase,
          $CacheRequestTable,
          CacheRequestData,
          $$CacheRequestTableFilterComposer,
          $$CacheRequestTableOrderingComposer,
          $$CacheRequestTableAnnotationComposer,
          $$CacheRequestTableCreateCompanionBuilder,
          $$CacheRequestTableUpdateCompanionBuilder,
          (
            CacheRequestData,
            BaseReferences<
              _$CacheDatabase,
              $CacheRequestTable,
              CacheRequestData
            >,
          ),
          CacheRequestData,
          PrefetchHooks Function()
        > {
  $$CacheRequestTableTableManager(_$CacheDatabase db, $CacheRequestTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CacheRequestTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CacheRequestTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CacheRequestTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> url = const Value.absent(),
                Value<String> response = const Value.absent(),
                Value<DateTime> expiry = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CacheRequestCompanion(
                url: url,
                response: response,
                expiry: expiry,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String url,
                required String response,
                required DateTime expiry,
                Value<int> rowid = const Value.absent(),
              }) => CacheRequestCompanion.insert(
                url: url,
                response: response,
                expiry: expiry,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CacheRequestTableProcessedTableManager =
    ProcessedTableManager<
      _$CacheDatabase,
      $CacheRequestTable,
      CacheRequestData,
      $$CacheRequestTableFilterComposer,
      $$CacheRequestTableOrderingComposer,
      $$CacheRequestTableAnnotationComposer,
      $$CacheRequestTableCreateCompanionBuilder,
      $$CacheRequestTableUpdateCompanionBuilder,
      (
        CacheRequestData,
        BaseReferences<_$CacheDatabase, $CacheRequestTable, CacheRequestData>,
      ),
      CacheRequestData,
      PrefetchHooks Function()
    >;

class $CacheDatabaseManager {
  final _$CacheDatabase _db;
  $CacheDatabaseManager(this._db);
  $$CacheRequestTableTableManager get cacheRequest =>
      $$CacheRequestTableTableManager(_db, _db.cacheRequest);
}
