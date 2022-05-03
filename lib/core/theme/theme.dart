import 'package:flutter/material.dart';

class FlipgridTheme {
  static final ColorScheme _colorScheme = ColorScheme.light(
    brightness: Brightness.light,
    primary: Colors.deepOrange,
    onPrimary: Colors.deepOrange,
    secondary: Colors.grey[700]!,
    onSecondary: Colors.grey[700]!,
    error: Colors.red,
    onError: Colors.red,
    background: Colors.white,
    onBackground: Colors.white,
    surface: Colors.white,
    onSurface: Colors.white,
  );

  static final light = ThemeData(
    primaryColor: Colors.deepOrange,
    primaryColorDark: const Color(0xFFFF0000),
    colorScheme: _colorScheme,
  );
}
