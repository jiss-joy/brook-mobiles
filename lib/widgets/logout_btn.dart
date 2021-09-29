import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            side: BorderSide(
              color: Colors.red,
            ),
          ),
          label: Text(
            'Logout',
            style: TextStyle(color: Colors.red),
          ),
          icon: Icon(Icons.logout, color: Colors.red),
        ),
      ),
    );
  }
}
