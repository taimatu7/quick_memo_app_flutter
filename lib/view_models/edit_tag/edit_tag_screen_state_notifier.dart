import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/data/di/source_module.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/tag_repository.dart';
import 'package:quick_memo_app_flutter/view_models/edit_tag/edit_tag_screen_state.dart';
import 'package:realm/realm.dart';

final editTagScreenStateNotifierProvier = StateNotifierProvider.autoDispose<
    EditTagScreenStateNotifier, EditTagScreenState>(
  (ref) => EditTagScreenStateNotifier(ref.read(tagRepositoryProvider)),
);

class EditTagScreenStateNotifier extends StateNotifier<EditTagScreenState> {
  EditTagScreenStateNotifier(this._tagRepository)
      : super(const EditTagScreenState()) {
    _init();
  }
  final TagRepository _tagRepository;

  void _init() {
    getAllTags();
  }

  Tag createNewTag() {
    return Tag("", 0xFF42A5F5, DateTime.now(), DateTime.now());
  }

  bool saveTag(Tag tag) {
    return _tagRepository.save(tag);
  }

  bool deleteTag(Tag tag) {
    return _tagRepository.deleteByTag(tag);
  }

  void getAllTags() {
    List<Tag> tags = _tagRepository.getAll();
    state = state.copyWith(tags: tags);
  }
}
