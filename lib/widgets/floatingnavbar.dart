import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';

class FloatingNavigationBar extends StatelessWidget {
  final int index;
  final Function function;

  FloatingNavigationBar({
    required this.index,
    required this.function,
  });

  Widget build(BuildContext context) {
    return FloatingNavbar(
      borderRadius: 50,
      itemBorderRadius: 50,
      selectedItemColor: Colors.amber,
      selectedBackgroundColor: Colors.black,
      items: [
        FloatingNavbarItem(
          icon: FontAwesome.home,
          // icon: Icons.home,
          title: "Home",
        ),
        FloatingNavbarItem(
          icon: MfgLabs.search,
          title: "Search",
        ),
        FloatingNavbarItem(
          icon: FontAwesome5.tools,
          title: "Service",
        ),
        FloatingNavbarItem(
          icon: FontAwesome.user,
          title: "Profile",
        ),
      ],
      margin: EdgeInsets.all(20),
      unselectedItemColor: Colors.grey,
      elevation: 30,
      iconSize: 20,
      currentIndex: index,
      onTap: (int index) {
        function(index);
      },
    );
  }
}
