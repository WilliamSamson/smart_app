import 'package:flutter/material.dart';
import '../Screens/home1.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
     AlertDialog(
      content: const Text(
          "Welcome to smart app,a multi app  platform that provides you access to multiple apps in one and also helps to save on storage with this lite app"),
      actions: <Widget>[
        TextButton(
          child: const Text("Continue"),
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
    );
  }
}
