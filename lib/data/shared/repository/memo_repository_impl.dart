import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:quick_memo_app_flutter/data/shared/source/local/memo_dao.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/memo_repository.dart';

class MemoRepositoryImpl implements MemoRepository {
  MemoRepositoryImpl();
  final _memoDao = MemoDao();

  @override
  List<Memo> getAll() {
    return _memoDao.getAll();
  }

  @override
  Memo? getById(int id) {
    return _memoDao.getById(id);
  }

  @override
  bool save(Memo memo) {
    return _memoDao.save(memo);
  }

  @override
  bool deleteByMemo(Memo memo) {
    return _memoDao.deleteByMemo(memo);
  }
}
