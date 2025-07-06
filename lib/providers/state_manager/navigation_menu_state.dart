import 'package:flutter/material.dart';

class NavigationMenuState extends ChangeNotifier {
  int activeIndex = 0;

  void selectActiveMenu(int index) {
    activeIndex = index;
    notifyListeners();
  }
}
