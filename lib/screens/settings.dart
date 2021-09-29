import 'package:brookmobiles/constants/icons.dart';
import 'package:brookmobiles/providers/dark_theme.dart';
import 'package:brookmobiles/widgets/language_picker.dart';
import 'package:brookmobiles/widgets/logout_confirmation.dart';
import 'package:brookmobiles/widgets/package_details.dart';
import 'package:brookmobiles/widgets/settings_item.dart';
import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  void showLanguagePicker() {
    //Show bottom sheet to pick language.
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return LanguagePicker();
        });
  }

  void showPackageDetails() {
    //Show bottom sheet to display package details.
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return PackageDetails();
        });
  }

  void showLogoutConfirmation() {
    //Show bottom sheet to confirm log out.
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return LogoutConfirmation();
        });
  }

  @override
  Widget build(BuildContext context) {
    final darkThemeProvider = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      //TODO: Fix Color Combinations.
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              SettingsItem(
                title: 'App Details',
                subtitle: '',
                icon: MyIcons.versionCode,
                function: showPackageDetails,
                isLastItem: false,
              ),
              // SettingsItem(
              //   title: 'User ID',
              //   subtitle: '3o7iGrIJNTUqyjkdP7Qb1gMqHiN2',
              //   icon: MyIcons.userID,
              //   function: () {},
              // ),
              SettingsItem(
                title: 'Change Language',
                subtitle: 'English (UK)',
                icon: MyIcons.language,
                function: showLanguagePicker,
                isLastItem: false,
              ),
              ListTileSwitch(
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).backgroundColor,
                  child: Icon(
                    MyIcons.theme,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                title: Text('Dark Theme'),
                subtitle: Text('Choose between light and dark theme.'),
                value: darkThemeProvider.darkTheme,
                onChanged: (value) {
                  darkThemeProvider.darkTheme = value;
                },
                switchInactiveColor: Theme.of(context).dividerColor,
                switchActiveColor: Theme.of(context).primaryColor,
              ),
              SettingsItem(
                title: 'Logout',
                subtitle: '',
                icon: MyIcons.logout,
                function: showLogoutConfirmation,
                isLastItem: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
