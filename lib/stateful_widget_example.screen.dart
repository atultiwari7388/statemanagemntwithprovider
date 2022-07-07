import 'package:flutter/material.dart';

class StatefulWidgetExampleScreen extends StatefulWidget {
  const StatefulWidgetExampleScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetExampleScreen> createState() =>
      _StatefulWidgetExampleScreenState();
}

class _StatefulWidgetExampleScreenState
    extends State<StatefulWidgetExampleScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              count.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
