
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolioo_app/shared_preferences/dark_theme_pref.dart';


class ThemeProvider extends ChangeNotifier {

  ThemeMode themeMode = ThemeMode.system;


  bool _isDark = false;
  late ThemePreferences _preferences;
  bool get isDarkMode => _isDark;

  ThemeProvider() {
    _isDark = false;
    _preferences = ThemePreferences();
    getPreferences();
  }

  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}

