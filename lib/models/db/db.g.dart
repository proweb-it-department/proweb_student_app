// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $FileSavedTable extends FileSaved
    with TableInfo<$FileSavedTable, FileSavedData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FileSavedTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _displayNameMeta = const VerificationMeta(
    'displayName',
  );
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
    'display_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
    'link',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, displayName, link, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'file_saved';
  @override
  VerificationContext validateIntegrity(
    Insertable<FileSavedData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
        _displayNameMeta,
        displayName.isAcceptableOrUnknown(
          data['display_name']!,
          _displayNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_displayNameMeta);
    }
    if (data.containsKey('link')) {
      context.handle(
        _linkMeta,
        link.isAcceptableOrUnknown(data['link']!, _linkMeta),
      );
    } else if (isInserting) {
      context.missing(_linkMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  FileSavedData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FileSavedData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      displayName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_name'],
      )!,
      link: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}link'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FileSavedTable createAlias(String alias) {
    return $FileSavedTable(attachedDatabase, alias);
  }
}

class FileSavedData extends DataClass implements Insertable<FileSavedData> {
  final int id;
  final String displayName;
  final String link;
  final int createdAt;
  const FileSavedData({
    required this.id,
    required this.displayName,
    required this.link,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['display_name'] = Variable<String>(displayName);
    map['link'] = Variable<String>(link);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  FileSavedCompanion toCompanion(bool nullToAbsent) {
    return FileSavedCompanion(
      id: Value(id),
      displayName: Value(displayName),
      link: Value(link),
      createdAt: Value(createdAt),
    );
  }

  factory FileSavedData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FileSavedData(
      id: serializer.fromJson<int>(json['id']),
      displayName: serializer.fromJson<String>(json['displayName']),
      link: serializer.fromJson<String>(json['link']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'displayName': serializer.toJson<String>(displayName),
      'link': serializer.toJson<String>(link),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  FileSavedData copyWith({
    int? id,
    String? displayName,
    String? link,
    int? createdAt,
  }) => FileSavedData(
    id: id ?? this.id,
    displayName: displayName ?? this.displayName,
    link: link ?? this.link,
    createdAt: createdAt ?? this.createdAt,
  );
  FileSavedData copyWithCompanion(FileSavedCompanion data) {
    return FileSavedData(
      id: data.id.present ? data.id.value : this.id,
      displayName: data.displayName.present
          ? data.displayName.value
          : this.displayName,
      link: data.link.present ? data.link.value : this.link,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FileSavedData(')
          ..write('id: $id, ')
          ..write('displayName: $displayName, ')
          ..write('link: $link, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, displayName, link, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FileSavedData &&
          other.id == this.id &&
          other.displayName == this.displayName &&
          other.link == this.link &&
          other.createdAt == this.createdAt);
}

class FileSavedCompanion extends UpdateCompanion<FileSavedData> {
  final Value<int> id;
  final Value<String> displayName;
  final Value<String> link;
  final Value<int> createdAt;
  final Value<int> rowid;
  const FileSavedCompanion({
    this.id = const Value.absent(),
    this.displayName = const Value.absent(),
    this.link = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FileSavedCompanion.insert({
    required int id,
    required String displayName,
    required String link,
    required int createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       displayName = Value(displayName),
       link = Value(link),
       createdAt = Value(createdAt);
  static Insertable<FileSavedData> custom({
    Expression<int>? id,
    Expression<String>? displayName,
    Expression<String>? link,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (displayName != null) 'display_name': displayName,
      if (link != null) 'link': link,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FileSavedCompanion copyWith({
    Value<int>? id,
    Value<String>? displayName,
    Value<String>? link,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return FileSavedCompanion(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      link: link ?? this.link,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FileSavedCompanion(')
          ..write('id: $id, ')
          ..write('displayName: $displayName, ')
          ..write('link: $link, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $VideoSavedTable extends VideoSaved
    with TableInfo<$VideoSavedTable, VideoSavedData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VideoSavedTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
    'slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _playlistMeta = const VerificationMeta(
    'playlist',
  );
  @override
  late final GeneratedColumn<String> playlist = GeneratedColumn<String>(
    'playlist',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _previewMeta = const VerificationMeta(
    'preview',
  );
  @override
  late final GeneratedColumn<String> preview = GeneratedColumn<String>(
    'preview',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _durationMeta = const VerificationMeta(
    'duration',
  );
  @override
  late final GeneratedColumn<int> duration = GeneratedColumn<int>(
    'duration',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<int> size = GeneratedColumn<int>(
    'size',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    slug,
    title,
    playlist,
    createdAt,
    preview,
    duration,
    size,
    key,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'video_saved';
  @override
  VerificationContext validateIntegrity(
    Insertable<VideoSavedData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('slug')) {
      context.handle(
        _slugMeta,
        slug.isAcceptableOrUnknown(data['slug']!, _slugMeta),
      );
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('playlist')) {
      context.handle(
        _playlistMeta,
        playlist.isAcceptableOrUnknown(data['playlist']!, _playlistMeta),
      );
    } else if (isInserting) {
      context.missing(_playlistMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('preview')) {
      context.handle(
        _previewMeta,
        preview.isAcceptableOrUnknown(data['preview']!, _previewMeta),
      );
    }
    if (data.containsKey('duration')) {
      context.handle(
        _durationMeta,
        duration.isAcceptableOrUnknown(data['duration']!, _durationMeta),
      );
    }
    if (data.containsKey('size')) {
      context.handle(
        _sizeMeta,
        size.isAcceptableOrUnknown(data['size']!, _sizeMeta),
      );
    }
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {slug};
  @override
  VideoSavedData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VideoSavedData(
      slug: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}slug'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      playlist: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}playlist'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
      preview: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}preview'],
      ),
      duration: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration'],
      ),
      size: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}size'],
      ),
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      ),
    );
  }

  @override
  $VideoSavedTable createAlias(String alias) {
    return $VideoSavedTable(attachedDatabase, alias);
  }
}

class VideoSavedData extends DataClass implements Insertable<VideoSavedData> {
  final String slug;
  final String title;
  final String playlist;
  final int createdAt;
  final String? preview;
  final int? duration;
  final int? size;
  final String? key;
  const VideoSavedData({
    required this.slug,
    required this.title,
    required this.playlist,
    required this.createdAt,
    this.preview,
    this.duration,
    this.size,
    this.key,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['slug'] = Variable<String>(slug);
    map['title'] = Variable<String>(title);
    map['playlist'] = Variable<String>(playlist);
    map['created_at'] = Variable<int>(createdAt);
    if (!nullToAbsent || preview != null) {
      map['preview'] = Variable<String>(preview);
    }
    if (!nullToAbsent || duration != null) {
      map['duration'] = Variable<int>(duration);
    }
    if (!nullToAbsent || size != null) {
      map['size'] = Variable<int>(size);
    }
    if (!nullToAbsent || key != null) {
      map['key'] = Variable<String>(key);
    }
    return map;
  }

  VideoSavedCompanion toCompanion(bool nullToAbsent) {
    return VideoSavedCompanion(
      slug: Value(slug),
      title: Value(title),
      playlist: Value(playlist),
      createdAt: Value(createdAt),
      preview: preview == null && nullToAbsent
          ? const Value.absent()
          : Value(preview),
      duration: duration == null && nullToAbsent
          ? const Value.absent()
          : Value(duration),
      size: size == null && nullToAbsent ? const Value.absent() : Value(size),
      key: key == null && nullToAbsent ? const Value.absent() : Value(key),
    );
  }

  factory VideoSavedData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VideoSavedData(
      slug: serializer.fromJson<String>(json['slug']),
      title: serializer.fromJson<String>(json['title']),
      playlist: serializer.fromJson<String>(json['playlist']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      preview: serializer.fromJson<String?>(json['preview']),
      duration: serializer.fromJson<int?>(json['duration']),
      size: serializer.fromJson<int?>(json['size']),
      key: serializer.fromJson<String?>(json['key']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'slug': serializer.toJson<String>(slug),
      'title': serializer.toJson<String>(title),
      'playlist': serializer.toJson<String>(playlist),
      'createdAt': serializer.toJson<int>(createdAt),
      'preview': serializer.toJson<String?>(preview),
      'duration': serializer.toJson<int?>(duration),
      'size': serializer.toJson<int?>(size),
      'key': serializer.toJson<String?>(key),
    };
  }

  VideoSavedData copyWith({
    String? slug,
    String? title,
    String? playlist,
    int? createdAt,
    Value<String?> preview = const Value.absent(),
    Value<int?> duration = const Value.absent(),
    Value<int?> size = const Value.absent(),
    Value<String?> key = const Value.absent(),
  }) => VideoSavedData(
    slug: slug ?? this.slug,
    title: title ?? this.title,
    playlist: playlist ?? this.playlist,
    createdAt: createdAt ?? this.createdAt,
    preview: preview.present ? preview.value : this.preview,
    duration: duration.present ? duration.value : this.duration,
    size: size.present ? size.value : this.size,
    key: key.present ? key.value : this.key,
  );
  VideoSavedData copyWithCompanion(VideoSavedCompanion data) {
    return VideoSavedData(
      slug: data.slug.present ? data.slug.value : this.slug,
      title: data.title.present ? data.title.value : this.title,
      playlist: data.playlist.present ? data.playlist.value : this.playlist,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      preview: data.preview.present ? data.preview.value : this.preview,
      duration: data.duration.present ? data.duration.value : this.duration,
      size: data.size.present ? data.size.value : this.size,
      key: data.key.present ? data.key.value : this.key,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VideoSavedData(')
          ..write('slug: $slug, ')
          ..write('title: $title, ')
          ..write('playlist: $playlist, ')
          ..write('createdAt: $createdAt, ')
          ..write('preview: $preview, ')
          ..write('duration: $duration, ')
          ..write('size: $size, ')
          ..write('key: $key')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    slug,
    title,
    playlist,
    createdAt,
    preview,
    duration,
    size,
    key,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VideoSavedData &&
          other.slug == this.slug &&
          other.title == this.title &&
          other.playlist == this.playlist &&
          other.createdAt == this.createdAt &&
          other.preview == this.preview &&
          other.duration == this.duration &&
          other.size == this.size &&
          other.key == this.key);
}

class VideoSavedCompanion extends UpdateCompanion<VideoSavedData> {
  final Value<String> slug;
  final Value<String> title;
  final Value<String> playlist;
  final Value<int> createdAt;
  final Value<String?> preview;
  final Value<int?> duration;
  final Value<int?> size;
  final Value<String?> key;
  final Value<int> rowid;
  const VideoSavedCompanion({
    this.slug = const Value.absent(),
    this.title = const Value.absent(),
    this.playlist = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.preview = const Value.absent(),
    this.duration = const Value.absent(),
    this.size = const Value.absent(),
    this.key = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VideoSavedCompanion.insert({
    required String slug,
    required String title,
    required String playlist,
    required int createdAt,
    this.preview = const Value.absent(),
    this.duration = const Value.absent(),
    this.size = const Value.absent(),
    this.key = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : slug = Value(slug),
       title = Value(title),
       playlist = Value(playlist),
       createdAt = Value(createdAt);
  static Insertable<VideoSavedData> custom({
    Expression<String>? slug,
    Expression<String>? title,
    Expression<String>? playlist,
    Expression<int>? createdAt,
    Expression<String>? preview,
    Expression<int>? duration,
    Expression<int>? size,
    Expression<String>? key,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (slug != null) 'slug': slug,
      if (title != null) 'title': title,
      if (playlist != null) 'playlist': playlist,
      if (createdAt != null) 'created_at': createdAt,
      if (preview != null) 'preview': preview,
      if (duration != null) 'duration': duration,
      if (size != null) 'size': size,
      if (key != null) 'key': key,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VideoSavedCompanion copyWith({
    Value<String>? slug,
    Value<String>? title,
    Value<String>? playlist,
    Value<int>? createdAt,
    Value<String?>? preview,
    Value<int?>? duration,
    Value<int?>? size,
    Value<String?>? key,
    Value<int>? rowid,
  }) {
    return VideoSavedCompanion(
      slug: slug ?? this.slug,
      title: title ?? this.title,
      playlist: playlist ?? this.playlist,
      createdAt: createdAt ?? this.createdAt,
      preview: preview ?? this.preview,
      duration: duration ?? this.duration,
      size: size ?? this.size,
      key: key ?? this.key,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (playlist.present) {
      map['playlist'] = Variable<String>(playlist.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (preview.present) {
      map['preview'] = Variable<String>(preview.value);
    }
    if (duration.present) {
      map['duration'] = Variable<int>(duration.value);
    }
    if (size.present) {
      map['size'] = Variable<int>(size.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VideoSavedCompanion(')
          ..write('slug: $slug, ')
          ..write('title: $title, ')
          ..write('playlist: $playlist, ')
          ..write('createdAt: $createdAt, ')
          ..write('preview: $preview, ')
          ..write('duration: $duration, ')
          ..write('size: $size, ')
          ..write('key: $key, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GroupsModelTable extends GroupsModel
    with TableInfo<$GroupsModelTable, GroupsModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroupsModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _groupIdMeta = const VerificationMeta(
    'groupId',
  );
  @override
  late final GeneratedColumn<int> groupId = GeneratedColumn<int>(
    'group_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _courseNameMeta = const VerificationMeta(
    'courseName',
  );
  @override
  late final GeneratedColumn<String> courseName = GeneratedColumn<String>(
    'course_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bannerMeta = const VerificationMeta('banner');
  @override
  late final GeneratedColumn<String> banner = GeneratedColumn<String>(
    'banner',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lessonCountMeta = const VerificationMeta(
    'lessonCount',
  );
  @override
  late final GeneratedColumn<int> lessonCount = GeneratedColumn<int>(
    'lesson_count',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _blockLessonCountMeta = const VerificationMeta(
    'blockLessonCount',
  );
  @override
  late final GeneratedColumn<int> blockLessonCount = GeneratedColumn<int>(
    'block_lesson_count',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    groupId,
    courseName,
    banner,
    lessonCount,
    blockLessonCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'groups_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<GroupsModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('group_id')) {
      context.handle(
        _groupIdMeta,
        groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta),
      );
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (data.containsKey('course_name')) {
      context.handle(
        _courseNameMeta,
        courseName.isAcceptableOrUnknown(data['course_name']!, _courseNameMeta),
      );
    } else if (isInserting) {
      context.missing(_courseNameMeta);
    }
    if (data.containsKey('banner')) {
      context.handle(
        _bannerMeta,
        banner.isAcceptableOrUnknown(data['banner']!, _bannerMeta),
      );
    } else if (isInserting) {
      context.missing(_bannerMeta);
    }
    if (data.containsKey('lesson_count')) {
      context.handle(
        _lessonCountMeta,
        lessonCount.isAcceptableOrUnknown(
          data['lesson_count']!,
          _lessonCountMeta,
        ),
      );
    }
    if (data.containsKey('block_lesson_count')) {
      context.handle(
        _blockLessonCountMeta,
        blockLessonCount.isAcceptableOrUnknown(
          data['block_lesson_count']!,
          _blockLessonCountMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {groupId},
  ];
  @override
  GroupsModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GroupsModelData(
      groupId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}group_id'],
      )!,
      courseName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}course_name'],
      )!,
      banner: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}banner'],
      )!,
      lessonCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lesson_count'],
      ),
      blockLessonCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}block_lesson_count'],
      ),
    );
  }

  @override
  $GroupsModelTable createAlias(String alias) {
    return $GroupsModelTable(attachedDatabase, alias);
  }
}

class GroupsModelData extends DataClass implements Insertable<GroupsModelData> {
  final int groupId;
  final String courseName;
  final String banner;
  final int? lessonCount;
  final int? blockLessonCount;
  const GroupsModelData({
    required this.groupId,
    required this.courseName,
    required this.banner,
    this.lessonCount,
    this.blockLessonCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['group_id'] = Variable<int>(groupId);
    map['course_name'] = Variable<String>(courseName);
    map['banner'] = Variable<String>(banner);
    if (!nullToAbsent || lessonCount != null) {
      map['lesson_count'] = Variable<int>(lessonCount);
    }
    if (!nullToAbsent || blockLessonCount != null) {
      map['block_lesson_count'] = Variable<int>(blockLessonCount);
    }
    return map;
  }

  GroupsModelCompanion toCompanion(bool nullToAbsent) {
    return GroupsModelCompanion(
      groupId: Value(groupId),
      courseName: Value(courseName),
      banner: Value(banner),
      lessonCount: lessonCount == null && nullToAbsent
          ? const Value.absent()
          : Value(lessonCount),
      blockLessonCount: blockLessonCount == null && nullToAbsent
          ? const Value.absent()
          : Value(blockLessonCount),
    );
  }

  factory GroupsModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GroupsModelData(
      groupId: serializer.fromJson<int>(json['groupId']),
      courseName: serializer.fromJson<String>(json['courseName']),
      banner: serializer.fromJson<String>(json['banner']),
      lessonCount: serializer.fromJson<int?>(json['lessonCount']),
      blockLessonCount: serializer.fromJson<int?>(json['blockLessonCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'groupId': serializer.toJson<int>(groupId),
      'courseName': serializer.toJson<String>(courseName),
      'banner': serializer.toJson<String>(banner),
      'lessonCount': serializer.toJson<int?>(lessonCount),
      'blockLessonCount': serializer.toJson<int?>(blockLessonCount),
    };
  }

  GroupsModelData copyWith({
    int? groupId,
    String? courseName,
    String? banner,
    Value<int?> lessonCount = const Value.absent(),
    Value<int?> blockLessonCount = const Value.absent(),
  }) => GroupsModelData(
    groupId: groupId ?? this.groupId,
    courseName: courseName ?? this.courseName,
    banner: banner ?? this.banner,
    lessonCount: lessonCount.present ? lessonCount.value : this.lessonCount,
    blockLessonCount: blockLessonCount.present
        ? blockLessonCount.value
        : this.blockLessonCount,
  );
  GroupsModelData copyWithCompanion(GroupsModelCompanion data) {
    return GroupsModelData(
      groupId: data.groupId.present ? data.groupId.value : this.groupId,
      courseName: data.courseName.present
          ? data.courseName.value
          : this.courseName,
      banner: data.banner.present ? data.banner.value : this.banner,
      lessonCount: data.lessonCount.present
          ? data.lessonCount.value
          : this.lessonCount,
      blockLessonCount: data.blockLessonCount.present
          ? data.blockLessonCount.value
          : this.blockLessonCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GroupsModelData(')
          ..write('groupId: $groupId, ')
          ..write('courseName: $courseName, ')
          ..write('banner: $banner, ')
          ..write('lessonCount: $lessonCount, ')
          ..write('blockLessonCount: $blockLessonCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(groupId, courseName, banner, lessonCount, blockLessonCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GroupsModelData &&
          other.groupId == this.groupId &&
          other.courseName == this.courseName &&
          other.banner == this.banner &&
          other.lessonCount == this.lessonCount &&
          other.blockLessonCount == this.blockLessonCount);
}

class GroupsModelCompanion extends UpdateCompanion<GroupsModelData> {
  final Value<int> groupId;
  final Value<String> courseName;
  final Value<String> banner;
  final Value<int?> lessonCount;
  final Value<int?> blockLessonCount;
  final Value<int> rowid;
  const GroupsModelCompanion({
    this.groupId = const Value.absent(),
    this.courseName = const Value.absent(),
    this.banner = const Value.absent(),
    this.lessonCount = const Value.absent(),
    this.blockLessonCount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GroupsModelCompanion.insert({
    required int groupId,
    required String courseName,
    required String banner,
    this.lessonCount = const Value.absent(),
    this.blockLessonCount = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : groupId = Value(groupId),
       courseName = Value(courseName),
       banner = Value(banner);
  static Insertable<GroupsModelData> custom({
    Expression<int>? groupId,
    Expression<String>? courseName,
    Expression<String>? banner,
    Expression<int>? lessonCount,
    Expression<int>? blockLessonCount,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (groupId != null) 'group_id': groupId,
      if (courseName != null) 'course_name': courseName,
      if (banner != null) 'banner': banner,
      if (lessonCount != null) 'lesson_count': lessonCount,
      if (blockLessonCount != null) 'block_lesson_count': blockLessonCount,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GroupsModelCompanion copyWith({
    Value<int>? groupId,
    Value<String>? courseName,
    Value<String>? banner,
    Value<int?>? lessonCount,
    Value<int?>? blockLessonCount,
    Value<int>? rowid,
  }) {
    return GroupsModelCompanion(
      groupId: groupId ?? this.groupId,
      courseName: courseName ?? this.courseName,
      banner: banner ?? this.banner,
      lessonCount: lessonCount ?? this.lessonCount,
      blockLessonCount: blockLessonCount ?? this.blockLessonCount,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (groupId.present) {
      map['group_id'] = Variable<int>(groupId.value);
    }
    if (courseName.present) {
      map['course_name'] = Variable<String>(courseName.value);
    }
    if (banner.present) {
      map['banner'] = Variable<String>(banner.value);
    }
    if (lessonCount.present) {
      map['lesson_count'] = Variable<int>(lessonCount.value);
    }
    if (blockLessonCount.present) {
      map['block_lesson_count'] = Variable<int>(blockLessonCount.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroupsModelCompanion(')
          ..write('groupId: $groupId, ')
          ..write('courseName: $courseName, ')
          ..write('banner: $banner, ')
          ..write('lessonCount: $lessonCount, ')
          ..write('blockLessonCount: $blockLessonCount, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GroupLessonModelTable extends GroupLessonModel
    with TableInfo<$GroupLessonModelTable, GroupLessonModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroupLessonModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _lessonIdMeta = const VerificationMeta(
    'lessonId',
  );
  @override
  late final GeneratedColumn<int> lessonId = GeneratedColumn<int>(
    'lesson_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _groupIdMeta = const VerificationMeta(
    'groupId',
  );
  @override
  late final GeneratedColumn<int> groupId = GeneratedColumn<int>(
    'group_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lessonNumberMeta = const VerificationMeta(
    'lessonNumber',
  );
  @override
  late final GeneratedColumn<int> lessonNumber = GeneratedColumn<int>(
    'lesson_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lessonNameMeta = const VerificationMeta(
    'lessonName',
  );
  @override
  late final GeneratedColumn<String> lessonName = GeneratedColumn<String>(
    'lesson_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    lessonId,
    groupId,
    lessonNumber,
    lessonName,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'group_lesson_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<GroupLessonModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('lesson_id')) {
      context.handle(
        _lessonIdMeta,
        lessonId.isAcceptableOrUnknown(data['lesson_id']!, _lessonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_lessonIdMeta);
    }
    if (data.containsKey('group_id')) {
      context.handle(
        _groupIdMeta,
        groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta),
      );
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (data.containsKey('lesson_number')) {
      context.handle(
        _lessonNumberMeta,
        lessonNumber.isAcceptableOrUnknown(
          data['lesson_number']!,
          _lessonNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lessonNumberMeta);
    }
    if (data.containsKey('lesson_name')) {
      context.handle(
        _lessonNameMeta,
        lessonName.isAcceptableOrUnknown(data['lesson_name']!, _lessonNameMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {lessonId},
  ];
  @override
  GroupLessonModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GroupLessonModelData(
      lessonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lesson_id'],
      )!,
      groupId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}group_id'],
      )!,
      lessonNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lesson_number'],
      )!,
      lessonName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lesson_name'],
      ),
    );
  }

  @override
  $GroupLessonModelTable createAlias(String alias) {
    return $GroupLessonModelTable(attachedDatabase, alias);
  }
}

class GroupLessonModelData extends DataClass
    implements Insertable<GroupLessonModelData> {
  final int lessonId;
  final int groupId;
  final int lessonNumber;
  final String? lessonName;
  const GroupLessonModelData({
    required this.lessonId,
    required this.groupId,
    required this.lessonNumber,
    this.lessonName,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['lesson_id'] = Variable<int>(lessonId);
    map['group_id'] = Variable<int>(groupId);
    map['lesson_number'] = Variable<int>(lessonNumber);
    if (!nullToAbsent || lessonName != null) {
      map['lesson_name'] = Variable<String>(lessonName);
    }
    return map;
  }

  GroupLessonModelCompanion toCompanion(bool nullToAbsent) {
    return GroupLessonModelCompanion(
      lessonId: Value(lessonId),
      groupId: Value(groupId),
      lessonNumber: Value(lessonNumber),
      lessonName: lessonName == null && nullToAbsent
          ? const Value.absent()
          : Value(lessonName),
    );
  }

  factory GroupLessonModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GroupLessonModelData(
      lessonId: serializer.fromJson<int>(json['lessonId']),
      groupId: serializer.fromJson<int>(json['groupId']),
      lessonNumber: serializer.fromJson<int>(json['lessonNumber']),
      lessonName: serializer.fromJson<String?>(json['lessonName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'lessonId': serializer.toJson<int>(lessonId),
      'groupId': serializer.toJson<int>(groupId),
      'lessonNumber': serializer.toJson<int>(lessonNumber),
      'lessonName': serializer.toJson<String?>(lessonName),
    };
  }

  GroupLessonModelData copyWith({
    int? lessonId,
    int? groupId,
    int? lessonNumber,
    Value<String?> lessonName = const Value.absent(),
  }) => GroupLessonModelData(
    lessonId: lessonId ?? this.lessonId,
    groupId: groupId ?? this.groupId,
    lessonNumber: lessonNumber ?? this.lessonNumber,
    lessonName: lessonName.present ? lessonName.value : this.lessonName,
  );
  GroupLessonModelData copyWithCompanion(GroupLessonModelCompanion data) {
    return GroupLessonModelData(
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      groupId: data.groupId.present ? data.groupId.value : this.groupId,
      lessonNumber: data.lessonNumber.present
          ? data.lessonNumber.value
          : this.lessonNumber,
      lessonName: data.lessonName.present
          ? data.lessonName.value
          : this.lessonName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GroupLessonModelData(')
          ..write('lessonId: $lessonId, ')
          ..write('groupId: $groupId, ')
          ..write('lessonNumber: $lessonNumber, ')
          ..write('lessonName: $lessonName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(lessonId, groupId, lessonNumber, lessonName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GroupLessonModelData &&
          other.lessonId == this.lessonId &&
          other.groupId == this.groupId &&
          other.lessonNumber == this.lessonNumber &&
          other.lessonName == this.lessonName);
}

class GroupLessonModelCompanion extends UpdateCompanion<GroupLessonModelData> {
  final Value<int> lessonId;
  final Value<int> groupId;
  final Value<int> lessonNumber;
  final Value<String?> lessonName;
  final Value<int> rowid;
  const GroupLessonModelCompanion({
    this.lessonId = const Value.absent(),
    this.groupId = const Value.absent(),
    this.lessonNumber = const Value.absent(),
    this.lessonName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GroupLessonModelCompanion.insert({
    required int lessonId,
    required int groupId,
    required int lessonNumber,
    this.lessonName = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : lessonId = Value(lessonId),
       groupId = Value(groupId),
       lessonNumber = Value(lessonNumber);
  static Insertable<GroupLessonModelData> custom({
    Expression<int>? lessonId,
    Expression<int>? groupId,
    Expression<int>? lessonNumber,
    Expression<String>? lessonName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (lessonId != null) 'lesson_id': lessonId,
      if (groupId != null) 'group_id': groupId,
      if (lessonNumber != null) 'lesson_number': lessonNumber,
      if (lessonName != null) 'lesson_name': lessonName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GroupLessonModelCompanion copyWith({
    Value<int>? lessonId,
    Value<int>? groupId,
    Value<int>? lessonNumber,
    Value<String?>? lessonName,
    Value<int>? rowid,
  }) {
    return GroupLessonModelCompanion(
      lessonId: lessonId ?? this.lessonId,
      groupId: groupId ?? this.groupId,
      lessonNumber: lessonNumber ?? this.lessonNumber,
      lessonName: lessonName ?? this.lessonName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (lessonId.present) {
      map['lesson_id'] = Variable<int>(lessonId.value);
    }
    if (groupId.present) {
      map['group_id'] = Variable<int>(groupId.value);
    }
    if (lessonNumber.present) {
      map['lesson_number'] = Variable<int>(lessonNumber.value);
    }
    if (lessonName.present) {
      map['lesson_name'] = Variable<String>(lessonName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroupLessonModelCompanion(')
          ..write('lessonId: $lessonId, ')
          ..write('groupId: $groupId, ')
          ..write('lessonNumber: $lessonNumber, ')
          ..write('lessonName: $lessonName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GroupLessonVideoModelTable extends GroupLessonVideoModel
    with TableInfo<$GroupLessonVideoModelTable, GroupLessonVideoModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroupLessonVideoModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _lessonIdMeta = const VerificationMeta(
    'lessonId',
  );
  @override
  late final GeneratedColumn<int> lessonId = GeneratedColumn<int>(
    'lesson_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
    'slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, lessonId, slug];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'group_lesson_video_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<GroupLessonVideoModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('lesson_id')) {
      context.handle(
        _lessonIdMeta,
        lessonId.isAcceptableOrUnknown(data['lesson_id']!, _lessonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_lessonIdMeta);
    }
    if (data.containsKey('slug')) {
      context.handle(
        _slugMeta,
        slug.isAcceptableOrUnknown(data['slug']!, _slugMeta),
      );
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GroupLessonVideoModelData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GroupLessonVideoModelData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      lessonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lesson_id'],
      )!,
      slug: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}slug'],
      )!,
    );
  }

  @override
  $GroupLessonVideoModelTable createAlias(String alias) {
    return $GroupLessonVideoModelTable(attachedDatabase, alias);
  }
}

class GroupLessonVideoModelData extends DataClass
    implements Insertable<GroupLessonVideoModelData> {
  final int id;
  final int lessonId;
  final String slug;
  const GroupLessonVideoModelData({
    required this.id,
    required this.lessonId,
    required this.slug,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['lesson_id'] = Variable<int>(lessonId);
    map['slug'] = Variable<String>(slug);
    return map;
  }

  GroupLessonVideoModelCompanion toCompanion(bool nullToAbsent) {
    return GroupLessonVideoModelCompanion(
      id: Value(id),
      lessonId: Value(lessonId),
      slug: Value(slug),
    );
  }

  factory GroupLessonVideoModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GroupLessonVideoModelData(
      id: serializer.fromJson<int>(json['id']),
      lessonId: serializer.fromJson<int>(json['lessonId']),
      slug: serializer.fromJson<String>(json['slug']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lessonId': serializer.toJson<int>(lessonId),
      'slug': serializer.toJson<String>(slug),
    };
  }

  GroupLessonVideoModelData copyWith({int? id, int? lessonId, String? slug}) =>
      GroupLessonVideoModelData(
        id: id ?? this.id,
        lessonId: lessonId ?? this.lessonId,
        slug: slug ?? this.slug,
      );
  GroupLessonVideoModelData copyWithCompanion(
    GroupLessonVideoModelCompanion data,
  ) {
    return GroupLessonVideoModelData(
      id: data.id.present ? data.id.value : this.id,
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      slug: data.slug.present ? data.slug.value : this.slug,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GroupLessonVideoModelData(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('slug: $slug')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lessonId, slug);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GroupLessonVideoModelData &&
          other.id == this.id &&
          other.lessonId == this.lessonId &&
          other.slug == this.slug);
}

class GroupLessonVideoModelCompanion
    extends UpdateCompanion<GroupLessonVideoModelData> {
  final Value<int> id;
  final Value<int> lessonId;
  final Value<String> slug;
  const GroupLessonVideoModelCompanion({
    this.id = const Value.absent(),
    this.lessonId = const Value.absent(),
    this.slug = const Value.absent(),
  });
  GroupLessonVideoModelCompanion.insert({
    this.id = const Value.absent(),
    required int lessonId,
    required String slug,
  }) : lessonId = Value(lessonId),
       slug = Value(slug);
  static Insertable<GroupLessonVideoModelData> custom({
    Expression<int>? id,
    Expression<int>? lessonId,
    Expression<String>? slug,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lessonId != null) 'lesson_id': lessonId,
      if (slug != null) 'slug': slug,
    });
  }

  GroupLessonVideoModelCompanion copyWith({
    Value<int>? id,
    Value<int>? lessonId,
    Value<String>? slug,
  }) {
    return GroupLessonVideoModelCompanion(
      id: id ?? this.id,
      lessonId: lessonId ?? this.lessonId,
      slug: slug ?? this.slug,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lessonId.present) {
      map['lesson_id'] = Variable<int>(lessonId.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroupLessonVideoModelCompanion(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('slug: $slug')
          ..write(')'))
        .toString();
  }
}

class $ExclusiveProductModelTable extends ExclusiveProductModel
    with TableInfo<$ExclusiveProductModelTable, ExclusiveProductModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExclusiveProductModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productNameMeta = const VerificationMeta(
    'productName',
  );
  @override
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
    'product_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _coverMeta = const VerificationMeta('cover');
  @override
  late final GeneratedColumn<String> cover = GeneratedColumn<String>(
    'cover',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [productId, productName, cover];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exclusive_product_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExclusiveProductModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('product_name')) {
      context.handle(
        _productNameMeta,
        productName.isAcceptableOrUnknown(
          data['product_name']!,
          _productNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_productNameMeta);
    }
    if (data.containsKey('cover')) {
      context.handle(
        _coverMeta,
        cover.isAcceptableOrUnknown(data['cover']!, _coverMeta),
      );
    } else if (isInserting) {
      context.missing(_coverMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {productId},
  ];
  @override
  ExclusiveProductModelData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExclusiveProductModelData(
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}product_id'],
      )!,
      productName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_name'],
      )!,
      cover: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cover'],
      )!,
    );
  }

  @override
  $ExclusiveProductModelTable createAlias(String alias) {
    return $ExclusiveProductModelTable(attachedDatabase, alias);
  }
}

class ExclusiveProductModelData extends DataClass
    implements Insertable<ExclusiveProductModelData> {
  final int productId;
  final String productName;
  final String cover;
  const ExclusiveProductModelData({
    required this.productId,
    required this.productName,
    required this.cover,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['product_id'] = Variable<int>(productId);
    map['product_name'] = Variable<String>(productName);
    map['cover'] = Variable<String>(cover);
    return map;
  }

  ExclusiveProductModelCompanion toCompanion(bool nullToAbsent) {
    return ExclusiveProductModelCompanion(
      productId: Value(productId),
      productName: Value(productName),
      cover: Value(cover),
    );
  }

  factory ExclusiveProductModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExclusiveProductModelData(
      productId: serializer.fromJson<int>(json['productId']),
      productName: serializer.fromJson<String>(json['productName']),
      cover: serializer.fromJson<String>(json['cover']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productId': serializer.toJson<int>(productId),
      'productName': serializer.toJson<String>(productName),
      'cover': serializer.toJson<String>(cover),
    };
  }

  ExclusiveProductModelData copyWith({
    int? productId,
    String? productName,
    String? cover,
  }) => ExclusiveProductModelData(
    productId: productId ?? this.productId,
    productName: productName ?? this.productName,
    cover: cover ?? this.cover,
  );
  ExclusiveProductModelData copyWithCompanion(
    ExclusiveProductModelCompanion data,
  ) {
    return ExclusiveProductModelData(
      productId: data.productId.present ? data.productId.value : this.productId,
      productName: data.productName.present
          ? data.productName.value
          : this.productName,
      cover: data.cover.present ? data.cover.value : this.cover,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExclusiveProductModelData(')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('cover: $cover')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(productId, productName, cover);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExclusiveProductModelData &&
          other.productId == this.productId &&
          other.productName == this.productName &&
          other.cover == this.cover);
}

class ExclusiveProductModelCompanion
    extends UpdateCompanion<ExclusiveProductModelData> {
  final Value<int> productId;
  final Value<String> productName;
  final Value<String> cover;
  final Value<int> rowid;
  const ExclusiveProductModelCompanion({
    this.productId = const Value.absent(),
    this.productName = const Value.absent(),
    this.cover = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExclusiveProductModelCompanion.insert({
    required int productId,
    required String productName,
    required String cover,
    this.rowid = const Value.absent(),
  }) : productId = Value(productId),
       productName = Value(productName),
       cover = Value(cover);
  static Insertable<ExclusiveProductModelData> custom({
    Expression<int>? productId,
    Expression<String>? productName,
    Expression<String>? cover,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (productId != null) 'product_id': productId,
      if (productName != null) 'product_name': productName,
      if (cover != null) 'cover': cover,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExclusiveProductModelCompanion copyWith({
    Value<int>? productId,
    Value<String>? productName,
    Value<String>? cover,
    Value<int>? rowid,
  }) {
    return ExclusiveProductModelCompanion(
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      cover: cover ?? this.cover,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (cover.present) {
      map['cover'] = Variable<String>(cover.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExclusiveProductModelCompanion(')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('cover: $cover, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExclusiveProductModuleModelTable extends ExclusiveProductModuleModel
    with
        TableInfo<
          $ExclusiveProductModuleModelTable,
          ExclusiveProductModuleModelData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExclusiveProductModuleModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _moduleIdMeta = const VerificationMeta(
    'moduleId',
  );
  @override
  late final GeneratedColumn<int> moduleId = GeneratedColumn<int>(
    'module_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moduleNameMeta = const VerificationMeta(
    'moduleName',
  );
  @override
  late final GeneratedColumn<String> moduleName = GeneratedColumn<String>(
    'module_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moduleNumberMeta = const VerificationMeta(
    'moduleNumber',
  );
  @override
  late final GeneratedColumn<int> moduleNumber = GeneratedColumn<int>(
    'module_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    moduleId,
    productId,
    moduleName,
    moduleNumber,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exclusive_product_module_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExclusiveProductModuleModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('module_id')) {
      context.handle(
        _moduleIdMeta,
        moduleId.isAcceptableOrUnknown(data['module_id']!, _moduleIdMeta),
      );
    } else if (isInserting) {
      context.missing(_moduleIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('module_name')) {
      context.handle(
        _moduleNameMeta,
        moduleName.isAcceptableOrUnknown(data['module_name']!, _moduleNameMeta),
      );
    } else if (isInserting) {
      context.missing(_moduleNameMeta);
    }
    if (data.containsKey('module_number')) {
      context.handle(
        _moduleNumberMeta,
        moduleNumber.isAcceptableOrUnknown(
          data['module_number']!,
          _moduleNumberMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {moduleId},
  ];
  @override
  ExclusiveProductModuleModelData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExclusiveProductModuleModelData(
      moduleId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}module_id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}product_id'],
      )!,
      moduleName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}module_name'],
      )!,
      moduleNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}module_number'],
      )!,
    );
  }

  @override
  $ExclusiveProductModuleModelTable createAlias(String alias) {
    return $ExclusiveProductModuleModelTable(attachedDatabase, alias);
  }
}

class ExclusiveProductModuleModelData extends DataClass
    implements Insertable<ExclusiveProductModuleModelData> {
  final int moduleId;
  final int productId;
  final String moduleName;
  final int moduleNumber;
  const ExclusiveProductModuleModelData({
    required this.moduleId,
    required this.productId,
    required this.moduleName,
    required this.moduleNumber,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['module_id'] = Variable<int>(moduleId);
    map['product_id'] = Variable<int>(productId);
    map['module_name'] = Variable<String>(moduleName);
    map['module_number'] = Variable<int>(moduleNumber);
    return map;
  }

  ExclusiveProductModuleModelCompanion toCompanion(bool nullToAbsent) {
    return ExclusiveProductModuleModelCompanion(
      moduleId: Value(moduleId),
      productId: Value(productId),
      moduleName: Value(moduleName),
      moduleNumber: Value(moduleNumber),
    );
  }

  factory ExclusiveProductModuleModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExclusiveProductModuleModelData(
      moduleId: serializer.fromJson<int>(json['moduleId']),
      productId: serializer.fromJson<int>(json['productId']),
      moduleName: serializer.fromJson<String>(json['moduleName']),
      moduleNumber: serializer.fromJson<int>(json['moduleNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'moduleId': serializer.toJson<int>(moduleId),
      'productId': serializer.toJson<int>(productId),
      'moduleName': serializer.toJson<String>(moduleName),
      'moduleNumber': serializer.toJson<int>(moduleNumber),
    };
  }

  ExclusiveProductModuleModelData copyWith({
    int? moduleId,
    int? productId,
    String? moduleName,
    int? moduleNumber,
  }) => ExclusiveProductModuleModelData(
    moduleId: moduleId ?? this.moduleId,
    productId: productId ?? this.productId,
    moduleName: moduleName ?? this.moduleName,
    moduleNumber: moduleNumber ?? this.moduleNumber,
  );
  ExclusiveProductModuleModelData copyWithCompanion(
    ExclusiveProductModuleModelCompanion data,
  ) {
    return ExclusiveProductModuleModelData(
      moduleId: data.moduleId.present ? data.moduleId.value : this.moduleId,
      productId: data.productId.present ? data.productId.value : this.productId,
      moduleName: data.moduleName.present
          ? data.moduleName.value
          : this.moduleName,
      moduleNumber: data.moduleNumber.present
          ? data.moduleNumber.value
          : this.moduleNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExclusiveProductModuleModelData(')
          ..write('moduleId: $moduleId, ')
          ..write('productId: $productId, ')
          ..write('moduleName: $moduleName, ')
          ..write('moduleNumber: $moduleNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(moduleId, productId, moduleName, moduleNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExclusiveProductModuleModelData &&
          other.moduleId == this.moduleId &&
          other.productId == this.productId &&
          other.moduleName == this.moduleName &&
          other.moduleNumber == this.moduleNumber);
}

class ExclusiveProductModuleModelCompanion
    extends UpdateCompanion<ExclusiveProductModuleModelData> {
  final Value<int> moduleId;
  final Value<int> productId;
  final Value<String> moduleName;
  final Value<int> moduleNumber;
  final Value<int> rowid;
  const ExclusiveProductModuleModelCompanion({
    this.moduleId = const Value.absent(),
    this.productId = const Value.absent(),
    this.moduleName = const Value.absent(),
    this.moduleNumber = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExclusiveProductModuleModelCompanion.insert({
    required int moduleId,
    required int productId,
    required String moduleName,
    this.moduleNumber = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : moduleId = Value(moduleId),
       productId = Value(productId),
       moduleName = Value(moduleName);
  static Insertable<ExclusiveProductModuleModelData> custom({
    Expression<int>? moduleId,
    Expression<int>? productId,
    Expression<String>? moduleName,
    Expression<int>? moduleNumber,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (moduleId != null) 'module_id': moduleId,
      if (productId != null) 'product_id': productId,
      if (moduleName != null) 'module_name': moduleName,
      if (moduleNumber != null) 'module_number': moduleNumber,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExclusiveProductModuleModelCompanion copyWith({
    Value<int>? moduleId,
    Value<int>? productId,
    Value<String>? moduleName,
    Value<int>? moduleNumber,
    Value<int>? rowid,
  }) {
    return ExclusiveProductModuleModelCompanion(
      moduleId: moduleId ?? this.moduleId,
      productId: productId ?? this.productId,
      moduleName: moduleName ?? this.moduleName,
      moduleNumber: moduleNumber ?? this.moduleNumber,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (moduleId.present) {
      map['module_id'] = Variable<int>(moduleId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (moduleName.present) {
      map['module_name'] = Variable<String>(moduleName.value);
    }
    if (moduleNumber.present) {
      map['module_number'] = Variable<int>(moduleNumber.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExclusiveProductModuleModelCompanion(')
          ..write('moduleId: $moduleId, ')
          ..write('productId: $productId, ')
          ..write('moduleName: $moduleName, ')
          ..write('moduleNumber: $moduleNumber, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExclusiveProductModuleMaterialModelTable
    extends ExclusiveProductModuleMaterialModel
    with
        TableInfo<
          $ExclusiveProductModuleMaterialModelTable,
          ExclusiveProductModuleMaterialModelData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExclusiveProductModuleMaterialModelTable(
    this.attachedDatabase, [
    this._alias,
  ]);
  static const VerificationMeta _materialIdMeta = const VerificationMeta(
    'materialId',
  );
  @override
  late final GeneratedColumn<int> materialId = GeneratedColumn<int>(
    'material_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moduleIdMeta = const VerificationMeta(
    'moduleId',
  );
  @override
  late final GeneratedColumn<int> moduleId = GeneratedColumn<int>(
    'module_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moduleNameMeta = const VerificationMeta(
    'moduleName',
  );
  @override
  late final GeneratedColumn<String> moduleName = GeneratedColumn<String>(
    'module_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _coverMeta = const VerificationMeta('cover');
  @override
  late final GeneratedColumn<String> cover = GeneratedColumn<String>(
    'cover',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    materialId,
    moduleId,
    moduleName,
    cover,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exclusive_product_module_material_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExclusiveProductModuleMaterialModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('material_id')) {
      context.handle(
        _materialIdMeta,
        materialId.isAcceptableOrUnknown(data['material_id']!, _materialIdMeta),
      );
    } else if (isInserting) {
      context.missing(_materialIdMeta);
    }
    if (data.containsKey('module_id')) {
      context.handle(
        _moduleIdMeta,
        moduleId.isAcceptableOrUnknown(data['module_id']!, _moduleIdMeta),
      );
    } else if (isInserting) {
      context.missing(_moduleIdMeta);
    }
    if (data.containsKey('module_name')) {
      context.handle(
        _moduleNameMeta,
        moduleName.isAcceptableOrUnknown(data['module_name']!, _moduleNameMeta),
      );
    } else if (isInserting) {
      context.missing(_moduleNameMeta);
    }
    if (data.containsKey('cover')) {
      context.handle(
        _coverMeta,
        cover.isAcceptableOrUnknown(data['cover']!, _coverMeta),
      );
    } else if (isInserting) {
      context.missing(_coverMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {materialId},
  ];
  @override
  ExclusiveProductModuleMaterialModelData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExclusiveProductModuleMaterialModelData(
      materialId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}material_id'],
      )!,
      moduleId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}module_id'],
      )!,
      moduleName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}module_name'],
      )!,
      cover: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cover'],
      )!,
    );
  }

  @override
  $ExclusiveProductModuleMaterialModelTable createAlias(String alias) {
    return $ExclusiveProductModuleMaterialModelTable(attachedDatabase, alias);
  }
}

class ExclusiveProductModuleMaterialModelData extends DataClass
    implements Insertable<ExclusiveProductModuleMaterialModelData> {
  final int materialId;
  final int moduleId;
  final String moduleName;
  final String cover;
  const ExclusiveProductModuleMaterialModelData({
    required this.materialId,
    required this.moduleId,
    required this.moduleName,
    required this.cover,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['material_id'] = Variable<int>(materialId);
    map['module_id'] = Variable<int>(moduleId);
    map['module_name'] = Variable<String>(moduleName);
    map['cover'] = Variable<String>(cover);
    return map;
  }

  ExclusiveProductModuleMaterialModelCompanion toCompanion(bool nullToAbsent) {
    return ExclusiveProductModuleMaterialModelCompanion(
      materialId: Value(materialId),
      moduleId: Value(moduleId),
      moduleName: Value(moduleName),
      cover: Value(cover),
    );
  }

  factory ExclusiveProductModuleMaterialModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExclusiveProductModuleMaterialModelData(
      materialId: serializer.fromJson<int>(json['materialId']),
      moduleId: serializer.fromJson<int>(json['moduleId']),
      moduleName: serializer.fromJson<String>(json['moduleName']),
      cover: serializer.fromJson<String>(json['cover']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'materialId': serializer.toJson<int>(materialId),
      'moduleId': serializer.toJson<int>(moduleId),
      'moduleName': serializer.toJson<String>(moduleName),
      'cover': serializer.toJson<String>(cover),
    };
  }

  ExclusiveProductModuleMaterialModelData copyWith({
    int? materialId,
    int? moduleId,
    String? moduleName,
    String? cover,
  }) => ExclusiveProductModuleMaterialModelData(
    materialId: materialId ?? this.materialId,
    moduleId: moduleId ?? this.moduleId,
    moduleName: moduleName ?? this.moduleName,
    cover: cover ?? this.cover,
  );
  ExclusiveProductModuleMaterialModelData copyWithCompanion(
    ExclusiveProductModuleMaterialModelCompanion data,
  ) {
    return ExclusiveProductModuleMaterialModelData(
      materialId: data.materialId.present
          ? data.materialId.value
          : this.materialId,
      moduleId: data.moduleId.present ? data.moduleId.value : this.moduleId,
      moduleName: data.moduleName.present
          ? data.moduleName.value
          : this.moduleName,
      cover: data.cover.present ? data.cover.value : this.cover,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExclusiveProductModuleMaterialModelData(')
          ..write('materialId: $materialId, ')
          ..write('moduleId: $moduleId, ')
          ..write('moduleName: $moduleName, ')
          ..write('cover: $cover')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(materialId, moduleId, moduleName, cover);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExclusiveProductModuleMaterialModelData &&
          other.materialId == this.materialId &&
          other.moduleId == this.moduleId &&
          other.moduleName == this.moduleName &&
          other.cover == this.cover);
}

class ExclusiveProductModuleMaterialModelCompanion
    extends UpdateCompanion<ExclusiveProductModuleMaterialModelData> {
  final Value<int> materialId;
  final Value<int> moduleId;
  final Value<String> moduleName;
  final Value<String> cover;
  final Value<int> rowid;
  const ExclusiveProductModuleMaterialModelCompanion({
    this.materialId = const Value.absent(),
    this.moduleId = const Value.absent(),
    this.moduleName = const Value.absent(),
    this.cover = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExclusiveProductModuleMaterialModelCompanion.insert({
    required int materialId,
    required int moduleId,
    required String moduleName,
    required String cover,
    this.rowid = const Value.absent(),
  }) : materialId = Value(materialId),
       moduleId = Value(moduleId),
       moduleName = Value(moduleName),
       cover = Value(cover);
  static Insertable<ExclusiveProductModuleMaterialModelData> custom({
    Expression<int>? materialId,
    Expression<int>? moduleId,
    Expression<String>? moduleName,
    Expression<String>? cover,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (materialId != null) 'material_id': materialId,
      if (moduleId != null) 'module_id': moduleId,
      if (moduleName != null) 'module_name': moduleName,
      if (cover != null) 'cover': cover,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExclusiveProductModuleMaterialModelCompanion copyWith({
    Value<int>? materialId,
    Value<int>? moduleId,
    Value<String>? moduleName,
    Value<String>? cover,
    Value<int>? rowid,
  }) {
    return ExclusiveProductModuleMaterialModelCompanion(
      materialId: materialId ?? this.materialId,
      moduleId: moduleId ?? this.moduleId,
      moduleName: moduleName ?? this.moduleName,
      cover: cover ?? this.cover,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (materialId.present) {
      map['material_id'] = Variable<int>(materialId.value);
    }
    if (moduleId.present) {
      map['module_id'] = Variable<int>(moduleId.value);
    }
    if (moduleName.present) {
      map['module_name'] = Variable<String>(moduleName.value);
    }
    if (cover.present) {
      map['cover'] = Variable<String>(cover.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExclusiveProductModuleMaterialModelCompanion(')
          ..write('materialId: $materialId, ')
          ..write('moduleId: $moduleId, ')
          ..write('moduleName: $moduleName, ')
          ..write('cover: $cover, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExclusiveProductModuleMaterialVideoModelTable
    extends ExclusiveProductModuleMaterialVideoModel
    with
        TableInfo<
          $ExclusiveProductModuleMaterialVideoModelTable,
          ExclusiveProductModuleMaterialVideoModelData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExclusiveProductModuleMaterialVideoModelTable(
    this.attachedDatabase, [
    this._alias,
  ]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _materialIdMeta = const VerificationMeta(
    'materialId',
  );
  @override
  late final GeneratedColumn<int> materialId = GeneratedColumn<int>(
    'material_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
    'slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, materialId, slug];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exclusive_product_module_material_video_model';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExclusiveProductModuleMaterialVideoModelData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('material_id')) {
      context.handle(
        _materialIdMeta,
        materialId.isAcceptableOrUnknown(data['material_id']!, _materialIdMeta),
      );
    } else if (isInserting) {
      context.missing(_materialIdMeta);
    }
    if (data.containsKey('slug')) {
      context.handle(
        _slugMeta,
        slug.isAcceptableOrUnknown(data['slug']!, _slugMeta),
      );
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExclusiveProductModuleMaterialVideoModelData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExclusiveProductModuleMaterialVideoModelData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      materialId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}material_id'],
      )!,
      slug: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}slug'],
      )!,
    );
  }

  @override
  $ExclusiveProductModuleMaterialVideoModelTable createAlias(String alias) {
    return $ExclusiveProductModuleMaterialVideoModelTable(
      attachedDatabase,
      alias,
    );
  }
}

class ExclusiveProductModuleMaterialVideoModelData extends DataClass
    implements Insertable<ExclusiveProductModuleMaterialVideoModelData> {
  final int id;
  final int materialId;
  final String slug;
  const ExclusiveProductModuleMaterialVideoModelData({
    required this.id,
    required this.materialId,
    required this.slug,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['material_id'] = Variable<int>(materialId);
    map['slug'] = Variable<String>(slug);
    return map;
  }

  ExclusiveProductModuleMaterialVideoModelCompanion toCompanion(
    bool nullToAbsent,
  ) {
    return ExclusiveProductModuleMaterialVideoModelCompanion(
      id: Value(id),
      materialId: Value(materialId),
      slug: Value(slug),
    );
  }

  factory ExclusiveProductModuleMaterialVideoModelData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExclusiveProductModuleMaterialVideoModelData(
      id: serializer.fromJson<int>(json['id']),
      materialId: serializer.fromJson<int>(json['materialId']),
      slug: serializer.fromJson<String>(json['slug']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'materialId': serializer.toJson<int>(materialId),
      'slug': serializer.toJson<String>(slug),
    };
  }

  ExclusiveProductModuleMaterialVideoModelData copyWith({
    int? id,
    int? materialId,
    String? slug,
  }) => ExclusiveProductModuleMaterialVideoModelData(
    id: id ?? this.id,
    materialId: materialId ?? this.materialId,
    slug: slug ?? this.slug,
  );
  ExclusiveProductModuleMaterialVideoModelData copyWithCompanion(
    ExclusiveProductModuleMaterialVideoModelCompanion data,
  ) {
    return ExclusiveProductModuleMaterialVideoModelData(
      id: data.id.present ? data.id.value : this.id,
      materialId: data.materialId.present
          ? data.materialId.value
          : this.materialId,
      slug: data.slug.present ? data.slug.value : this.slug,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExclusiveProductModuleMaterialVideoModelData(')
          ..write('id: $id, ')
          ..write('materialId: $materialId, ')
          ..write('slug: $slug')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, materialId, slug);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExclusiveProductModuleMaterialVideoModelData &&
          other.id == this.id &&
          other.materialId == this.materialId &&
          other.slug == this.slug);
}

class ExclusiveProductModuleMaterialVideoModelCompanion
    extends UpdateCompanion<ExclusiveProductModuleMaterialVideoModelData> {
  final Value<int> id;
  final Value<int> materialId;
  final Value<String> slug;
  const ExclusiveProductModuleMaterialVideoModelCompanion({
    this.id = const Value.absent(),
    this.materialId = const Value.absent(),
    this.slug = const Value.absent(),
  });
  ExclusiveProductModuleMaterialVideoModelCompanion.insert({
    this.id = const Value.absent(),
    required int materialId,
    required String slug,
  }) : materialId = Value(materialId),
       slug = Value(slug);
  static Insertable<ExclusiveProductModuleMaterialVideoModelData> custom({
    Expression<int>? id,
    Expression<int>? materialId,
    Expression<String>? slug,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (materialId != null) 'material_id': materialId,
      if (slug != null) 'slug': slug,
    });
  }

  ExclusiveProductModuleMaterialVideoModelCompanion copyWith({
    Value<int>? id,
    Value<int>? materialId,
    Value<String>? slug,
  }) {
    return ExclusiveProductModuleMaterialVideoModelCompanion(
      id: id ?? this.id,
      materialId: materialId ?? this.materialId,
      slug: slug ?? this.slug,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (materialId.present) {
      map['material_id'] = Variable<int>(materialId.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExclusiveProductModuleMaterialVideoModelCompanion(')
          ..write('id: $id, ')
          ..write('materialId: $materialId, ')
          ..write('slug: $slug')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FileSavedTable fileSaved = $FileSavedTable(this);
  late final $VideoSavedTable videoSaved = $VideoSavedTable(this);
  late final $GroupsModelTable groupsModel = $GroupsModelTable(this);
  late final $GroupLessonModelTable groupLessonModel = $GroupLessonModelTable(
    this,
  );
  late final $GroupLessonVideoModelTable groupLessonVideoModel =
      $GroupLessonVideoModelTable(this);
  late final $ExclusiveProductModelTable exclusiveProductModel =
      $ExclusiveProductModelTable(this);
  late final $ExclusiveProductModuleModelTable exclusiveProductModuleModel =
      $ExclusiveProductModuleModelTable(this);
  late final $ExclusiveProductModuleMaterialModelTable
  exclusiveProductModuleMaterialModel =
      $ExclusiveProductModuleMaterialModelTable(this);
  late final $ExclusiveProductModuleMaterialVideoModelTable
  exclusiveProductModuleMaterialVideoModel =
      $ExclusiveProductModuleMaterialVideoModelTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    fileSaved,
    videoSaved,
    groupsModel,
    groupLessonModel,
    groupLessonVideoModel,
    exclusiveProductModel,
    exclusiveProductModuleModel,
    exclusiveProductModuleMaterialModel,
    exclusiveProductModuleMaterialVideoModel,
  ];
}

typedef $$FileSavedTableCreateCompanionBuilder =
    FileSavedCompanion Function({
      required int id,
      required String displayName,
      required String link,
      required int createdAt,
      Value<int> rowid,
    });
typedef $$FileSavedTableUpdateCompanionBuilder =
    FileSavedCompanion Function({
      Value<int> id,
      Value<String> displayName,
      Value<String> link,
      Value<int> createdAt,
      Value<int> rowid,
    });

class $$FileSavedTableFilterComposer
    extends Composer<_$AppDatabase, $FileSavedTable> {
  $$FileSavedTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get link => $composableBuilder(
    column: $table.link,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FileSavedTableOrderingComposer
    extends Composer<_$AppDatabase, $FileSavedTable> {
  $$FileSavedTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get link => $composableBuilder(
    column: $table.link,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FileSavedTableAnnotationComposer
    extends Composer<_$AppDatabase, $FileSavedTable> {
  $$FileSavedTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get link =>
      $composableBuilder(column: $table.link, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$FileSavedTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FileSavedTable,
          FileSavedData,
          $$FileSavedTableFilterComposer,
          $$FileSavedTableOrderingComposer,
          $$FileSavedTableAnnotationComposer,
          $$FileSavedTableCreateCompanionBuilder,
          $$FileSavedTableUpdateCompanionBuilder,
          (
            FileSavedData,
            BaseReferences<_$AppDatabase, $FileSavedTable, FileSavedData>,
          ),
          FileSavedData,
          PrefetchHooks Function()
        > {
  $$FileSavedTableTableManager(_$AppDatabase db, $FileSavedTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FileSavedTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FileSavedTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FileSavedTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> displayName = const Value.absent(),
                Value<String> link = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FileSavedCompanion(
                id: id,
                displayName: displayName,
                link: link,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int id,
                required String displayName,
                required String link,
                required int createdAt,
                Value<int> rowid = const Value.absent(),
              }) => FileSavedCompanion.insert(
                id: id,
                displayName: displayName,
                link: link,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FileSavedTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FileSavedTable,
      FileSavedData,
      $$FileSavedTableFilterComposer,
      $$FileSavedTableOrderingComposer,
      $$FileSavedTableAnnotationComposer,
      $$FileSavedTableCreateCompanionBuilder,
      $$FileSavedTableUpdateCompanionBuilder,
      (
        FileSavedData,
        BaseReferences<_$AppDatabase, $FileSavedTable, FileSavedData>,
      ),
      FileSavedData,
      PrefetchHooks Function()
    >;
typedef $$VideoSavedTableCreateCompanionBuilder =
    VideoSavedCompanion Function({
      required String slug,
      required String title,
      required String playlist,
      required int createdAt,
      Value<String?> preview,
      Value<int?> duration,
      Value<int?> size,
      Value<String?> key,
      Value<int> rowid,
    });
typedef $$VideoSavedTableUpdateCompanionBuilder =
    VideoSavedCompanion Function({
      Value<String> slug,
      Value<String> title,
      Value<String> playlist,
      Value<int> createdAt,
      Value<String?> preview,
      Value<int?> duration,
      Value<int?> size,
      Value<String?> key,
      Value<int> rowid,
    });

class $$VideoSavedTableFilterComposer
    extends Composer<_$AppDatabase, $VideoSavedTable> {
  $$VideoSavedTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get playlist => $composableBuilder(
    column: $table.playlist,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get preview => $composableBuilder(
    column: $table.preview,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get duration => $composableBuilder(
    column: $table.duration,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );
}

class $$VideoSavedTableOrderingComposer
    extends Composer<_$AppDatabase, $VideoSavedTable> {
  $$VideoSavedTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get playlist => $composableBuilder(
    column: $table.playlist,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get preview => $composableBuilder(
    column: $table.preview,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get duration => $composableBuilder(
    column: $table.duration,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$VideoSavedTableAnnotationComposer
    extends Composer<_$AppDatabase, $VideoSavedTable> {
  $$VideoSavedTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get playlist =>
      $composableBuilder(column: $table.playlist, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get preview =>
      $composableBuilder(column: $table.preview, builder: (column) => column);

  GeneratedColumn<int> get duration =>
      $composableBuilder(column: $table.duration, builder: (column) => column);

  GeneratedColumn<int> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);

  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);
}

class $$VideoSavedTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $VideoSavedTable,
          VideoSavedData,
          $$VideoSavedTableFilterComposer,
          $$VideoSavedTableOrderingComposer,
          $$VideoSavedTableAnnotationComposer,
          $$VideoSavedTableCreateCompanionBuilder,
          $$VideoSavedTableUpdateCompanionBuilder,
          (
            VideoSavedData,
            BaseReferences<_$AppDatabase, $VideoSavedTable, VideoSavedData>,
          ),
          VideoSavedData,
          PrefetchHooks Function()
        > {
  $$VideoSavedTableTableManager(_$AppDatabase db, $VideoSavedTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VideoSavedTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VideoSavedTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VideoSavedTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> slug = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> playlist = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<String?> preview = const Value.absent(),
                Value<int?> duration = const Value.absent(),
                Value<int?> size = const Value.absent(),
                Value<String?> key = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => VideoSavedCompanion(
                slug: slug,
                title: title,
                playlist: playlist,
                createdAt: createdAt,
                preview: preview,
                duration: duration,
                size: size,
                key: key,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String slug,
                required String title,
                required String playlist,
                required int createdAt,
                Value<String?> preview = const Value.absent(),
                Value<int?> duration = const Value.absent(),
                Value<int?> size = const Value.absent(),
                Value<String?> key = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => VideoSavedCompanion.insert(
                slug: slug,
                title: title,
                playlist: playlist,
                createdAt: createdAt,
                preview: preview,
                duration: duration,
                size: size,
                key: key,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$VideoSavedTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $VideoSavedTable,
      VideoSavedData,
      $$VideoSavedTableFilterComposer,
      $$VideoSavedTableOrderingComposer,
      $$VideoSavedTableAnnotationComposer,
      $$VideoSavedTableCreateCompanionBuilder,
      $$VideoSavedTableUpdateCompanionBuilder,
      (
        VideoSavedData,
        BaseReferences<_$AppDatabase, $VideoSavedTable, VideoSavedData>,
      ),
      VideoSavedData,
      PrefetchHooks Function()
    >;
typedef $$GroupsModelTableCreateCompanionBuilder =
    GroupsModelCompanion Function({
      required int groupId,
      required String courseName,
      required String banner,
      Value<int?> lessonCount,
      Value<int?> blockLessonCount,
      Value<int> rowid,
    });
typedef $$GroupsModelTableUpdateCompanionBuilder =
    GroupsModelCompanion Function({
      Value<int> groupId,
      Value<String> courseName,
      Value<String> banner,
      Value<int?> lessonCount,
      Value<int?> blockLessonCount,
      Value<int> rowid,
    });

class $$GroupsModelTableFilterComposer
    extends Composer<_$AppDatabase, $GroupsModelTable> {
  $$GroupsModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get groupId => $composableBuilder(
    column: $table.groupId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get courseName => $composableBuilder(
    column: $table.courseName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get banner => $composableBuilder(
    column: $table.banner,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lessonCount => $composableBuilder(
    column: $table.lessonCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get blockLessonCount => $composableBuilder(
    column: $table.blockLessonCount,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GroupsModelTableOrderingComposer
    extends Composer<_$AppDatabase, $GroupsModelTable> {
  $$GroupsModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get groupId => $composableBuilder(
    column: $table.groupId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get courseName => $composableBuilder(
    column: $table.courseName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get banner => $composableBuilder(
    column: $table.banner,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lessonCount => $composableBuilder(
    column: $table.lessonCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get blockLessonCount => $composableBuilder(
    column: $table.blockLessonCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GroupsModelTableAnnotationComposer
    extends Composer<_$AppDatabase, $GroupsModelTable> {
  $$GroupsModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get groupId =>
      $composableBuilder(column: $table.groupId, builder: (column) => column);

  GeneratedColumn<String> get courseName => $composableBuilder(
    column: $table.courseName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get banner =>
      $composableBuilder(column: $table.banner, builder: (column) => column);

  GeneratedColumn<int> get lessonCount => $composableBuilder(
    column: $table.lessonCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get blockLessonCount => $composableBuilder(
    column: $table.blockLessonCount,
    builder: (column) => column,
  );
}

class $$GroupsModelTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GroupsModelTable,
          GroupsModelData,
          $$GroupsModelTableFilterComposer,
          $$GroupsModelTableOrderingComposer,
          $$GroupsModelTableAnnotationComposer,
          $$GroupsModelTableCreateCompanionBuilder,
          $$GroupsModelTableUpdateCompanionBuilder,
          (
            GroupsModelData,
            BaseReferences<_$AppDatabase, $GroupsModelTable, GroupsModelData>,
          ),
          GroupsModelData,
          PrefetchHooks Function()
        > {
  $$GroupsModelTableTableManager(_$AppDatabase db, $GroupsModelTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GroupsModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GroupsModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GroupsModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> groupId = const Value.absent(),
                Value<String> courseName = const Value.absent(),
                Value<String> banner = const Value.absent(),
                Value<int?> lessonCount = const Value.absent(),
                Value<int?> blockLessonCount = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GroupsModelCompanion(
                groupId: groupId,
                courseName: courseName,
                banner: banner,
                lessonCount: lessonCount,
                blockLessonCount: blockLessonCount,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int groupId,
                required String courseName,
                required String banner,
                Value<int?> lessonCount = const Value.absent(),
                Value<int?> blockLessonCount = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GroupsModelCompanion.insert(
                groupId: groupId,
                courseName: courseName,
                banner: banner,
                lessonCount: lessonCount,
                blockLessonCount: blockLessonCount,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GroupsModelTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GroupsModelTable,
      GroupsModelData,
      $$GroupsModelTableFilterComposer,
      $$GroupsModelTableOrderingComposer,
      $$GroupsModelTableAnnotationComposer,
      $$GroupsModelTableCreateCompanionBuilder,
      $$GroupsModelTableUpdateCompanionBuilder,
      (
        GroupsModelData,
        BaseReferences<_$AppDatabase, $GroupsModelTable, GroupsModelData>,
      ),
      GroupsModelData,
      PrefetchHooks Function()
    >;
typedef $$GroupLessonModelTableCreateCompanionBuilder =
    GroupLessonModelCompanion Function({
      required int lessonId,
      required int groupId,
      required int lessonNumber,
      Value<String?> lessonName,
      Value<int> rowid,
    });
typedef $$GroupLessonModelTableUpdateCompanionBuilder =
    GroupLessonModelCompanion Function({
      Value<int> lessonId,
      Value<int> groupId,
      Value<int> lessonNumber,
      Value<String?> lessonName,
      Value<int> rowid,
    });

class $$GroupLessonModelTableFilterComposer
    extends Composer<_$AppDatabase, $GroupLessonModelTable> {
  $$GroupLessonModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get lessonId => $composableBuilder(
    column: $table.lessonId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get groupId => $composableBuilder(
    column: $table.groupId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lessonNumber => $composableBuilder(
    column: $table.lessonNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lessonName => $composableBuilder(
    column: $table.lessonName,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GroupLessonModelTableOrderingComposer
    extends Composer<_$AppDatabase, $GroupLessonModelTable> {
  $$GroupLessonModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get lessonId => $composableBuilder(
    column: $table.lessonId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get groupId => $composableBuilder(
    column: $table.groupId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lessonNumber => $composableBuilder(
    column: $table.lessonNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lessonName => $composableBuilder(
    column: $table.lessonName,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GroupLessonModelTableAnnotationComposer
    extends Composer<_$AppDatabase, $GroupLessonModelTable> {
  $$GroupLessonModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get lessonId =>
      $composableBuilder(column: $table.lessonId, builder: (column) => column);

  GeneratedColumn<int> get groupId =>
      $composableBuilder(column: $table.groupId, builder: (column) => column);

  GeneratedColumn<int> get lessonNumber => $composableBuilder(
    column: $table.lessonNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lessonName => $composableBuilder(
    column: $table.lessonName,
    builder: (column) => column,
  );
}

class $$GroupLessonModelTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GroupLessonModelTable,
          GroupLessonModelData,
          $$GroupLessonModelTableFilterComposer,
          $$GroupLessonModelTableOrderingComposer,
          $$GroupLessonModelTableAnnotationComposer,
          $$GroupLessonModelTableCreateCompanionBuilder,
          $$GroupLessonModelTableUpdateCompanionBuilder,
          (
            GroupLessonModelData,
            BaseReferences<
              _$AppDatabase,
              $GroupLessonModelTable,
              GroupLessonModelData
            >,
          ),
          GroupLessonModelData,
          PrefetchHooks Function()
        > {
  $$GroupLessonModelTableTableManager(
    _$AppDatabase db,
    $GroupLessonModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GroupLessonModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GroupLessonModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GroupLessonModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> lessonId = const Value.absent(),
                Value<int> groupId = const Value.absent(),
                Value<int> lessonNumber = const Value.absent(),
                Value<String?> lessonName = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GroupLessonModelCompanion(
                lessonId: lessonId,
                groupId: groupId,
                lessonNumber: lessonNumber,
                lessonName: lessonName,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int lessonId,
                required int groupId,
                required int lessonNumber,
                Value<String?> lessonName = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GroupLessonModelCompanion.insert(
                lessonId: lessonId,
                groupId: groupId,
                lessonNumber: lessonNumber,
                lessonName: lessonName,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GroupLessonModelTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GroupLessonModelTable,
      GroupLessonModelData,
      $$GroupLessonModelTableFilterComposer,
      $$GroupLessonModelTableOrderingComposer,
      $$GroupLessonModelTableAnnotationComposer,
      $$GroupLessonModelTableCreateCompanionBuilder,
      $$GroupLessonModelTableUpdateCompanionBuilder,
      (
        GroupLessonModelData,
        BaseReferences<
          _$AppDatabase,
          $GroupLessonModelTable,
          GroupLessonModelData
        >,
      ),
      GroupLessonModelData,
      PrefetchHooks Function()
    >;
typedef $$GroupLessonVideoModelTableCreateCompanionBuilder =
    GroupLessonVideoModelCompanion Function({
      Value<int> id,
      required int lessonId,
      required String slug,
    });
typedef $$GroupLessonVideoModelTableUpdateCompanionBuilder =
    GroupLessonVideoModelCompanion Function({
      Value<int> id,
      Value<int> lessonId,
      Value<String> slug,
    });

class $$GroupLessonVideoModelTableFilterComposer
    extends Composer<_$AppDatabase, $GroupLessonVideoModelTable> {
  $$GroupLessonVideoModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lessonId => $composableBuilder(
    column: $table.lessonId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GroupLessonVideoModelTableOrderingComposer
    extends Composer<_$AppDatabase, $GroupLessonVideoModelTable> {
  $$GroupLessonVideoModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lessonId => $composableBuilder(
    column: $table.lessonId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GroupLessonVideoModelTableAnnotationComposer
    extends Composer<_$AppDatabase, $GroupLessonVideoModelTable> {
  $$GroupLessonVideoModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lessonId =>
      $composableBuilder(column: $table.lessonId, builder: (column) => column);

  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);
}

class $$GroupLessonVideoModelTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GroupLessonVideoModelTable,
          GroupLessonVideoModelData,
          $$GroupLessonVideoModelTableFilterComposer,
          $$GroupLessonVideoModelTableOrderingComposer,
          $$GroupLessonVideoModelTableAnnotationComposer,
          $$GroupLessonVideoModelTableCreateCompanionBuilder,
          $$GroupLessonVideoModelTableUpdateCompanionBuilder,
          (
            GroupLessonVideoModelData,
            BaseReferences<
              _$AppDatabase,
              $GroupLessonVideoModelTable,
              GroupLessonVideoModelData
            >,
          ),
          GroupLessonVideoModelData,
          PrefetchHooks Function()
        > {
  $$GroupLessonVideoModelTableTableManager(
    _$AppDatabase db,
    $GroupLessonVideoModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GroupLessonVideoModelTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$GroupLessonVideoModelTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$GroupLessonVideoModelTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> lessonId = const Value.absent(),
                Value<String> slug = const Value.absent(),
              }) => GroupLessonVideoModelCompanion(
                id: id,
                lessonId: lessonId,
                slug: slug,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int lessonId,
                required String slug,
              }) => GroupLessonVideoModelCompanion.insert(
                id: id,
                lessonId: lessonId,
                slug: slug,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GroupLessonVideoModelTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GroupLessonVideoModelTable,
      GroupLessonVideoModelData,
      $$GroupLessonVideoModelTableFilterComposer,
      $$GroupLessonVideoModelTableOrderingComposer,
      $$GroupLessonVideoModelTableAnnotationComposer,
      $$GroupLessonVideoModelTableCreateCompanionBuilder,
      $$GroupLessonVideoModelTableUpdateCompanionBuilder,
      (
        GroupLessonVideoModelData,
        BaseReferences<
          _$AppDatabase,
          $GroupLessonVideoModelTable,
          GroupLessonVideoModelData
        >,
      ),
      GroupLessonVideoModelData,
      PrefetchHooks Function()
    >;
typedef $$ExclusiveProductModelTableCreateCompanionBuilder =
    ExclusiveProductModelCompanion Function({
      required int productId,
      required String productName,
      required String cover,
      Value<int> rowid,
    });
typedef $$ExclusiveProductModelTableUpdateCompanionBuilder =
    ExclusiveProductModelCompanion Function({
      Value<int> productId,
      Value<String> productName,
      Value<String> cover,
      Value<int> rowid,
    });

class $$ExclusiveProductModelTableFilterComposer
    extends Composer<_$AppDatabase, $ExclusiveProductModelTable> {
  $$ExclusiveProductModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cover => $composableBuilder(
    column: $table.cover,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExclusiveProductModelTableOrderingComposer
    extends Composer<_$AppDatabase, $ExclusiveProductModelTable> {
  $$ExclusiveProductModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cover => $composableBuilder(
    column: $table.cover,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExclusiveProductModelTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExclusiveProductModelTable> {
  $$ExclusiveProductModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get cover =>
      $composableBuilder(column: $table.cover, builder: (column) => column);
}

class $$ExclusiveProductModelTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExclusiveProductModelTable,
          ExclusiveProductModelData,
          $$ExclusiveProductModelTableFilterComposer,
          $$ExclusiveProductModelTableOrderingComposer,
          $$ExclusiveProductModelTableAnnotationComposer,
          $$ExclusiveProductModelTableCreateCompanionBuilder,
          $$ExclusiveProductModelTableUpdateCompanionBuilder,
          (
            ExclusiveProductModelData,
            BaseReferences<
              _$AppDatabase,
              $ExclusiveProductModelTable,
              ExclusiveProductModelData
            >,
          ),
          ExclusiveProductModelData,
          PrefetchHooks Function()
        > {
  $$ExclusiveProductModelTableTableManager(
    _$AppDatabase db,
    $ExclusiveProductModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExclusiveProductModelTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$ExclusiveProductModelTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ExclusiveProductModelTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> productId = const Value.absent(),
                Value<String> productName = const Value.absent(),
                Value<String> cover = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExclusiveProductModelCompanion(
                productId: productId,
                productName: productName,
                cover: cover,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int productId,
                required String productName,
                required String cover,
                Value<int> rowid = const Value.absent(),
              }) => ExclusiveProductModelCompanion.insert(
                productId: productId,
                productName: productName,
                cover: cover,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExclusiveProductModelTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExclusiveProductModelTable,
      ExclusiveProductModelData,
      $$ExclusiveProductModelTableFilterComposer,
      $$ExclusiveProductModelTableOrderingComposer,
      $$ExclusiveProductModelTableAnnotationComposer,
      $$ExclusiveProductModelTableCreateCompanionBuilder,
      $$ExclusiveProductModelTableUpdateCompanionBuilder,
      (
        ExclusiveProductModelData,
        BaseReferences<
          _$AppDatabase,
          $ExclusiveProductModelTable,
          ExclusiveProductModelData
        >,
      ),
      ExclusiveProductModelData,
      PrefetchHooks Function()
    >;
typedef $$ExclusiveProductModuleModelTableCreateCompanionBuilder =
    ExclusiveProductModuleModelCompanion Function({
      required int moduleId,
      required int productId,
      required String moduleName,
      Value<int> moduleNumber,
      Value<int> rowid,
    });
typedef $$ExclusiveProductModuleModelTableUpdateCompanionBuilder =
    ExclusiveProductModuleModelCompanion Function({
      Value<int> moduleId,
      Value<int> productId,
      Value<String> moduleName,
      Value<int> moduleNumber,
      Value<int> rowid,
    });

class $$ExclusiveProductModuleModelTableFilterComposer
    extends Composer<_$AppDatabase, $ExclusiveProductModuleModelTable> {
  $$ExclusiveProductModuleModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get moduleId => $composableBuilder(
    column: $table.moduleId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get moduleName => $composableBuilder(
    column: $table.moduleName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get moduleNumber => $composableBuilder(
    column: $table.moduleNumber,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExclusiveProductModuleModelTableOrderingComposer
    extends Composer<_$AppDatabase, $ExclusiveProductModuleModelTable> {
  $$ExclusiveProductModuleModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get moduleId => $composableBuilder(
    column: $table.moduleId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get moduleName => $composableBuilder(
    column: $table.moduleName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get moduleNumber => $composableBuilder(
    column: $table.moduleNumber,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExclusiveProductModuleModelTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExclusiveProductModuleModelTable> {
  $$ExclusiveProductModuleModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get moduleId =>
      $composableBuilder(column: $table.moduleId, builder: (column) => column);

  GeneratedColumn<int> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get moduleName => $composableBuilder(
    column: $table.moduleName,
    builder: (column) => column,
  );

  GeneratedColumn<int> get moduleNumber => $composableBuilder(
    column: $table.moduleNumber,
    builder: (column) => column,
  );
}

class $$ExclusiveProductModuleModelTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExclusiveProductModuleModelTable,
          ExclusiveProductModuleModelData,
          $$ExclusiveProductModuleModelTableFilterComposer,
          $$ExclusiveProductModuleModelTableOrderingComposer,
          $$ExclusiveProductModuleModelTableAnnotationComposer,
          $$ExclusiveProductModuleModelTableCreateCompanionBuilder,
          $$ExclusiveProductModuleModelTableUpdateCompanionBuilder,
          (
            ExclusiveProductModuleModelData,
            BaseReferences<
              _$AppDatabase,
              $ExclusiveProductModuleModelTable,
              ExclusiveProductModuleModelData
            >,
          ),
          ExclusiveProductModuleModelData,
          PrefetchHooks Function()
        > {
  $$ExclusiveProductModuleModelTableTableManager(
    _$AppDatabase db,
    $ExclusiveProductModuleModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExclusiveProductModuleModelTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$ExclusiveProductModuleModelTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ExclusiveProductModuleModelTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> moduleId = const Value.absent(),
                Value<int> productId = const Value.absent(),
                Value<String> moduleName = const Value.absent(),
                Value<int> moduleNumber = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExclusiveProductModuleModelCompanion(
                moduleId: moduleId,
                productId: productId,
                moduleName: moduleName,
                moduleNumber: moduleNumber,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int moduleId,
                required int productId,
                required String moduleName,
                Value<int> moduleNumber = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExclusiveProductModuleModelCompanion.insert(
                moduleId: moduleId,
                productId: productId,
                moduleName: moduleName,
                moduleNumber: moduleNumber,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExclusiveProductModuleModelTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExclusiveProductModuleModelTable,
      ExclusiveProductModuleModelData,
      $$ExclusiveProductModuleModelTableFilterComposer,
      $$ExclusiveProductModuleModelTableOrderingComposer,
      $$ExclusiveProductModuleModelTableAnnotationComposer,
      $$ExclusiveProductModuleModelTableCreateCompanionBuilder,
      $$ExclusiveProductModuleModelTableUpdateCompanionBuilder,
      (
        ExclusiveProductModuleModelData,
        BaseReferences<
          _$AppDatabase,
          $ExclusiveProductModuleModelTable,
          ExclusiveProductModuleModelData
        >,
      ),
      ExclusiveProductModuleModelData,
      PrefetchHooks Function()
    >;
typedef $$ExclusiveProductModuleMaterialModelTableCreateCompanionBuilder =
    ExclusiveProductModuleMaterialModelCompanion Function({
      required int materialId,
      required int moduleId,
      required String moduleName,
      required String cover,
      Value<int> rowid,
    });
typedef $$ExclusiveProductModuleMaterialModelTableUpdateCompanionBuilder =
    ExclusiveProductModuleMaterialModelCompanion Function({
      Value<int> materialId,
      Value<int> moduleId,
      Value<String> moduleName,
      Value<String> cover,
      Value<int> rowid,
    });

class $$ExclusiveProductModuleMaterialModelTableFilterComposer
    extends Composer<_$AppDatabase, $ExclusiveProductModuleMaterialModelTable> {
  $$ExclusiveProductModuleMaterialModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get materialId => $composableBuilder(
    column: $table.materialId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get moduleId => $composableBuilder(
    column: $table.moduleId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get moduleName => $composableBuilder(
    column: $table.moduleName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cover => $composableBuilder(
    column: $table.cover,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExclusiveProductModuleMaterialModelTableOrderingComposer
    extends Composer<_$AppDatabase, $ExclusiveProductModuleMaterialModelTable> {
  $$ExclusiveProductModuleMaterialModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get materialId => $composableBuilder(
    column: $table.materialId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get moduleId => $composableBuilder(
    column: $table.moduleId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get moduleName => $composableBuilder(
    column: $table.moduleName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cover => $composableBuilder(
    column: $table.cover,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExclusiveProductModuleMaterialModelTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExclusiveProductModuleMaterialModelTable> {
  $$ExclusiveProductModuleMaterialModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get materialId => $composableBuilder(
    column: $table.materialId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get moduleId =>
      $composableBuilder(column: $table.moduleId, builder: (column) => column);

  GeneratedColumn<String> get moduleName => $composableBuilder(
    column: $table.moduleName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get cover =>
      $composableBuilder(column: $table.cover, builder: (column) => column);
}

class $$ExclusiveProductModuleMaterialModelTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExclusiveProductModuleMaterialModelTable,
          ExclusiveProductModuleMaterialModelData,
          $$ExclusiveProductModuleMaterialModelTableFilterComposer,
          $$ExclusiveProductModuleMaterialModelTableOrderingComposer,
          $$ExclusiveProductModuleMaterialModelTableAnnotationComposer,
          $$ExclusiveProductModuleMaterialModelTableCreateCompanionBuilder,
          $$ExclusiveProductModuleMaterialModelTableUpdateCompanionBuilder,
          (
            ExclusiveProductModuleMaterialModelData,
            BaseReferences<
              _$AppDatabase,
              $ExclusiveProductModuleMaterialModelTable,
              ExclusiveProductModuleMaterialModelData
            >,
          ),
          ExclusiveProductModuleMaterialModelData,
          PrefetchHooks Function()
        > {
  $$ExclusiveProductModuleMaterialModelTableTableManager(
    _$AppDatabase db,
    $ExclusiveProductModuleMaterialModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExclusiveProductModuleMaterialModelTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$ExclusiveProductModuleMaterialModelTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ExclusiveProductModuleMaterialModelTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> materialId = const Value.absent(),
                Value<int> moduleId = const Value.absent(),
                Value<String> moduleName = const Value.absent(),
                Value<String> cover = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExclusiveProductModuleMaterialModelCompanion(
                materialId: materialId,
                moduleId: moduleId,
                moduleName: moduleName,
                cover: cover,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int materialId,
                required int moduleId,
                required String moduleName,
                required String cover,
                Value<int> rowid = const Value.absent(),
              }) => ExclusiveProductModuleMaterialModelCompanion.insert(
                materialId: materialId,
                moduleId: moduleId,
                moduleName: moduleName,
                cover: cover,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExclusiveProductModuleMaterialModelTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExclusiveProductModuleMaterialModelTable,
      ExclusiveProductModuleMaterialModelData,
      $$ExclusiveProductModuleMaterialModelTableFilterComposer,
      $$ExclusiveProductModuleMaterialModelTableOrderingComposer,
      $$ExclusiveProductModuleMaterialModelTableAnnotationComposer,
      $$ExclusiveProductModuleMaterialModelTableCreateCompanionBuilder,
      $$ExclusiveProductModuleMaterialModelTableUpdateCompanionBuilder,
      (
        ExclusiveProductModuleMaterialModelData,
        BaseReferences<
          _$AppDatabase,
          $ExclusiveProductModuleMaterialModelTable,
          ExclusiveProductModuleMaterialModelData
        >,
      ),
      ExclusiveProductModuleMaterialModelData,
      PrefetchHooks Function()
    >;
typedef $$ExclusiveProductModuleMaterialVideoModelTableCreateCompanionBuilder =
    ExclusiveProductModuleMaterialVideoModelCompanion Function({
      Value<int> id,
      required int materialId,
      required String slug,
    });
typedef $$ExclusiveProductModuleMaterialVideoModelTableUpdateCompanionBuilder =
    ExclusiveProductModuleMaterialVideoModelCompanion Function({
      Value<int> id,
      Value<int> materialId,
      Value<String> slug,
    });

class $$ExclusiveProductModuleMaterialVideoModelTableFilterComposer
    extends
        Composer<
          _$AppDatabase,
          $ExclusiveProductModuleMaterialVideoModelTable
        > {
  $$ExclusiveProductModuleMaterialVideoModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get materialId => $composableBuilder(
    column: $table.materialId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExclusiveProductModuleMaterialVideoModelTableOrderingComposer
    extends
        Composer<
          _$AppDatabase,
          $ExclusiveProductModuleMaterialVideoModelTable
        > {
  $$ExclusiveProductModuleMaterialVideoModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get materialId => $composableBuilder(
    column: $table.materialId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExclusiveProductModuleMaterialVideoModelTableAnnotationComposer
    extends
        Composer<
          _$AppDatabase,
          $ExclusiveProductModuleMaterialVideoModelTable
        > {
  $$ExclusiveProductModuleMaterialVideoModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get materialId => $composableBuilder(
    column: $table.materialId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);
}

class $$ExclusiveProductModuleMaterialVideoModelTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExclusiveProductModuleMaterialVideoModelTable,
          ExclusiveProductModuleMaterialVideoModelData,
          $$ExclusiveProductModuleMaterialVideoModelTableFilterComposer,
          $$ExclusiveProductModuleMaterialVideoModelTableOrderingComposer,
          $$ExclusiveProductModuleMaterialVideoModelTableAnnotationComposer,
          $$ExclusiveProductModuleMaterialVideoModelTableCreateCompanionBuilder,
          $$ExclusiveProductModuleMaterialVideoModelTableUpdateCompanionBuilder,
          (
            ExclusiveProductModuleMaterialVideoModelData,
            BaseReferences<
              _$AppDatabase,
              $ExclusiveProductModuleMaterialVideoModelTable,
              ExclusiveProductModuleMaterialVideoModelData
            >,
          ),
          ExclusiveProductModuleMaterialVideoModelData,
          PrefetchHooks Function()
        > {
  $$ExclusiveProductModuleMaterialVideoModelTableTableManager(
    _$AppDatabase db,
    $ExclusiveProductModuleMaterialVideoModelTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExclusiveProductModuleMaterialVideoModelTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$ExclusiveProductModuleMaterialVideoModelTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ExclusiveProductModuleMaterialVideoModelTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> materialId = const Value.absent(),
                Value<String> slug = const Value.absent(),
              }) => ExclusiveProductModuleMaterialVideoModelCompanion(
                id: id,
                materialId: materialId,
                slug: slug,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int materialId,
                required String slug,
              }) => ExclusiveProductModuleMaterialVideoModelCompanion.insert(
                id: id,
                materialId: materialId,
                slug: slug,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExclusiveProductModuleMaterialVideoModelTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExclusiveProductModuleMaterialVideoModelTable,
      ExclusiveProductModuleMaterialVideoModelData,
      $$ExclusiveProductModuleMaterialVideoModelTableFilterComposer,
      $$ExclusiveProductModuleMaterialVideoModelTableOrderingComposer,
      $$ExclusiveProductModuleMaterialVideoModelTableAnnotationComposer,
      $$ExclusiveProductModuleMaterialVideoModelTableCreateCompanionBuilder,
      $$ExclusiveProductModuleMaterialVideoModelTableUpdateCompanionBuilder,
      (
        ExclusiveProductModuleMaterialVideoModelData,
        BaseReferences<
          _$AppDatabase,
          $ExclusiveProductModuleMaterialVideoModelTable,
          ExclusiveProductModuleMaterialVideoModelData
        >,
      ),
      ExclusiveProductModuleMaterialVideoModelData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FileSavedTableTableManager get fileSaved =>
      $$FileSavedTableTableManager(_db, _db.fileSaved);
  $$VideoSavedTableTableManager get videoSaved =>
      $$VideoSavedTableTableManager(_db, _db.videoSaved);
  $$GroupsModelTableTableManager get groupsModel =>
      $$GroupsModelTableTableManager(_db, _db.groupsModel);
  $$GroupLessonModelTableTableManager get groupLessonModel =>
      $$GroupLessonModelTableTableManager(_db, _db.groupLessonModel);
  $$GroupLessonVideoModelTableTableManager get groupLessonVideoModel =>
      $$GroupLessonVideoModelTableTableManager(_db, _db.groupLessonVideoModel);
  $$ExclusiveProductModelTableTableManager get exclusiveProductModel =>
      $$ExclusiveProductModelTableTableManager(_db, _db.exclusiveProductModel);
  $$ExclusiveProductModuleModelTableTableManager
  get exclusiveProductModuleModel =>
      $$ExclusiveProductModuleModelTableTableManager(
        _db,
        _db.exclusiveProductModuleModel,
      );
  $$ExclusiveProductModuleMaterialModelTableTableManager
  get exclusiveProductModuleMaterialModel =>
      $$ExclusiveProductModuleMaterialModelTableTableManager(
        _db,
        _db.exclusiveProductModuleMaterialModel,
      );
  $$ExclusiveProductModuleMaterialVideoModelTableTableManager
  get exclusiveProductModuleMaterialVideoModel =>
      $$ExclusiveProductModuleMaterialVideoModelTableTableManager(
        _db,
        _db.exclusiveProductModuleMaterialVideoModel,
      );
}
