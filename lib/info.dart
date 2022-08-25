import 'package:flutter/material.dart';
import 'package:smart_app/Screens/home.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text(
          "Welcome to smart app,a multi app  platform that provides you access to multiple apps in one and also helps to save on storage with this light app"),
      actions: <Widget>[
        TextButton(
          child: const Text("Continue"),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
        ),
      ],
    );
  }
}
