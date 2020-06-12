import 'package:flutter/material.dart';

class HexColor extends Color {
  HexColor({
    @required final String hexColor,
  }) : super(_getColorFromHex(hexColor: hexColor));

  static int _getColorFromHex({String hexColor}) {
    if (hexColor.length == 6)
      hexColor = "FF" + hexColor;
    return int.parse(hexColor, radix: 16);
  }
}