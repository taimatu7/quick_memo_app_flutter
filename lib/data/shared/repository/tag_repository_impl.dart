import 'package:quick_memo_app_flutter/data/shared/source/local/tag_dao.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/tag_repository.dart';

class TagRepositoryImpl implements TagRepository {
  TagRepositoryImpl();
  final _tagDao = TagDao();

  @override
  List<Tag> getAll() {
    return _tagDao.getAll();
  }

  @override
  Tag? getById(String id) {
    return _tagDao.getById(id);
  }

  @override
  bool save(Tag tag) {
    return _tagDao.save(tag);
  }

  @override
  bool deleteByTag(Tag tag) {
    return _tagDao.deleteByTag(tag);
  }
}
