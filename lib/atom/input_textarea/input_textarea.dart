/// StateNotifierを利用し外部からcontrollerを渡すパターン
import 'package:flutter/material.dart';
import 'package:flutter_null_safety/util/validatable.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';

part 'input_textarea.freezed.dart';

@freezed
abstract class InputTextareaState with _$InputTextareaState {
  const factory InputTextareaState({
    @Default('') String value,
    String? errorMessage,
    TextEditingController? textEditingController,
  }) = _InputTextareaState;
}

class InputTextareaController extends StateNotifier<InputTextareaState> {
  final Validatable? validator;
  final bool isAutoValidation;
  final void Function(String value) onChanged;
  InputTextareaController({
    this.validator,
    this.isAutoValidation = false,
    void Function(String value)? onChanged,
  })  : this.onChanged = onChanged ?? ((String val) {}),
        super(InputTextareaState());

  // テキストフィールドに値をセットします
  void setTextField(String val) {
    state = state.copyWith(textEditingController: new TextEditingController(text: val));
    this._onChange(val);
  }

  // バリデーションを実施します
  bool validate() {
    state = state.copyWith(errorMessage: this.validator!.validate(state.value));
    return state.errorMessage == null ? false : true;
  }

  // 値の変更
  void _onChange(String value) {
    state = state.copyWith(value: value);
    this.onChanged(state.value);
    if (this.isAutoValidation) {
      validate();
    }
  }
}

class InputTextarea extends StatelessWidget {
  final InputTextareaController controller;
  final String? label;
  InputTextarea({
    InputTextareaController? controller,
    this.label,
  }) : this.controller = controller ?? InputTextareaController();

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<InputTextareaController, InputTextareaState>(
      create: (_) => this.controller,
      builder: (BuildContext context, Widget? _) {
        return TextField(
          controller: context.watch<InputTextareaState>().textEditingController,
          maxLines: 8,
          onChanged: this.controller._onChange,
          decoration: InputDecoration(
            labelText: this.label,
            errorText: context.watch<InputTextareaState>().errorMessage,
          ),
        );
      },
    );
  }
}
