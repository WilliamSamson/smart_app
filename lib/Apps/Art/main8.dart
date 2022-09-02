import 'package:Nixon/Apps/Art/draw_screen.dart';
import 'package:flutter/material.dart';


class DrawApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Draw(),
    );
  }
}