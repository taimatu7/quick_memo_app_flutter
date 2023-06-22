import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

part 'main_screen_state.freezed.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default([]) List<Tag> tags,
    @Default([]) List<Memo> memos,
  }) = _MainScreenState;
}
