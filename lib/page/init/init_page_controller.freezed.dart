// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'init_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitPageStateTearOff {
  const _$InitPageStateTearOff();

  _InitPageState call(
      {String accountName = 'account初期値', String comment = 'comment初期値'}) {
    return _InitPageState(
      accountName: accountName,
      comment: comment,
    );
  }
}

/// @nodoc
const $InitPageState = _$InitPageStateTearOff();

/// @nodoc
mixin _$InitPageState {
  String get accountName => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitPageStateCopyWith<InitPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitPageStateCopyWith<$Res> {
  factory $InitPageStateCopyWith(
          InitPageState value, $Res Function(InitPageState) then) =
      _$InitPageStateCopyWithImpl<$Res>;
  $Res call({String accountName, String comment});
}

/// @nodoc
class _$InitPageStateCopyWithImpl<$Res>
    implements $InitPageStateCopyWith<$Res> {
  _$InitPageStateCopyWithImpl(this._value, this._then);

  final InitPageState _value;
  // ignore: unused_field
  final $Res Function(InitPageState) _then;

  @override
  $Res call({
    Object? accountName = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitPageStateCopyWith<$Res>
    implements $InitPageStateCopyWith<$Res> {
  factory _$InitPageStateCopyWith(
          _InitPageState value, $Res Function(_InitPageState) then) =
      __$InitPageStateCopyWithImpl<$Res>;
  @override
  $Res call({String accountName, String comment});
}

/// @nodoc
class __$InitPageStateCopyWithImpl<$Res>
    extends _$InitPageStateCopyWithImpl<$Res>
    implements _$InitPageStateCopyWith<$Res> {
  __$InitPageStateCopyWithImpl(
      _InitPageState _value, $Res Function(_InitPageState) _then)
      : super(_value, (v) => _then(v as _InitPageState));

  @override
  _InitPageState get _value => super._value as _InitPageState;

  @override
  $Res call({
    Object? accountName = freezed,
    Object? comment = freezed,
  }) {
    return _then(_InitPageState(
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitPageState implements _InitPageState {
  const _$_InitPageState(
      {this.accountName = 'account初期値', this.comment = 'comment初期値'});

  @JsonKey(defaultValue: 'account初期値')
  @override
  final String accountName;
  @JsonKey(defaultValue: 'comment初期値')
  @override
  final String comment;

  @override
  String toString() {
    return 'InitPageState(accountName: $accountName, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitPageState &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(comment);

  @JsonKey(ignore: true)
  @override
  _$InitPageStateCopyWith<_InitPageState> get copyWith =>
      __$InitPageStateCopyWithImpl<_InitPageState>(this, _$identity);
}

abstract class _InitPageState implements InitPageState {
  const factory _InitPageState({String accountName, String comment}) =
      _$_InitPageState;

  @override
  String get accountName => throw _privateConstructorUsedError;
  @override
  String get comment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitPageStateCopyWith<_InitPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
