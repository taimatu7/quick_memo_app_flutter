import 'package:realm/realm.dart';

part 'schema.g.dart';

@RealmModel()
class _Memo {
  @PrimaryKey()
  late ObjectId id;
  late String text;
  late List<int> tags;
  late DateTime updateAt;
  late DateTime createdAt;
}

@RealmModel()
class _Tag {
  @PrimaryKey()
  late ObjectId id;
  late String name;
  late DateTime updateAt;
  late DateTime createdAt;
}
