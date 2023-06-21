// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainScreenState {
  List<Tag> get tags => throw _privateConstructorUsedError;
  List<Memo> get memos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainScreenStateCopyWith<MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res, MainScreenState>;
  @useResult
  $Res call({List<Tag> tags, List<Memo> memos});
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res, $Val extends MainScreenState>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? memos = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      memos: null == memos
          ? _value.memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainScreenStateCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$_MainScreenStateCopyWith(
          _$_MainScreenState value, $Res Function(_$_MainScreenState) then) =
      __$$_MainScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Tag> tags, List<Memo> memos});
}

/// @nodoc
class __$$_MainScreenStateCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$_MainScreenState>
    implements _$$_MainScreenStateCopyWith<$Res> {
  __$$_MainScreenStateCopyWithImpl(
      _$_MainScreenState _value, $Res Function(_$_MainScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? memos = null,
  }) {
    return _then(_$_MainScreenState(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      memos: null == memos
          ? _value._memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
    ));
  }
}

/// @nodoc

class _$_MainScreenState implements _MainScreenState {
  const _$_MainScreenState(
      {final List<Tag> tags = const [], final List<Memo> memos = const []})
      : _tags = tags,
        _memos = memos;

  final List<Tag> _tags;
  @override
  @JsonKey()
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<Memo> _memos;
  @override
  @JsonKey()
  List<Memo> get memos {
    if (_memos is EqualUnmodifiableListView) return _memos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memos);
  }

  @override
  String toString() {
    return 'MainScreenState(tags: $tags, memos: $memos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainScreenState &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._memos, _memos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_memos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainScreenStateCopyWith<_$_MainScreenState> get copyWith =>
      __$$_MainScreenStateCopyWithImpl<_$_MainScreenState>(this, _$identity);
}

abstract class _MainScreenState implements MainScreenState {
  const factory _MainScreenState(
      {final List<Tag> tags, final List<Memo> memos}) = _$_MainScreenState;

  @override
  List<Tag> get tags;
  @override
  List<Memo> get memos;
  @override
  @JsonKey(ignore: true)
  _$$_MainScreenStateCopyWith<_$_MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
