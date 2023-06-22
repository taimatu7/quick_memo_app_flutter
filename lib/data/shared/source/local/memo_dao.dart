import 'package:quick_memo_app_flutter/data/datasources/local/app_database.dart';
import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/utils/mappers/memo_mapper.dart';
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
    final memo = _realm.find<MemoModel>(id);
    return memo != null ? MemoMapper.toDomainModel(memo) : null;
  }

  bool save(Memo memo) {
    try {
      _realm.write(() {
        _realm.add(MemoMapper.toDataModel(memo));
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  bool update(Memo memo) {
    try {
      _realm.write(() {
        _realm.add<MemoModel>(MemoMapper.toDataModel(memo), update: true);
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  bool deleteByMemo(Memo memo) {
    try {
      _realm.write(() {
        _realm.delete<MemoModel>(MemoMapper.toDataModel(memo));
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
