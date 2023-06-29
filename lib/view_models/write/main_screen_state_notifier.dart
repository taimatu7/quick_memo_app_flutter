import 'dart:ffi';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/data/di/source_module.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/memo_repository.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/tag_repository.dart';
import 'package:quick_memo_app_flutter/view_models/write/main_screen_state.dart';
import 'package:realm/realm.dart';

final mainScreenStateNotifierProvier =
    StateNotifierProvider.autoDispose<MainScreenStateNotifier, MainScreenState>(
  (ref) => MainScreenStateNotifier(
      ref.read(memoRepositoryProvider), ref.read(tagRepositoryProvider)),
);

class MainScreenStateNotifier extends StateNotifier<MainScreenState> {
  final MemoRepository _memoRepository;
  final TagRepository _tagRepository;
  MainScreenStateNotifier(this._memoRepository, this._tagRepository)
      : super(const MainScreenState()) {
    _init();
  }

  void _init() {
    createNewEmptyTag();
    getAllTags();
  }

  Memo saveMemo(String text, Tag tag) {
    final memo =
        Memo(ObjectId().hexString, text, DateTime.now(), DateTime.now(), tag);
    // 日付変えてテストする用コード
    // final memo = Memo(ObjectId().hexString, text, DateTime.utc(2023, 6, 22),
    //     DateTime.utc(2023, 6, 22), tag);
    return _memoRepository.save(memo);
  }

  void getAllTags() {
    final List<Tag> taglist = _tagRepository.getAll();
    final tagsWithSelecteCheck = taglist.map((tag) {
      if (tag.name == "タグなし") {
        return {"tag": tag, "isSelected": true};
      } else {
        return {"tag": tag, "isSelected": false};
      }
    }).toList();
    state = state.copyWith(tagsWithSelectCheck: tagsWithSelecteCheck);
  }

  void changeSelectedTag(int newSelectedTagIndex) {
    // 現在選択されているタグを取得する
    final oldSelectedTagIndex = state.tagsWithSelectCheck
        .indexWhere((tag) => tag["isSelected"] as bool);

    // 選択済みのタグと、新たに選択したタグのフラグを変更
    final updatedTags =
        List<Map<String, Object>>.from(state.tagsWithSelectCheck);

    updatedTags[oldSelectedTagIndex]["isSelected"] = false;
    updatedTags[newSelectedTagIndex]["isSelected"] = true;

    state = state.copyWith(tagsWithSelectCheck: updatedTags);
  }

  void createNewEmptyTag() {
    // TODO: 初回のアプリ起動時のみデータを入れるようにする必要がある
    _tagRepository
        .save(Tag("タグなし", 0xFFFFFFFF, DateTime.now(), DateTime.now()));
  }
}
