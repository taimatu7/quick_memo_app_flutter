import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:realm/realm.dart';

class TagMapper {
  static TagModel toDataModel(Tag tag) {
    return TagModel(
      ObjectId.fromHexString(tag.id),
      tag.name,
      tag.updatedAt,
      tag.createdAt,
    );
  }

  static Tag toDomainModel(TagModel model) {
    return Tag(
      model.id.toString(),
      model.name,
      model.createdAt,
      model.updateAt,
    );
  }
}
