import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function function;
  final bool isLastItem;

  ProfileItem({
    required this.icon,
    required this.title,
    required this.function,
    required this.isLastItem,
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
        if (!isLastItem)
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 1,
            indent: 10,
            endIndent: 10,
            height: 2,
          ),
      ],
    );
  }
}
