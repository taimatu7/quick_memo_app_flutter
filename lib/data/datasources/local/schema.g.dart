// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Memo extends _Memo with RealmEntity, RealmObjectBase, RealmObject {
  Memo(
    ObjectId id,
    String text,
    DateTime updateAt,
    DateTime createdAt, {
    Iterable<int> tags = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'text', text);
    RealmObjectBase.set(this, 'updateAt', updateAt);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set<RealmList<int>>(this, 'tags', RealmList<int>(tags));
  }

  Memo._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get text => RealmObjectBase.get<String>(this, 'text') as String;
  @override
  set text(String value) => RealmObjectBase.set(this, 'text', value);

  @override
  RealmList<int> get tags =>
      RealmObjectBase.get<int>(this, 'tags') as RealmList<int>;
  @override
  set tags(covariant RealmList<int> value) => throw RealmUnsupportedSetError();

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
  Stream<RealmObjectChanges<Memo>> get changes =>
      RealmObjectBase.getChanges<Memo>(this);

  @override
  Memo freeze() => RealmObjectBase.freezeObject<Memo>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Memo._);
    return const SchemaObject(ObjectType.realmObject, Memo, 'Memo', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('text', RealmPropertyType.string),
      SchemaProperty('tags', RealmPropertyType.int,
          collectionType: RealmCollectionType.list),
      SchemaProperty('updateAt', RealmPropertyType.timestamp),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
    ]);
  }
}

class Tag extends _Tag with RealmEntity, RealmObjectBase, RealmObject {
  Tag(
    ObjectId id,
    String name,
    DateTime updateAt,
    DateTime createdAt,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'updateAt', updateAt);
    RealmObjectBase.set(this, 'createdAt', createdAt);
  }

  Tag._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

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
  Stream<RealmObjectChanges<Tag>> get changes =>
      RealmObjectBase.getChanges<Tag>(this);

  @override
  Tag freeze() => RealmObjectBase.freezeObject<Tag>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Tag._);
    return const SchemaObject(ObjectType.realmObject, Tag, 'Tag', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('updateAt', RealmPropertyType.timestamp),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
    ]);
  }
}
