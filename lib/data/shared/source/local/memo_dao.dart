import 'package:quick_memo_app_flutter/data/datasources/local/app_database.dart';
import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:realm/realm.dart';

class MemoDao {
  final Realm _realm = AppDatabase().realm;

  List<Memo> getAll() {
    return _realm.all<Memo>().toList();
  }

  Memo? getById(int id) {
    return _realm.find<Memo>(id);
  }

  bool save(Memo memo) {
    try {
      _realm.write(() {
        _realm.add(memo);
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
        _realm.add(memo, update: true);
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
        _realm.delete<Memo>(memo);
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
