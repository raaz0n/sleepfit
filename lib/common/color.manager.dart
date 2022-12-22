import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#ED9728");
  static Color titleText = HexColor.fromHex("#5D5FEF");
  static Color subTitle = HexColor.fromHex("#01041D");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color unTabColor = HexColor.fromHex("#A5A6F6");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
