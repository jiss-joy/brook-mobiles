import 'package:shared_preferences/shared_preferences.dart';

//This class is used to get the saved theme preference of the user.

class DarkThemePreferences {
  static const DARK_THEME = "DARK_THEME_STATUS";

  setDarkTheme(bool value) async {
    //This setter saves the theme preference locally.
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(DARK_THEME, value);
  }

  Future<bool> getTheme() async {
    //This getter fetches the locally saved theme preference.
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(DARK_THEME) ?? false;
  }
}
