import 'package:flutter/material.dart';

class LanguagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: [
            Text('Choose your desired language'),
            ListTile(
              onTap: () {},
              title: Text('English'),
              subtitle: Text('en'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Malayalam (മലയാളം)'),
              subtitle: Text('ml'),
            ),
          ],
        ),
      ),
    );
  }
}
