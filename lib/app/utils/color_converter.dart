import 'package:flutter/material.dart';

class ColorConverter {
  static List<double> colorToHSL(Color color) {
    double r = color.red / 255.0;
    double g = color.green / 255.0;
    double b = color.blue / 255.0;

    double max = [r, g, b].reduce((a, b) => a > b ? a : b);
    double min = [r, g, b].reduce((a, b) => a < b ? a : b);

    double h = 0.0, s, l;
    l = (max + min) / 2;

    if (max == min) {
      h = s = 0; // achromatic
    } else {
      double d = max - min;
      s = l > 0.5 ? d / (2.0 - max - min) : d / (max + min);
      if (max == r) {
        h = (g - b) / d + (g < b ? 6 : 0);
      } else if (max == g) {
        h = (b - r) / d + 2;
      } else if (max == b) {
        h = (r - g) / d + 4;
      }
      h /= 6;
    }

    return [h * 360, s * 100, l * 100];
  }

  static HSLColor listToHSLColor(List<double> hsl) {
    return HSLColor.fromAHSL(1.0, hsl[0], hsl[1] / 100, hsl[2] / 100);
  }
}
