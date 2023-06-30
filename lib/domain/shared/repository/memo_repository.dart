import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

abstract class MemoRepository {
  List<Memo> getAll();
  Memo? getById(String id);
  Memo save(Memo memo);
  bool updateMemosToNottingTagByTag(Tag tag);
  bool deleteByMemo(Memo memo);
}
