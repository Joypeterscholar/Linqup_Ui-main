import 'package:flutter/material.dart';

class MakeAndSearchStateNav with ChangeNotifier {
  bool _isFirstButtonActive = true;

  bool get isActive => _isFirstButtonActive;

  void togglePage(bool isFirst) {
    _isFirstButtonActive = isFirst;
    notifyListeners();
  }

  set reset(bool value) {
    _isFirstButtonActive = value;
    notifyListeners();
  }
}
