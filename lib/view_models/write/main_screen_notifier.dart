import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:quick_memo_app_flutter/data/di/source_module.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/memo_repository.dart';
import 'package:quick_memo_app_flutter/view_models/write/main_screen_state.dart';
import 'package:realm/realm.dart';

final mainScreenNotifierProvier =
    StateNotifierProvider.autoDispose<MainScreenNotifier, MainScreenState>(
  (ref) => MainScreenNotifier(ref.read(memoRepositoryProvider)),
);

class MainScreenNotifier extends StateNotifier<MainScreenState> {
  final MemoRepository _memoRepository;
  MainScreenNotifier(this._memoRepository) : super(const MainScreenState());

  List<Memo> getMemos() {
    return _memoRepository.getAll();
  }

  bool saveMemo(String text, List<Tag> tags) {
    final memo =
        Memo(ObjectId(), text, DateTime.now(), DateTime.now(), tags: tags);
    return _memoRepository.save(memo);
  }

  // TODO: repositoryを作成してから実装する
  // List<Tag> getTags() {
  //   return _memoRepository.getAllTags();
  // }
}
