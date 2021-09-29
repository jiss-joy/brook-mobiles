import 'package:brookmobiles/dark_theme_preference.dart';
import 'package:flutter/material.dart';

// This class is the provider class for dark theme.
// It sets the theme as per the saved user preferences.
// It also changes the theme preference.

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreferences darkThemePreferences = DarkThemePreferences();

  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreferences.setDarkTheme(value);
    notifyListeners();
  }
}
