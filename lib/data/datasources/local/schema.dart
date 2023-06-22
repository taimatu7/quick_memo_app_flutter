import 'package:realm/realm.dart';

part 'schema.g.dart';

@RealmModel()
class _MemoModel {
  @PrimaryKey()
  late ObjectId id;
  late String text;
  late List<_TagModel> tags;
  late DateTime updateAt;
  late DateTime createdAt;
}

@RealmModel()
class _TagModel {
  @PrimaryKey()
  late ObjectId id;
  late String name;
  late DateTime updateAt;
  late DateTime createdAt;
}
