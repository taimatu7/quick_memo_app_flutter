import 'package:realm/realm.dart';

part 'schema.g.dart';

// 日付のタイムゾーンが設定できなかったのでミリ秒で保存する

@RealmModel()
class _MemoModel {
  @PrimaryKey()
  late ObjectId id;
  late String text;
  late _TagModel? tag;
  late int updateAt;
  late int createdAt;
}

@RealmModel()
class _TagModel {
  @PrimaryKey()
  late String name;
  late int color;
  late int updateAt;
  late int createdAt;
}
