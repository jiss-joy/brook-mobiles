import 'dart:ui';

import 'package:brookmobiles/constants/colors.dart';
import 'package:flutter/material.dart';

// This class stores all the theme configuration for the application.

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      //Dark Theme
      scaffoldBackgroundColor: isDarkTheme ? MyColors.secondary : Colors.white,
      primaryColor: isDarkTheme ? MyColors.primary : MyColors.primaryMedium,
      primaryColorLight:
          isDarkTheme ? MyColors.primaryLight : MyColors.primaryLight,
      primaryColorDark:
          isDarkTheme ? MyColors.primaryMedium : MyColors.primaryMedium,
      // accentColor: isDarkTheme ? MyColors.primary : MyColors.accentColor,
      backgroundColor:
          isDarkTheme ? MyColors.primary : MyColors.backgroundColor,
      indicatorColor: isDarkTheme ? MyColors.primary : MyColors.primaryMedium,
      hintColor: isDarkTheme ? Colors.grey.shade300 : Colors.grey.shade800,
      highlightColor: isDarkTheme ? MyColors.primary : MyColors.primaryMedium,
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : MyColors.primaryMedium,
      focusColor: isDarkTheme ? MyColors.primary : MyColors.primaryMedium,
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      textSelectionColor: isDarkTheme ? Colors.white : Colors.black,

      //Icon Theme
      iconTheme: IconThemeData(
        color: isDarkTheme ? Colors.white : MyColors.secondary,
      ),

      //App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme ? MyColors.primary : MyColors.primaryLight,
        iconTheme: IconThemeData(
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
        titleTextStyle: TextStyle().copyWith(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
        elevation: 0,
      ),

      //Switch Theme
      switchTheme: SwitchThemeData(),

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: MyColors.secondary,
      ),

      //Text Theme
      textTheme: TextTheme(
        //Raleway-SemiBold
        headline5: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Raleway",
        ),
        //Raleway-Bold
        headline6: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Raleway",
        ),
        //Montserrat-Medium
        subtitle1: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat",
        ),
        //Montserrat-Regular
        bodyText1: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Montserrat",
        ),
        //Montserrat-Thin
        bodyText2: TextStyle(
          fontWeight: FontWeight.w300,
          fontFamily: "Montserrat",
        ),
      ),
    );
  }
}
