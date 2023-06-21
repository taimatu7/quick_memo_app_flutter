import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';

abstract class MemoRepository {
  List<Memo> getAll();
  Memo? getById(int id);
  bool save(Memo memo);
  bool deleteByMemo(Memo memo);
}
