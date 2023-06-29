import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

abstract class TagRepository {
  List<Tag> getAll();
  Tag? getById(String id);
  bool save(Tag tag);
  bool deleteByTag(Tag tag);
}
