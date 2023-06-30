import 'package:quick_memo_app_flutter/data/datasources/local/app_database.dart';
import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/utils/mappers/memo_mapper.dart';
import 'package:quick_memo_app_flutter/utils/mappers/tag_mapper.dart';
import 'package:realm/realm.dart';

class MemoDao {
  final Realm _realm = AppDatabase().realm;

  List<Memo> getAll() {
    return _realm
        .all<MemoModel>()
        .map((e) => MemoMapper.toDomainModel(e))
        .toList();
  }

  Memo? getById(String id) {
    final memo = _realm.find<MemoModel>(ObjectId.fromHexString(id));
    return memo != null ? MemoMapper.toDomainModel(memo) : null;
  }

  Memo save(Memo memo) {
    try {
      _realm.write(() {
        _realm.add(MemoMapper.toDataModel(memo), update: true);
      });
      return memo;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  bool updateMemosToNottingTagByTag(Tag tag) {
    // タグに一致するメモをすべて取得する
    final memos =
        _realm.all<MemoModel>().query("tag.name == '${tag.name}'").toList();
    // 取得したメモのタグをタグ無しに変更する
    final nottingTag = TagMapper.toDomainModel(_realm.find<TagModel>("タグなし")!);
    for (var i = 0; i < memos.length; i++) {
      final memo = MemoMapper.toDomainModel(memos[i]);
      final updatedMemo =
          Memo(memo.id, memo.text, memo.createdAt, DateTime.now(), nottingTag);
      try {
        _realm.write(() {
          _realm.add(MemoMapper.toDataModel(updatedMemo), update: true);
        });
      } catch (e) {
        print(e);
        throw Exception(e);
      }
    }
    return true;
  }

  bool deleteByMemo(Memo memo) {
    try {
      _realm.write(() {
        final targetMemo =
            _realm.find<MemoModel>(ObjectId.fromHexString(memo.id));
        _realm.delete<MemoModel>(targetMemo!);
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
