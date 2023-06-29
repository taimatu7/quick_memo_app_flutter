import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

part 'edit_tag_screen_state.freezed.dart';

@freezed
class EditTagScreenState with _$EditTagScreenState {
  const factory EditTagScreenState({
    @Default([]) List<Tag> tags,
  }) = _EditTagScreenState;
}
