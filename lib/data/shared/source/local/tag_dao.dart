import 'package:quick_memo_app_flutter/data/datasources/local/app_database.dart';
import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/utils/mappers/tag_mapper.dart';
import 'package:realm/realm.dart';

class TagDao {
  final Realm _realm = AppDatabase().realm;

  List<Tag> getAll() {
    return _realm
        .all<TagModel>()
        .map((e) => TagMapper.toDomainModel(e))
        .toList();
  }

  Tag? getById(String id) {
    final tag = _realm.find<TagModel>(id);
    return tag != null ? TagMapper.toDomainModel(tag) : null;
  }

  bool save(Tag tag) {
    try {
      _realm.write(() {
        _realm.add(TagMapper.toDataModel(tag), update: true);
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  bool deleteByTag(Tag tag) {
    try {
      final target = _realm.find<TagModel>(TagMapper.toDataModel(tag).name);
      _realm.write(() {
        _realm.delete<TagModel>(target!);
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
