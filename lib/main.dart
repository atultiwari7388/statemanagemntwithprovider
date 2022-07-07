import 'package:flutter/material.dart';
import 'package:state_management_provider/state_management_example.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Managemnt with Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StateManagementExampleScreen(),
    );
  }
}
