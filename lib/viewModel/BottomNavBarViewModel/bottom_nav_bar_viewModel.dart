// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BottomNavBarViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}