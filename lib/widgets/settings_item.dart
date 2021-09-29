import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback function;
  final bool isLastItem;

  SettingsItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.function,
    required this.isLastItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isLastItem)
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 1,
            indent: 10,
            endIndent: 10,
            height: 2,
          ),
        ListTile(
          onTap: function,
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).backgroundColor,
            child: Icon(
              icon,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          title: Text(title),
          subtitle: subtitle.isEmpty ? null : Text(subtitle),
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
