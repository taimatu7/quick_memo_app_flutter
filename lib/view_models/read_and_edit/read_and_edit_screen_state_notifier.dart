import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/data/di/source_module.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/memo_repository.dart';
import 'package:quick_memo_app_flutter/view_models/read_and_edit/read_and_edit_screen_state.dart';
import 'package:realm/realm.dart';

final readAndEditScreenStateNotifierProvider = StateNotifierProvider
    .autoDispose<ReadAndEditScreenStateNotifier, ReadAndEditScreenState>((ref) {
  final memoRepository = ref.watch(memoRepositoryProvider);
  return ReadAndEditScreenStateNotifier(memoRepository);
});

class ReadAndEditScreenStateNotifier
    extends StateNotifier<ReadAndEditScreenState> {
  final MemoRepository _memoRepository;
  ReadAndEditScreenStateNotifier(this._memoRepository)
      : super(const ReadAndEditScreenState()) {
    _init();
  }

  void _init() {
    getMemos();
    getMemoDates();

    // test
    getMemosByDate(DateTime(2023, 6, 22));
  }

  void getMemos() {
    final memos = _memoRepository.getAll();
    state = state.copyWith(memos: memos);
  }

  void getMemosByDate(DateTime date) {
    final displayMemos = state.memos.map((memo) {
      if (memo.createdAt.year == date.year &&
          memo.createdAt.month == date.month &&
          memo.createdAt.day == date.day) {
        return memo;
      }
    });
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

  bool saveMemo(String text, List<Tag> tags) {
    final memo =
        Memo(ObjectId().hexString, text, DateTime.now(), DateTime.now(), tags);
    return _memoRepository.save(memo);
  }
}
