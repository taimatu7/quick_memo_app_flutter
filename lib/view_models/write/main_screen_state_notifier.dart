import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/data/di/source_module.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/memo_repository.dart';
import 'package:quick_memo_app_flutter/view_models/write/main_screen_state.dart';
import 'package:realm/realm.dart';

final mainScreenStateNotifierProvier =
    StateNotifierProvider.autoDispose<MainScreenStateNotifier, MainScreenState>(
  (ref) => MainScreenStateNotifier(ref.read(memoRepositoryProvider)),
);

class MainScreenStateNotifier extends StateNotifier<MainScreenState> {
  final MemoRepository _memoRepository;
  MainScreenStateNotifier(this._memoRepository)
      : super(const MainScreenState());

  List<Memo> getMemos() {
    return _memoRepository.getAll();
  }

  bool saveMemo(String text, List<Tag> tags) {
    final memo =
        Memo(ObjectId().hexString, text, DateTime.now(), DateTime.now(), tags);
    return _memoRepository.save(memo);
  }

  // TODO: repositoryを作成してから実装する
  // List<TagModel> getTags() {
  //   return _memoRepository.getAllTags();
  // }
}
