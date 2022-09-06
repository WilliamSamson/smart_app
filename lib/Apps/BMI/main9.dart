import 'package:Nixon/Apps/BMI/screens/imc_screen.dart';
import 'package:flutter/material.dart';

class MyApp9 extends StatelessWidget {
  const MyApp9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SourceSansPro-Regular',
        // primaryColor: Colors.grey,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        appBarTheme: const AppBarTheme(
          color: Color(0xFFFFFFFF),
        ),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFFDDE2D0),
        ),
      ),
      home: ImcScreen(),
    );
  }
}
