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
  List<Map<String, Object>> get tagsWithSelectCheck =>
      throw _privateConstructorUsedError;

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
  $Res call({List<Map<String, Object>> tagsWithSelectCheck});
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
    Object? tagsWithSelectCheck = null,
  }) {
    return _then(_value.copyWith(
      tagsWithSelectCheck: null == tagsWithSelectCheck
          ? _value.tagsWithSelectCheck
          : tagsWithSelectCheck // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object>>,
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
  $Res call({List<Map<String, Object>> tagsWithSelectCheck});
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
    Object? tagsWithSelectCheck = null,
  }) {
    return _then(_$_MainScreenState(
      tagsWithSelectCheck: null == tagsWithSelectCheck
          ? _value._tagsWithSelectCheck
          : tagsWithSelectCheck // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object>>,
    ));
  }
}

/// @nodoc

class _$_MainScreenState implements _MainScreenState {
  const _$_MainScreenState(
      {final List<Map<String, Object>> tagsWithSelectCheck = const []})
      : _tagsWithSelectCheck = tagsWithSelectCheck;

  final List<Map<String, Object>> _tagsWithSelectCheck;
  @override
  @JsonKey()
  List<Map<String, Object>> get tagsWithSelectCheck {
    if (_tagsWithSelectCheck is EqualUnmodifiableListView)
      return _tagsWithSelectCheck;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagsWithSelectCheck);
  }

  @override
  String toString() {
    return 'MainScreenState(tagsWithSelectCheck: $tagsWithSelectCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainScreenState &&
            const DeepCollectionEquality()
                .equals(other._tagsWithSelectCheck, _tagsWithSelectCheck));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tagsWithSelectCheck));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainScreenStateCopyWith<_$_MainScreenState> get copyWith =>
      __$$_MainScreenStateCopyWithImpl<_$_MainScreenState>(this, _$identity);
}

abstract class _MainScreenState implements MainScreenState {
  const factory _MainScreenState(
          {final List<Map<String, Object>> tagsWithSelectCheck}) =
      _$_MainScreenState;

  @override
  List<Map<String, Object>> get tagsWithSelectCheck;
  @override
  @JsonKey(ignore: true)
  _$$_MainScreenStateCopyWith<_$_MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
