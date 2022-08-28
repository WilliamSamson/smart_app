import 'package:flutter/material.dart';

class Themes {
  static ThemeData light = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        .copyWith(secondary: Color.fromARGB(255, 16, 44, 92)),
  );
  static ThemeData dark = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
        .copyWith(secondary: Colors.red),
  );
}
