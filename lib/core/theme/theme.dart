import 'package:flutter/material.dart';

class FlipgridTheme {
  static final ColorScheme _colorSchemeLight = ColorScheme.light(
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

  static final ColorScheme _colorSchemeDark = ColorScheme.dark(
    brightness: Brightness.dark,
    primary: Colors.deepOrange,
    onPrimary: Colors.deepOrange,
    secondary: Colors.grey[700]!,
    onSecondary: Colors.grey[700]!,
    error: Colors.red,
    onError: Colors.red,
    background: const Color(0xFF121212),
    onBackground: const Color(0xFF121212),
    surface: const Color(0xFF242424),
    onSurface: const Color(0xFF242424),
  );

  static final light = ThemeData(
    primarySwatch: Colors.deepOrange,
    primaryColor: Colors.deepOrange,
    primaryColorDark: const Color(0xFFFF0000),
    colorScheme: _colorSchemeLight,
    brightness: Brightness.light,
    splashColor: Colors.deepOrange,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        color: Colors.grey[800],
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.grey[700],
        height: 1.1,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.grey[800],
      ),
      caption: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.grey[700],
      ),
      overline: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
      button: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  static final dark = ThemeData(
    primarySwatch: Colors.deepOrange,
    primaryColor: Colors.deepOrange,
    primaryColorDark: const Color(0xFFFF0000),
    colorScheme: _colorSchemeDark,
    brightness: Brightness.dark,
    splashColor: Colors.deepOrange,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        color: Colors.grey[400],
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.grey[500],
        height: 1.1,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.grey[400],
      ),
      caption: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.grey[500],
      ),
      overline: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
      button: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
