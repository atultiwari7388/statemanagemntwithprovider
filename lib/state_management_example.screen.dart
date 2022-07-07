import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StateManagementExampleScreen extends StatefulWidget {
  const StateManagementExampleScreen({Key? key}) : super(key: key);

  @override
  State<StateManagementExampleScreen> createState() =>
      _StateManagementExampleScreenState();
}

class _StateManagementExampleScreenState
    extends State<StateManagementExampleScreen> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      count++;
      if (kDebugMode) {
        // print(count);
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("build ${count.toString()}");
    }
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()} : ${DateTime.now().second.toString()}",
              style: const TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              count.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
