// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_and_edit_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReadAndEditScreenState {
  List<Tag> get tags => throw _privateConstructorUsedError;
  List<Memo> get memos => throw _privateConstructorUsedError;
  List<DateTime> get dates => throw _privateConstructorUsedError;
  List<Memo> get displayMemos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReadAndEditScreenStateCopyWith<ReadAndEditScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadAndEditScreenStateCopyWith<$Res> {
  factory $ReadAndEditScreenStateCopyWith(ReadAndEditScreenState value,
          $Res Function(ReadAndEditScreenState) then) =
      _$ReadAndEditScreenStateCopyWithImpl<$Res, ReadAndEditScreenState>;
  @useResult
  $Res call(
      {List<Tag> tags,
      List<Memo> memos,
      List<DateTime> dates,
      List<Memo> displayMemos});
}

/// @nodoc
class _$ReadAndEditScreenStateCopyWithImpl<$Res,
        $Val extends ReadAndEditScreenState>
    implements $ReadAndEditScreenStateCopyWith<$Res> {
  _$ReadAndEditScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? memos = null,
    Object? dates = null,
    Object? displayMemos = null,
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
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      displayMemos: null == displayMemos
          ? _value.displayMemos
          : displayMemos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReadAndEditScreenStateCopyWith<$Res>
    implements $ReadAndEditScreenStateCopyWith<$Res> {
  factory _$$_ReadAndEditScreenStateCopyWith(_$_ReadAndEditScreenState value,
          $Res Function(_$_ReadAndEditScreenState) then) =
      __$$_ReadAndEditScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Tag> tags,
      List<Memo> memos,
      List<DateTime> dates,
      List<Memo> displayMemos});
}

/// @nodoc
class __$$_ReadAndEditScreenStateCopyWithImpl<$Res>
    extends _$ReadAndEditScreenStateCopyWithImpl<$Res,
        _$_ReadAndEditScreenState>
    implements _$$_ReadAndEditScreenStateCopyWith<$Res> {
  __$$_ReadAndEditScreenStateCopyWithImpl(_$_ReadAndEditScreenState _value,
      $Res Function(_$_ReadAndEditScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? memos = null,
    Object? dates = null,
    Object? displayMemos = null,
  }) {
    return _then(_$_ReadAndEditScreenState(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      memos: null == memos
          ? _value._memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      displayMemos: null == displayMemos
          ? _value._displayMemos
          : displayMemos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
    ));
  }
}

/// @nodoc

class _$_ReadAndEditScreenState implements _ReadAndEditScreenState {
  const _$_ReadAndEditScreenState(
      {final List<Tag> tags = const [],
      final List<Memo> memos = const [],
      final List<DateTime> dates = const [],
      final List<Memo> displayMemos = const []})
      : _tags = tags,
        _memos = memos,
        _dates = dates,
        _displayMemos = displayMemos;

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

  final List<DateTime> _dates;
  @override
  @JsonKey()
  List<DateTime> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  final List<Memo> _displayMemos;
  @override
  @JsonKey()
  List<Memo> get displayMemos {
    if (_displayMemos is EqualUnmodifiableListView) return _displayMemos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayMemos);
  }

  @override
  String toString() {
    return 'ReadAndEditScreenState(tags: $tags, memos: $memos, dates: $dates, displayMemos: $displayMemos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadAndEditScreenState &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._memos, _memos) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality()
                .equals(other._displayMemos, _displayMemos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_memos),
      const DeepCollectionEquality().hash(_dates),
      const DeepCollectionEquality().hash(_displayMemos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadAndEditScreenStateCopyWith<_$_ReadAndEditScreenState> get copyWith =>
      __$$_ReadAndEditScreenStateCopyWithImpl<_$_ReadAndEditScreenState>(
          this, _$identity);
}

abstract class _ReadAndEditScreenState implements ReadAndEditScreenState {
  const factory _ReadAndEditScreenState(
      {final List<Tag> tags,
      final List<Memo> memos,
      final List<DateTime> dates,
      final List<Memo> displayMemos}) = _$_ReadAndEditScreenState;

  @override
  List<Tag> get tags;
  @override
  List<Memo> get memos;
  @override
  List<DateTime> get dates;
  @override
  List<Memo> get displayMemos;
  @override
  @JsonKey(ignore: true)
  _$$_ReadAndEditScreenStateCopyWith<_$_ReadAndEditScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
