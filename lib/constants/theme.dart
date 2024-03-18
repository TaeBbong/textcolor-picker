import 'package:flutter/material.dart';

ThemeData initThemeData({required Brightness brightness}) {
  if (brightness == Brightness.light) {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: Colors.blue,
        secondary: Colors.pink,
      ),
    );
  } else {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: Colors.black87,
        secondary: Colors.pink,
      ),
    );
  }
}
