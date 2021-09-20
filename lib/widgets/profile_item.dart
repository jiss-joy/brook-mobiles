import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function function;

  ProfileItem({
    required this.icon,
    required this.title,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: Colors.black,
          ),
          title: Text(title),
          onTap: () {
            function();
          },
        ),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 2,
          indent: 10,
          endIndent: 10,
          height: 2,
        ),
      ],
    );
  }
}
