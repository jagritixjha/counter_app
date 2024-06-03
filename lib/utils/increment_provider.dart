import 'package:flutter/foundation.dart';

class CountModifierProvider extends ChangeNotifier {
  int _count = 0;

  int get incrementedCount => _count;

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
}
