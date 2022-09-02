import 'package:flutter/material.dart';
import 'package:Nixon/Apps/Video%20player/splash_screen.dart';

class MyApp7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Splash(),
    );
  }
}

