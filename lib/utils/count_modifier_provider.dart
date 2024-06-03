import 'package:counter_app/utils/global_variables.dart';
import 'package:flutter/material.dart';

class CountModifierProvider extends ChangeNotifier {
  int _count = 0;
  int _len = boxData.length;

  int get incrementedCount => _count;

  int get incrementedLen => _len;

  void incrementCount({int n = 1}) {
    _count += n;
    notifyListeners();
  }

  void decrementCount({int n = 1}) {
    _count -= n;
    notifyListeners();
  }

  void resetCount() {
    _count = 0;
    notifyListeners();
  }

  void dynamicListIncrement() {
    if (boxData.length % 2 == 0) {
      _len++;
      boxData.add({_len: Colors.blue.shade200});
    } else {
      _len++;
      boxData.add({_len: Colors.indigo.shade300});
    }
    notifyListeners();
  }

  void dynamicListDecrement() {
    boxData.removeLast();
    _len--;
    notifyListeners();
  }
}
