import 'package:Nixon/Apps/Art/main8.dart';
import 'package:Nixon/Apps/BMI/main9.dart';
import 'package:Nixon/Apps/Habit%20App/main5.dart';
import 'package:Nixon/Apps/Note%20pad%20app/main2.dart';
import 'package:Nixon/Apps/Video%20player/splash_screen.dart';
import 'package:Nixon/Games/Hangman/main4.dart';
import 'package:flutter/material.dart';
import '../Games/Tic Tac Toe/main3.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 22, 40, 113),
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(1),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/sicon.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
              ),
            ),
            SizedBox(
              height: 15,
              width: 100,
            ),
            Center(
              child: Card(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 50,
                shadowColor: Colors.black,
                color: Color.fromARGB(255, 17, 19, 110),
                child: SizedBox(
                  width: 300,
                  height: 230,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Apps',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 6, 80, 141),
                          indent: 30,
                          endIndent: 30,
                          thickness: 3,
                          height: 30,
                        ),
                        SizedBox(
                          height: 5,
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
                                backgroundColor:
                                    Color.fromARGB(255, 22, 40, 113),
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
                                backgroundColor:
                                    Color.fromARGB(255, 22, 40, 113),
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
                                backgroundColor:
                                    Color.fromARGB(255, 22, 40, 113),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 27, 145, 88),
                                  width: 3,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              icon: Icon(
                                Icons.play_arrow,
                                color: Color.fromARGB(255, 27, 145, 88),
                              ),
                              label: const Text("Video Player"),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Splash(),
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
                                backgroundColor:
                                    Color.fromARGB(255, 22, 40, 113),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 27, 145, 88),
                                  width: 3,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              icon: Icon(
                                Icons.draw,
                                color: Color.fromARGB(255, 27, 145, 88),
                              ),
                              label: const Text("Draw"),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DrawApp(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 10,
                              width: 10,
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
                            TextButton.icon(
                              style: TextButton.styleFrom(
                                elevation: 15,
                                primary: Colors.white,
                                backgroundColor:
                                    Color.fromARGB(255, 22, 40, 113),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 27, 145, 88),
                                  width: 3,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              icon: Icon(
                                Icons.monitor_weight,
                                color: Color.fromARGB(255, 27, 145, 88),
                              ),
                              label: Text("BMI"),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyApp9(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 50,
                shadowColor: Colors.black,
                color: Color.fromARGB(255, 17, 19, 110),
                child: SizedBox(
                  width: 300,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Games',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 6, 80, 141),
                          indent: 30,
                          endIndent: 30,
                          thickness: 3,
                          height: 30,
                        ),
                        SizedBox(
                          height: 5,
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
                                backgroundColor:
                                    Color.fromARGB(255, 22, 40, 113),
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
                                backgroundColor:
                                    Color.fromARGB(255, 22, 40, 113),
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
                            // TextButton.icon(
                            //   style: TextButton.styleFrom(
                            //     elevation: 15,
                            //     primary: Colors.white,
                            //     backgroundColor:
                            //         Color.fromARGB(255, 22, 40, 113),
                            //     side: BorderSide(
                            //       color: Color.fromARGB(255, 27, 145, 88),
                            //       width: 3,
                            //     ),
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(30),
                            //     ),
                            //   ),
                            //   icon: Icon(
                            //     Icons.tab,
                            //     color: Color.fromARGB(255, 27, 145, 88),
                            //   ),
                            //   label: const Text("Teris"),
                            //   onPressed: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => MyApp5(),
                            //       ),
                            //     );
                            //   },
                            // ),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
