import 'package:brookmobiles/consts/icons.dart';
import 'package:brookmobiles/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  void _goToScreen() {
    print('OK');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: 100,
          ),
          child: Column(
            children: [
              ProfileItem(
                icon: MyIcons.orders,
                title: 'My Orders',
                function: _goToScreen,
              ),
              ProfileItem(
                icon: MyIcons.services,
                title: 'My Services',
                function: _goToScreen,
              ),
              ProfileItem(
                icon: MyIcons.cart,
                title: 'My Cart',
                function: _goToScreen,
              ),
              ProfileItem(
                icon: MyIcons.favorites_o,
                title: 'My Wishlist',
                function: _goToScreen,
              ),
              ProfileItem(
                icon: MyIcons.profile,
                title: 'My Profile',
                function: _goToScreen,
              ),
              ProfileItem(
                icon: MyIcons.settings,
                title: 'Settings',
                function: _goToScreen,
              ),
              ProfileItem(
                icon: MyIcons.legal,
                title: 'Legal',
                function: _goToScreen,
              ),
              ProfileItem(
                icon: MyIcons.help,
                title: 'Help Centre',
                function: _goToScreen,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Brook Mobiles 2021'),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MyIcons.whatsapp,
                    size: 20,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MyIcons.instagram,
                    size: 20,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MyIcons.facebook,
                    size: 20,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MyIcons.twitter,
                    size: 20,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
