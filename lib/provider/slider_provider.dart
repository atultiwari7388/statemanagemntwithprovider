import 'package:flutter/widgets.dart';

class SliderProvider with ChangeNotifier {
  double _value = 1.0;
  double get value => _value;

  void setValue(double newValue) {
    _value = newValue;
    notifyListeners();
  }
}
