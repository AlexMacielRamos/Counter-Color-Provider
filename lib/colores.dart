import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BgColor with ChangeNotifier {
  List<Color> colors = <Color>[
    Colors.grey,
    Colors.black87,
    Colors.red,
    Colors.blue,
    Colors.green
  ];

  //List<Color> get colors => _colors;

  int currentColorIndex = 0;
  //int get index => _currentColorIndex;

  void changeColor(int color) {
    currentColorIndex = color;
    notifyListeners();
  }
}
