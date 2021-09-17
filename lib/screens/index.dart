import 'package:brookmobiles/screens/profile.dart';
import 'package:brookmobiles/screens/search.dart';
import 'package:brookmobiles/screens/service.dart';
import 'package:brookmobiles/widgets/floatingnavbar.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 0;

  List screens = [
    HomeScreen(),
    SearchScreen(),
    ServiceScreen(),
    ProfileScreen(),
  ];

  void updateSelectedPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      extendBody: true,
      bottomNavigationBar: FloatingNavigationBar(
        index: _currentIndex,
        function: updateSelectedPage,
      ),
    );
  }
}
