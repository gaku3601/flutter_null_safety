import 'package:flutter/cupertino.dart';
import 'package:flutter_null_safety/atom/input_text.dart';
import 'package:flutter_null_safety/util/validatable.dart';
import 'package:state_notifier/state_notifier.dart';

class InitPageState {
  final String accountName;
  final String email;

  InitPageState({
    this.accountName = '',
    this.email = '',
  });

  InitPageState copyWith({String? accountName, String? email}) {
    return InitPageState(
      accountName: accountName ?? this.accountName,
      email: email ?? this.email,
    );
  }
}

class InitPageController extends StateNotifier<InitPageState> {
  InitPageController() : super(InitPageState());

  GlobalKey<InputTextState> accountName = GlobalKey<InputTextState>();
  GlobalKey<InputTextState> email = GlobalKey<InputTextState>();

  void onChangedAccountName(String value) {
    state = state.copyWith(accountName: value);
  }

  void onChangedEmail(String value) {
    state = state.copyWith(email: value);
  }

  void post() {
    bool accountNameValidResult = this.accountName.currentState!.validate();
    bool emailValidResult = this.email.currentState!.validate();
    if (accountNameValidResult || emailValidResult) {
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

class EmailValidator implements Validatable {
  @override
  String? validate(String value) {
    if (value.isEmpty) {
      return '値を入力してください！';
    }
    return null;
  }
}
