import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';

part 'main_screen_state.freezed.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default([]) List<Tag> tags,
    @Default([]) List<Memo> memos,
  }) = _MainScreenState;
}
