import 'package:flutter/material.dart';

abstract class ColorManager {
  const ColorManager._();

  static Color lightPurple = HexColor.fromHexColor("#7945FF");
  static Color darkPurple = HexColor.fromHexColor("#5C2DD5");
  static Color red = HexColor.fromHexColor("#FD6687");
  static Color yellow = HexColor.fromHexColor("#FFCE67");
  static Color withe = HexColor.fromHexColor("#FFFFFF");
}

extension HexColor on Color {
  static Color fromHexColor(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
