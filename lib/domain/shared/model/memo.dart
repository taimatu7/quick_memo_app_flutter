import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

class Memo {
  final String id;
  final String text;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Tag tag;

  Memo(this.id, this.text, this.createdAt, this.updatedAt, this.tag);
}
