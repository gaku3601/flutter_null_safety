// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'input_textarea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InputTextareaStateTearOff {
  const _$InputTextareaStateTearOff();

  _InputTextareaState call(
      {String value = '',
      String? errorMessage,
      TextEditingController? textEditingController}) {
    return _InputTextareaState(
      value: value,
      errorMessage: errorMessage,
      textEditingController: textEditingController,
    );
  }
}

/// @nodoc
const $InputTextareaState = _$InputTextareaStateTearOff();

/// @nodoc
mixin _$InputTextareaState {
  String get value => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  TextEditingController? get textEditingController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputTextareaStateCopyWith<InputTextareaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputTextareaStateCopyWith<$Res> {
  factory $InputTextareaStateCopyWith(
          InputTextareaState value, $Res Function(InputTextareaState) then) =
      _$InputTextareaStateCopyWithImpl<$Res>;
  $Res call(
      {String value,
      String? errorMessage,
      TextEditingController? textEditingController});
}

/// @nodoc
class _$InputTextareaStateCopyWithImpl<$Res>
    implements $InputTextareaStateCopyWith<$Res> {
  _$InputTextareaStateCopyWithImpl(this._value, this._then);

  final InputTextareaState _value;
  // ignore: unused_field
  final $Res Function(InputTextareaState) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? errorMessage = freezed,
    Object? textEditingController = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      textEditingController: textEditingController == freezed
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc
abstract class _$InputTextareaStateCopyWith<$Res>
    implements $InputTextareaStateCopyWith<$Res> {
  factory _$InputTextareaStateCopyWith(
          _InputTextareaState value, $Res Function(_InputTextareaState) then) =
      __$InputTextareaStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String value,
      String? errorMessage,
      TextEditingController? textEditingController});
}

/// @nodoc
class __$InputTextareaStateCopyWithImpl<$Res>
    extends _$InputTextareaStateCopyWithImpl<$Res>
    implements _$InputTextareaStateCopyWith<$Res> {
  __$InputTextareaStateCopyWithImpl(
      _InputTextareaState _value, $Res Function(_InputTextareaState) _then)
      : super(_value, (v) => _then(v as _InputTextareaState));

  @override
  _InputTextareaState get _value => super._value as _InputTextareaState;

  @override
  $Res call({
    Object? value = freezed,
    Object? errorMessage = freezed,
    Object? textEditingController = freezed,
  }) {
    return _then(_InputTextareaState(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      textEditingController: textEditingController == freezed
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$_InputTextareaState implements _InputTextareaState {
  const _$_InputTextareaState(
      {this.value = '', this.errorMessage, this.textEditingController});

  @JsonKey(defaultValue: '')
  @override
  final String value;
  @override
  final String? errorMessage;
  @override
  final TextEditingController? textEditingController;

  @override
  String toString() {
    return 'InputTextareaState(value: $value, errorMessage: $errorMessage, textEditingController: $textEditingController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InputTextareaState &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.textEditingController, textEditingController) ||
                const DeepCollectionEquality().equals(
                    other.textEditingController, textEditingController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(textEditingController);

  @JsonKey(ignore: true)
  @override
  _$InputTextareaStateCopyWith<_InputTextareaState> get copyWith =>
      __$InputTextareaStateCopyWithImpl<_InputTextareaState>(this, _$identity);
}

abstract class _InputTextareaState implements InputTextareaState {
  const factory _InputTextareaState(
      {String value,
      String? errorMessage,
      TextEditingController? textEditingController}) = _$_InputTextareaState;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  TextEditingController? get textEditingController =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InputTextareaStateCopyWith<_InputTextareaState> get copyWith =>
      throw _privateConstructorUsedError;
}
