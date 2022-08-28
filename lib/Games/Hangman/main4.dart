import 'package:flutter/material.dart';
import 'package:Smart_app/Games/Hangman/Screens/home.dart';
import 'package:Smart_app/Games/Hangman/Screens/menu.dart';

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
        return Home();
      }),
    },
  );
  }
}
