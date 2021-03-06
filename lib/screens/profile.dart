import 'package:brookmobiles/constants/icons.dart';
import 'package:brookmobiles/custom_shape.dart';
import 'package:brookmobiles/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String imageURL =
      'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80';

  static const routes = [
    '/orders',
    '/services',
    '/cart',
    '/wishlist',
    '/profile',
    '/about-us',
    '/settings',
    '/legal',
    '/help',
  ];

  void _goToScreen(BuildContext ctx, int routeIndex) {
    Navigator.pushNamed(ctx, routes[routeIndex]);
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
                      color: Theme.of(context).appBarTheme.backgroundColor,
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
                      routeIndex: 0,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.services,
                      title: 'My Services',
                      function: _goToScreen,
                      routeIndex: 1,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.cart,
                      title: 'My Cart',
                      function: _goToScreen,
                      routeIndex: 2,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.favorites_o,
                      title: 'My Wishlist',
                      function: _goToScreen,
                      routeIndex: 3,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.profile,
                      title: 'My Profile',
                      function: _goToScreen,
                      routeIndex: 4,
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
                      routeIndex: 5,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.settings,
                      title: 'Settings',
                      function: _goToScreen,
                      routeIndex: 6,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.legal,
                      title: 'Legal',
                      function: _goToScreen,
                      routeIndex: 7,
                      isLastItem: false,
                    ),
                    ProfileItem(
                      icon: MyIcons.help,
                      title: 'Help Centre',
                      function: _goToScreen,
                      routeIndex: 8,
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MyIcons.instagram,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MyIcons.facebook,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MyIcons.twitter,
                    size: 20,
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
