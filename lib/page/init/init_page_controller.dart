import 'package:state_notifier/state_notifier.dart';

class InitPageState {
  InitPageState({
    this.counter = 0,
    this.error = "",
    this.isError = false,
  });
  int counter;
  String error;
  bool isError;

  InitPageState copyWith({int? counter, String? error, bool? isError}) {
    return InitPageState(
      counter: counter ?? this.counter,
      error: error ?? this.error,
      isError: isError ?? this.isError,
    );
  }
}

class InitPageController extends StateNotifier<InitPageState> {
  InitPageController() : super(InitPageState());

  void increment() {
    state = state.copyWith(counter: state.counter + 1, error: null);
  }

  void error() {
    state = state.copyWith(error: "error!", isError: true);
  }

  void clearError() {
    state = state.copyWith(error: "", isError: false);
  }
}
