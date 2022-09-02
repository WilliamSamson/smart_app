import 'package:flutter/material.dart';
import 'package:Nixon/Games/Hangman/Screens/home.dart';
import 'package:Nixon/Games/Hangman/Screens/select.dart';

class MyApp4 extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: "/",
    routes: {
      "/": ((context) {
        return Menu();
      }
      ),
      "/home": ((context) {
        return Home2();
      }),
    },
  );
  }
}
