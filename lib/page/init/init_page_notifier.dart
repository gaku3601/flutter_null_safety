import 'package:flutter_null_safety/atom/input_text/input_text.dart';
import 'package:flutter_null_safety/util/validatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'init_page_notifier.freezed.dart';

@freezed
abstract class InitPageState with _$InitPageState {
  const factory InitPageState({
    @Default('account初期値') String accountName,
  }) = _InitPageState;
}

class InitPageNotifier extends StateNotifier<InitPageState> {
  InputTextController accountNameController = InputTextController(validator: AccountNameValidator());

  InitPageNotifier() : super(InitPageState()) {
    accountNameController.init = () {
      accountNameController.setValue('val');
    };
  }

  void onChangedAccountName(String value) {
    state = state.copyWith(accountName: value);
  }

  void resetAccountNameField() {
    this.accountNameController.setValue('reset');
  }

  void post() {
    bool accountNameValidResult = this.accountNameController.validate();
    if (accountNameValidResult) {
      print('errorがあります！');
      return;
    }
    print('accountName: ${state.accountName}');
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
