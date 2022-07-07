import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count_provider.dart';

class CountExampleUsingProvider extends StatefulWidget {
  const CountExampleUsingProvider({Key? key}) : super(key: key);

  @override
  State<CountExampleUsingProvider> createState() =>
      _CountExampleUsingProviderState();
}

class _CountExampleUsingProviderState extends State<CountExampleUsingProvider> {
  @override
  void initState() {
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("build");
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Consumer<CountProvider>(
              builder: (_, value, child) {
                return Text(
                  value.count.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
