import 'package:Smart_app/Apps/Habit%20App/main5.dart';
import 'package:Smart_app/Apps/Note%20pad%20app/main2.dart';
import 'package:Smart_app/Games/Hangman/main4.dart';
import 'package:flutter/material.dart';
import '../Games/Tic Tac Toe/main3.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 22, 40, 113),
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              left: 16.0,
            ),
          ),
          SizedBox(
            height: 15,
            width: 100,
          ),
          Text(
            'Apps',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Divider(
            color: Colors.blue,
            thickness: 3,
            height: 30,
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Row(
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
                  backgroundColor: Color.fromARGB(255, 22, 40, 113),
                  side: BorderSide(
                    color: Color.fromARGB(255, 27, 145, 88),
                    width: 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: const Icon(
                  Icons.book_rounded,
                  color: Color.fromARGB(255, 27, 145, 88),
                ),
                label: const Text("Notepad"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp2(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  elevation: 15,
                  primary: Colors.white,
                  backgroundColor: Color.fromARGB(255, 22, 40, 113),
                  side: BorderSide(
                    color: Color.fromARGB(255, 27, 145, 88),
                    width: 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: Icon(
                  Icons.art_track,
                  color: Color.fromARGB(255, 27, 145, 88),
                ),
                label: const Text("Habit Tracker"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp5(),
                    ),
                  );
                },
              ),
            ],
          ),
          Divider(
            color: Colors.blue,
            thickness: 3,
            height: 30,
          ),
          Text(
            'Games',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Row(
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
                  backgroundColor: Color.fromARGB(255, 22, 40, 113),
                  side: BorderSide(
                    color: Color.fromARGB(255, 27, 145, 88),
                    width: 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: Icon(
                  Icons.cancel,
                  color: Color.fromARGB(255, 27, 145, 88),
                ),
                label: const Text("Tic Tac Toe"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp3(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  elevation: 15,
                  primary: Colors.white,
                  backgroundColor: Color.fromARGB(255, 22, 40, 113),
                  side: BorderSide(
                    color: Color.fromARGB(255, 27, 145, 88),
                    width: 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: Icon(
                  Icons.man,
                  color: Color.fromARGB(255, 27, 145, 88),
                ),
                label: const Text("Hangman puzzle"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp4(),
                    ),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
