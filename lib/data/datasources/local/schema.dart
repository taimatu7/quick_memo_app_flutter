import 'package:realm/realm.dart';

part 'schema.g.dart';

@RealmModel()
class _MemoModel {
  @PrimaryKey()
  late ObjectId id;
  late String text;
  late _TagModel? tag;
  late DateTime updateAt;
  late DateTime createdAt;
}

@RealmModel()
class _TagModel {
  @PrimaryKey()
  late String name;
  late int color;
  late DateTime updateAt;
  late DateTime createdAt;
}
