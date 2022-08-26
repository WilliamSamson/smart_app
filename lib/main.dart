import 'package:flutter/material.dart';
import 'Smart_app/info.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {


  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Smart App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>  Info(),
            ),
          );
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
