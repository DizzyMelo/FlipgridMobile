import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextStyle {
  static TextStyle title = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    color: Colors.grey[800],
  );
  static TextStyle subtitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.grey[700],
  );

  static TextStyle textfield = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.grey[700],
  );

  static TextStyle paragraph = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.grey[800],
  );

  static const TextStyle link = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.blue,
      decoration: TextDecoration.underline);
}
