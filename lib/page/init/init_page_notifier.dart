import 'package:flutter_null_safety/atom/input_text/input_text.dart';
import 'package:flutter_null_safety/repository/post_repository/post_repository.dart';
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
  final ProviderReference ref;

  InitPageNotifier(this.ref) : super(InitPageState()) {
    accountNameController.init = () {
      accountNameController.setValue(state.accountName);
    };
  }

  void onChangedAccountName(String value) {
    state = state.copyWith(accountName: value);
  }

  void resetAccountNameField() {
    state = state.copyWith(accountName: 'reset');
    this.accountNameController.setValue('reset');
  }

  void post() {
    bool accountNameValidResult = this.accountNameController.validate();
    if (accountNameValidResult) {
      print('errorがあります！');
      return;
    }
    this.ref.read(postRepositoryProvider).create(Post(accountName: this.state.accountName));
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
