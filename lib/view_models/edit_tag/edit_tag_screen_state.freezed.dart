// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_tag_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditTagScreenState {
  List<Tag> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTagScreenStateCopyWith<EditTagScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTagScreenStateCopyWith<$Res> {
  factory $EditTagScreenStateCopyWith(
          EditTagScreenState value, $Res Function(EditTagScreenState) then) =
      _$EditTagScreenStateCopyWithImpl<$Res, EditTagScreenState>;
  @useResult
  $Res call({List<Tag> tags});
}

/// @nodoc
class _$EditTagScreenStateCopyWithImpl<$Res, $Val extends EditTagScreenState>
    implements $EditTagScreenStateCopyWith<$Res> {
  _$EditTagScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditTagScreenStateCopyWith<$Res>
    implements $EditTagScreenStateCopyWith<$Res> {
  factory _$$_EditTagScreenStateCopyWith(_$_EditTagScreenState value,
          $Res Function(_$_EditTagScreenState) then) =
      __$$_EditTagScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Tag> tags});
}

/// @nodoc
class __$$_EditTagScreenStateCopyWithImpl<$Res>
    extends _$EditTagScreenStateCopyWithImpl<$Res, _$_EditTagScreenState>
    implements _$$_EditTagScreenStateCopyWith<$Res> {
  __$$_EditTagScreenStateCopyWithImpl(
      _$_EditTagScreenState _value, $Res Function(_$_EditTagScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_$_EditTagScreenState(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc

class _$_EditTagScreenState implements _EditTagScreenState {
  const _$_EditTagScreenState({final List<Tag> tags = const []}) : _tags = tags;

  final List<Tag> _tags;
  @override
  @JsonKey()
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'EditTagScreenState(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTagScreenState &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditTagScreenStateCopyWith<_$_EditTagScreenState> get copyWith =>
      __$$_EditTagScreenStateCopyWithImpl<_$_EditTagScreenState>(
          this, _$identity);
}

abstract class _EditTagScreenState implements EditTagScreenState {
  const factory _EditTagScreenState({final List<Tag> tags}) =
      _$_EditTagScreenState;

  @override
  List<Tag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_EditTagScreenStateCopyWith<_$_EditTagScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
