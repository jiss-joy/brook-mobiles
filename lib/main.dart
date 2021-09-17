import 'package:brookmobiles/screens/home.dart';
import 'package:brookmobiles/screens/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brook Mobiles',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0XFFFFF6E3),
          centerTitle: true,
          elevation: 0,
        ),
        primaryColor: Color(0XFFFFAB00),
        accentColor: Colors.black,
        primaryColorLight: Color(0XFFFFCF6D),
        splashColor: Color(0XFFFFCF6D),
        backgroundColor: Color(0XFFF3F0E9),
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
      ),
      home: IndexScreen(),
      routes: {},
    );
  }
}
