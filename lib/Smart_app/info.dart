import 'package:flutter/material.dart';
import '../Screens/home1.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage('images/sicon.jpg'),
        ),
      ),
      child: AlertDialog(
        backgroundColor: Colors.transparent,
        content: Text(
          "Welcome to Nixon,a multi app platform that provides you access to multiple apps in one.",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 4, 50, 4)),
            ),
            child: Text(
              "Continue",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 188, 201, 195),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
