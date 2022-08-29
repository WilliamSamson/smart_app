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
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 20,
      navigateAfterSeconds: Info(),
      title: Text(
        'Smart App',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 45,
      loaderColor: Color.fromARGB(255, 48, 12, 133),
    );
  }
}
