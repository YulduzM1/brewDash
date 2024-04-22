import 'package:flutter/material.dart';
import 'package:brew_dash_app/themes/dark_mode.dart';
import 'package:brew_dash_app/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == Icons.light_mode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}