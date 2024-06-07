import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _selectedTheme;
  late SharedPreferences pref;

  ThemeProvider({bool isDark = false}) {
    _selectedTheme = isDark ? darkTheme : lightTheme;
  }

  ThemeData get getTheme => _selectedTheme;

  Future<void> toggleTheme() async {
    pref = await SharedPreferences.getInstance();
    if (_selectedTheme == darkTheme) {
      _selectedTheme = lightTheme;
      await pref.setBool('isDark', false);
    } else {
      _selectedTheme = darkTheme;
      await pref.setBool('isDark', true);
    }
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
