import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  int get counter => this._counter;

  void increment() {
    this._counter++;
    notifyListeners();
  }

  void decrement() {
    this._counter--;
    notifyListeners();
  }
}
