import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

part 'read_and_edit_screen_state.freezed.dart';

@freezed
class ReadAndEditScreenState with _$ReadAndEditScreenState {
  const factory ReadAndEditScreenState({
    @Default([]) List<Tag> tags,
    @Default([]) List<Memo> memos,
    @Default([]) List<DateTime> dates,
    @Default([]) List<Memo> displayMemos,
  }) = _ReadAndEditScreenState;
}
