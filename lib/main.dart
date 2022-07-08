import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/provider/count_provider.dart';
import 'package:state_management_provider/provider/favorite_provider.dart';
import 'package:state_management_provider/provider/slider_provider.dart';
import 'package:state_management_provider/screens/add_to_favorite.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteItemProvider()),
      ],
      child: MaterialApp(
        title: 'State Managemnt with Provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AddToFavoriteExample(),
      ),
    );
  }
}
