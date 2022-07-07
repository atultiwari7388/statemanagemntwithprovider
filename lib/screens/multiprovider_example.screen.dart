import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/slider_provider.dart';

class MultiProviderExample extends StatefulWidget {
  const MultiProviderExample({Key? key}) : super(key: key);

  @override
  State<MultiProviderExample> createState() => _MultiProviderExampleState();
}

class _MultiProviderExampleState extends State<MultiProviderExample> {
  @override
  Widget build(BuildContext context) {
    // final sliderProvider = Provider.of<SliderProvider>(context, listen: false);
    print("build");
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (_, sliderValue, child) {
            return Slider(
              min: 0,
              max: 1.0,
              value: sliderValue.value,
              onChanged: (newValue) {
                sliderValue.setValue(newValue);
              },
            );
          }),
          Consumer<SliderProvider>(
            builder: (_, sliderValue, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(sliderValue.value),
                      ),
                      child: const Center(
                        child: Text(
                          "Container 1",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(sliderValue.value),
                      ),
                      child: const Center(
                        child: Text(
                          "Container 2",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
