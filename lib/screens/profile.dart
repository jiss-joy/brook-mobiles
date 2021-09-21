import 'package:brookmobiles/consts/icons.dart';
import 'package:brookmobiles/custom_shape.dart';
import 'package:brookmobiles/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String imageURL =
      'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80';

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
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipPath(
                    clipper: CustomShape(),
                    child: Container(
                      color: Color(0XFFFFF6E3),
                      height: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 1.0,
                              ),
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(imageURL),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Violet Beckam',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('+91-1234567890'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('violetbeckam@gamil.com'),
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: Column(
                  children: [
                    ProfileItem(
                      icon: MyIcons.orders,
                      title: 'My Orders',
                      function: _goToScreen,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.services,
                      title: 'My Services',
                      function: _goToScreen,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.cart,
                      title: 'My Cart',
                      function: _goToScreen,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.favorites_o,
                      title: 'My Wishlist',
                      function: _goToScreen,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.profile,
                      title: 'My Profile',
                      function: _goToScreen,
                      isLastItem: true,
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 25),
                child: Column(
                  children: [
                    ProfileItem(
                      icon: MyIcons.about,
                      title: 'About Us',
                      function: _goToScreen,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.settings,
                      title: 'Settings',
                      function: _goToScreen,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.legal,
                      title: 'Legal',
                      function: _goToScreen,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.help,
                      title: 'Help Centre',
                      function: _goToScreen,
                      isLastItem: true,
                    ),
                  ],
                ),
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
