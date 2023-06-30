import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/utils/mappers/tag_mapper.dart';
import 'package:realm/realm.dart';

class MemoMapper {
  static MemoModel toDataModel(Memo memo) {
    return MemoModel(
        ObjectId.fromHexString(memo.id),
        memo.text,
        memo.updatedAt.millisecondsSinceEpoch,
        memo.createdAt.millisecondsSinceEpoch,
        tag: TagMapper.toDataModel(memo.tag));
  }

  static Memo toDomainModel(MemoModel model) {
    return Memo(
        model.id.toString(),
        model.text,
        DateTime.fromMillisecondsSinceEpoch(model.createdAt),
        DateTime.fromMillisecondsSinceEpoch(model.updateAt),
        TagMapper.toDomainModel(model.tag!));
  }
}
