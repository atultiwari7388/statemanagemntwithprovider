import 'package:flutter/material.dart';

class StatelessWidgetExampleScreen extends StatelessWidget {
  StatelessWidgetExampleScreen({Key? key}) : super(key: key);

  int x = 14;
  @override
  Widget build(BuildContext context) {
    print("build");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider State Management"),
        elevation: 1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                x.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
          // setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
