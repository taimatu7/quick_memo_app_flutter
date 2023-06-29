import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/data/di/source_module.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/memo_repository.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/tag_repository.dart';
import 'package:quick_memo_app_flutter/view_models/read_and_edit/read_and_edit_screen_state.dart';
import 'package:realm/realm.dart';

final readAndEditScreenStateNotifierProvider = StateNotifierProvider
    .autoDispose<ReadAndEditScreenStateNotifier, ReadAndEditScreenState>((ref) {
  final memoRepository = ref.watch(memoRepositoryProvider);
  final tagRepository = ref.watch(tagRepositoryProvider);
  return ReadAndEditScreenStateNotifier(memoRepository, tagRepository);
});

class ReadAndEditScreenStateNotifier
    extends StateNotifier<ReadAndEditScreenState> {
  final MemoRepository _memoRepository;
  final TagRepository _tagRepository;
  ReadAndEditScreenStateNotifier(this._memoRepository, this._tagRepository)
      : super(const ReadAndEditScreenState()) {
    _init();
  }

  void _init() {
    getMemos();
    getMemoDates();
    getAllTags();

    // TODO:testなのでコメントアウト
    // getMemosByDate(DateTime(2023, 6, 22));

    // 初期表示時に直近でメモした日にちのメモを表示する
    getMemosByDate(state.dates.firstOrNull ?? DateTime.now());
  }

  void updateDisplayMemos(DateTime date) {
    getMemos();
    getMemosByDate(date);
  }

  void getMemos() {
    final memos = _memoRepository.getAll();
    state = state.copyWith(memos: memos);
  }

  // 渡された日付以外のメモを除外する
  void getMemosByDate(DateTime date) {
    final displayMemos = state.memos.skipWhile((memo) =>
        !(memo.createdAt.year == date.year &&
            memo.createdAt.month == date.month &&
            memo.createdAt.day == date.day));
    if (displayMemos.firstOrNull != null) {
      final memos = List<Memo>.from(displayMemos);
      state = state.copyWith(displayMemos: memos);
    } else {
      state = state.copyWith(displayMemos: []);
    }
  }

  void getMemoDates() {
    // memosの中からcreatedAtを取り出して、重複を削除して、リストに変換する
    final dates = state.memos
        .map((memo) => DateTime(
            memo.createdAt.year, memo.createdAt.month, memo.createdAt.day))
        .toSet()
        .toList();
    state = state.copyWith(dates: dates);
  }

  Memo saveNewMemo(String text, Tag tag) {
    final memo =
        Memo(ObjectId().hexString, text, DateTime.now(), DateTime.now(), tag);
    return _memoRepository.save(memo);
  }

  Memo updateMemo(Memo memo) {
    final newMemo =
        Memo(memo.id, memo.text, memo.createdAt, DateTime.now(), memo.tag);
    return _memoRepository.save(newMemo);
  }

  void getAllTags() {
    final tagList = _tagRepository.getAll();
    state = state.copyWith(tags: tagList);
  }
}
