import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';

abstract class MemoRepository {
  List<Memo> getAll();
  Memo? getById(String id);
  bool save(Memo memo);
  bool deleteByMemo(Memo memo);
}
