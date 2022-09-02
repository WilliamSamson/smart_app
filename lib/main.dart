import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'Smart_app/info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/': (context) => MyHomePage()},
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String id = "/MyHome";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 10,
        navigateAfterSeconds: Info(),
        title: Text(
          '-Nixon-',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 2, 3, 40),
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 20,
        loaderColor: Color.fromARGB(255, 22, 79, 27));
  }
}
