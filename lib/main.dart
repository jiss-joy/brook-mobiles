import 'package:brookmobiles/constants/theme_data.dart';
import 'package:brookmobiles/providers/dark_theme.dart';
import 'package:brookmobiles/screens/index.dart';
import 'package:brookmobiles/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider darkThemeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    // Fetches the saved theme preference.
    darkThemeProvider.darkTheme =
        await darkThemeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //To provide the theme data.
        ChangeNotifierProvider(create: (_) {
          return darkThemeProvider;
        })
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (context, themeData, child) {
          return MaterialApp(
            title: 'Brook Mobiles',
            theme: Styles.themeData(darkThemeProvider.darkTheme, context),
            home: IndexScreen(),
            routes: {
              SettingsScreen.routeName: (ctx) => SettingsScreen(),
            },
          );
        },
      ),
    );
  }
}
