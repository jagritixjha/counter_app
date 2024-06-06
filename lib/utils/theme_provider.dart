import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  // bool _isDark = false;
  late ThemeData _selectedTheme;
  late SharedPreferences pref;

  ThemeProvider({bool isDark = false}) {
    _selectedTheme = isDark ? darkTheme : lightTheme;
  }

  ThemeData get getTheme => _selectedTheme;

  Future<void> changeTheme() async {
    // _isDark = !_isDark;
    pref = await SharedPreferences.getInstance();
    // log(_isDark.toString());
    if (_selectedTheme == darkTheme) {
      _selectedTheme = lightTheme;
      await pref.setBool('isLight', true);
    } else {
      _selectedTheme = darkTheme;
      await pref.setBool('isDark', false);
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
