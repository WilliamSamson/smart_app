import 'package:flutter/material.dart';

class Themes {
  static ThemeData light = ThemeData(
    colorScheme:
        ColorScheme.fromSwatch(primaryColorDark: Color.fromARGB(255, 9, 68, 10))
            .copyWith(secondary: Color.fromARGB(255, 5, 73, 23)),
  );
  static ThemeData dark = ThemeData(
    colorScheme: ColorScheme.fromSwatch(
            primaryColorDark: Color.fromARGB(255, 16, 44, 92))
        .copyWith(secondary: Color.fromARGB(255, 16, 44, 92)),
  );
}
