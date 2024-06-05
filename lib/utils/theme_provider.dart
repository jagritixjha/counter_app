import 'dart:developer';

import 'package:counter_app/utils/global_variables.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;

  // ThemeData get currentTheme => _isDark ? darkTheme : lightTheme;

  bool get isDark => _isDark;

  void changeTheme() {
    _isDark = !_isDark;
    themeVar = _isDark;
    log(_isDark.toString());
    notifyListeners();
  }
}

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 34,
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w500,
      fontSize: 34,
    ),
  ),
);
