import 'package:flutter/material.dart';
import 'package:smart_app/Screens/notepad.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Menu',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              left: 16.0,
            ),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              elevation: 15,
              primary: Colors.white,
              backgroundColor: Colors.blueGrey,
              side: const BorderSide(color: Colors.greenAccent, width: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            icon: const Icon(Icons.book),
            label: const Text("Notepad"),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Notepad(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



/*const Padding(
        padding: EdgeInsets.only(
          top: 16.0,
        ),
      ),*/