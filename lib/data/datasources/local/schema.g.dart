// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class MemoModel extends _MemoModel
    with RealmEntity, RealmObjectBase, RealmObject {
  MemoModel(
    ObjectId id,
    String text,
    DateTime updateAt,
    DateTime createdAt, {
    TagModel? tag,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'text', text);
    RealmObjectBase.set(this, 'tag', tag);
    RealmObjectBase.set(this, 'updateAt', updateAt);
    RealmObjectBase.set(this, 'createdAt', createdAt);
  }

  MemoModel._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get text => RealmObjectBase.get<String>(this, 'text') as String;
  @override
  set text(String value) => RealmObjectBase.set(this, 'text', value);

  @override
  TagModel? get tag => RealmObjectBase.get<TagModel>(this, 'tag') as TagModel?;
  @override
  set tag(covariant TagModel? value) => RealmObjectBase.set(this, 'tag', value);

  @override
  DateTime get updateAt =>
      RealmObjectBase.get<DateTime>(this, 'updateAt') as DateTime;
  @override
  set updateAt(DateTime value) => RealmObjectBase.set(this, 'updateAt', value);

  @override
  DateTime get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'createdAt') as DateTime;
  @override
  set createdAt(DateTime value) =>
      RealmObjectBase.set(this, 'createdAt', value);

  @override
  Stream<RealmObjectChanges<MemoModel>> get changes =>
      RealmObjectBase.getChanges<MemoModel>(this);

  @override
  MemoModel freeze() => RealmObjectBase.freezeObject<MemoModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MemoModel._);
    return const SchemaObject(ObjectType.realmObject, MemoModel, 'MemoModel', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('text', RealmPropertyType.string),
      SchemaProperty('tag', RealmPropertyType.object,
          optional: true, linkTarget: 'TagModel'),
      SchemaProperty('updateAt', RealmPropertyType.timestamp),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
    ]);
  }
}

class TagModel extends _TagModel
    with RealmEntity, RealmObjectBase, RealmObject {
  TagModel(
    String name,
    int color,
    DateTime updateAt,
    DateTime createdAt,
  ) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'color', color);
    RealmObjectBase.set(this, 'updateAt', updateAt);
    RealmObjectBase.set(this, 'createdAt', createdAt);
  }

  TagModel._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  int get color => RealmObjectBase.get<int>(this, 'color') as int;
  @override
  set color(int value) => RealmObjectBase.set(this, 'color', value);

  @override
  DateTime get updateAt =>
      RealmObjectBase.get<DateTime>(this, 'updateAt') as DateTime;
  @override
  set updateAt(DateTime value) => RealmObjectBase.set(this, 'updateAt', value);

  @override
  DateTime get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'createdAt') as DateTime;
  @override
  set createdAt(DateTime value) =>
      RealmObjectBase.set(this, 'createdAt', value);

  @override
  Stream<RealmObjectChanges<TagModel>> get changes =>
      RealmObjectBase.getChanges<TagModel>(this);

  @override
  TagModel freeze() => RealmObjectBase.freezeObject<TagModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(TagModel._);
    return const SchemaObject(ObjectType.realmObject, TagModel, 'TagModel', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('color', RealmPropertyType.int),
      SchemaProperty('updateAt', RealmPropertyType.timestamp),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
    ]);
  }
}
