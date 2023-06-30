import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

class TagMapper {
  static TagModel toDataModel(Tag tag) {
    return TagModel(
      tag.name,
      tag.color,
      tag.updatedAt.millisecondsSinceEpoch,
      tag.createdAt.millisecondsSinceEpoch,
    );
  }

  static Tag toDomainModel(TagModel model) {
    return Tag(
      model.name,
      model.color,
      DateTime.fromMillisecondsSinceEpoch(model.createdAt),
      DateTime.fromMillisecondsSinceEpoch(model.updateAt),
    );
  }
}
