import 'package:flutter/cupertino.dart';

class InitPageController with ChangeNotifier {
  int counter = 0;

  void increment() {
    this.counter++;
    notifyListeners();
  }
}
