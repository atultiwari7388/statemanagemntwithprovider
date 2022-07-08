import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/provider/auth_provider.dart';
import 'package:state_management_provider/provider/count_provider.dart';
import 'package:state_management_provider/provider/favorite_provider.dart';
import 'package:state_management_provider/provider/slider_provider.dart';
import 'package:state_management_provider/provider/theme_switcher_provider.dart';
import 'package:state_management_provider/screens/login_screen.dart';

import 'provider/notifylistener_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final themeSwitcher = Provider.of<ThemeSwitcherProvider>(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteItemProvider()),
        ChangeNotifierProvider(create: (_) => ThemeSwitcherProvider()),
        ChangeNotifierProvider(create: (_) => NotifyListenerProviderExample()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final themeSwitcher = Provider.of<ThemeSwitcherProvider>(context);
          return MaterialApp(
            title: 'State Managemnt with Provider',
            debugShowCheckedModeBanner: false,
            themeMode: themeSwitcher.themeMode,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.teal,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            home: const LoginScreen(),
          );
        },
      ),
    );
  }
}
