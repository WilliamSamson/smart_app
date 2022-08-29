import 'package:Smart_app/Games/Hangman/Screens/home.dart';
import "package:flutter/material.dart";

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 27, 37, 67),
          Color.fromARGB(255, 1, 13, 94)
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(0, 235, 222, 222),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  child: Image.asset(
                    'images/gallow.png',
                    height: 300,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "HangMan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 130,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext build) {
                        return Home2();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 11, 40, 127),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Text("Start",
                      style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w900)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
