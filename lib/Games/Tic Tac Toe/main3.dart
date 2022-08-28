import 'package:flutter/material.dart';
import 'home_screen.dart';

class MyApp3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xff00061a),
        shadowColor: const Color(0xff001456),
        splashColor: const Color(0xff4169e8),
      ),
      home: MyHomePage(),
    );
  }
}
