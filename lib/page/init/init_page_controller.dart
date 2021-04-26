import 'package:flutter/cupertino.dart';
import 'package:flutter_null_safety/atom/input_text/input_text.dart';
import 'package:flutter_null_safety/atom/input_textarea/input_textarea.dart';
import 'package:flutter_null_safety/util/validatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'init_page_controller.freezed.dart';

@freezed
abstract class InitPageState with _$InitPageState {
  const factory InitPageState({
    @Default('account初期値') String accountName,
    @Default('comment初期値') String comment,
  }) = _InitPageState;
}

class InitPageController extends StateNotifier<InitPageState> {
  GlobalKey<InputTextState> accountName = GlobalKey<InputTextState>();
  late InputTextareaController commentController;

  InitPageController() : super(InitPageState()) {
    this.commentController = InputTextareaController(
      validator: CommentValidator(),
      isAutoValidation: true,
      onChanged: this.onChangedComment,
    )..setTextField(state.comment);
  }

  void changeComment() {
    this.commentController.setTextField('change comment!');
  }

  void onChangedAccountName(String value) {
    state = state.copyWith(accountName: value);
  }

  void onChangedComment(String value) {
    state = state.copyWith(comment: value);
  }

  void post() {
    bool accountNameValidResult = this.accountName.currentState!.validate();
    bool commentValidResult = this.commentController.validate();
    if (accountNameValidResult || commentValidResult) {
      print('errorがあります！');
      return;
    }
    print('accountName: ${state.accountName}, comment: ${this.commentController.state.value}');
    print('posted!');
  }
}

class AccountNameValidator implements Validatable {
  @override
  String? validate(String value) {
    if (value.isEmpty) {
      return '値を入力してください！';
    }
    return null;
  }
}

class CommentValidator implements Validatable {
  @override
  String? validate(String value) {
    if (value.isEmpty) {
      return '値を入力してください！';
    }
    return null;
  }
}
