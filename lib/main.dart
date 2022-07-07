import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/provider/count_provider.dart';
import 'package:state_management_provider/screens/count_example.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'State Managemnt with Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CountExampleUsingProvider(),
      ),
    );
  }
}
