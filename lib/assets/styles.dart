import 'package:flutter/material.dart';

class AppStyles {
  static const Color primaryColor = Color.fromRGBO(64, 158, 225, 1);
  
  static const Color color3 = Color(0xFF333333);
  static const Color color6 = Color(0xFF666666);
  static const Color color9 = Color(0xFF999999);

  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;

  static const TextStyle heading1 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16.0,
    color: Colors.black,
  );
}
