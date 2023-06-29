import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:realm/realm.dart';

class TagMapper {
  static TagModel toDataModel(Tag tag) {
    return TagModel(
      tag.name,
      tag.color,
      tag.updatedAt,
      tag.createdAt,
    );
  }

  static Tag toDomainModel(TagModel model) {
    return Tag(
      model.name,
      model.color,
      model.createdAt,
      model.updateAt,
    );
  }
}
