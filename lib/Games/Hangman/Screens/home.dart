import 'dart:math';

import 'package:Nixon/Games/Hangman/utilities/game.dart';
import "package:flutter/material.dart";
import 'package:Nixon/Games/Hangman/Screens/Winning.dart';

class Home2 extends StatefulWidget {
  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int Selected_index = 30;
  bool start = true;
  int tries = 10;
  String Selected_word = " ";
  String Display = "";

  List<String> Wrong = [];
  List<String> Correct = [];
  List<String> myletters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];
  int getRandomNumber(i) {
    var rng = Random();
    return rng.nextInt(i);
  }

  void Choose_word() {
    print(Game.words_list);
    Selected_word = Game.words_list[getRandomNumber(Game.words_list.length)];
  }

  String replaceCharAt(String oldString, int index, String newChar) {
    var temp = oldString;
    // dublicate letters
    for (int i = 0; i < Selected_word.length; i++) {
      if (Selected_word[i].toUpperCase() == newChar) {
        temp = temp.substring(0, i) + newChar + temp.substring(i + 1);
      }
    }
    return temp;
  }

  void getDisplay() {
    Choose_word();
    for (int i = 0; i < Selected_word.length; i++) {
      Display += " ";
    }
  }

//  the last things to do :and persone body
  @override
  void initState() {
    // Selected_word = "";
    // Display = "";
    // Correct_word = "";
    getDisplay();
    tries = 10;
    super.initState();
  }

  Widget makeWord(i) {
    return ChooseLetter(i);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 4, 25, 82),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Visibility(
                    visible: tries <= 6, child: Image.asset("images/hang.png")),
                Visibility(
                    visible: tries <= 5, child: Image.asset("images/head.png")),
                Visibility(
                    visible: tries <= 4, child: Image.asset("images/body.png")),
                Visibility(
                    visible: tries <= 3, child: Image.asset("images/la.png")),
                Visibility(
                    visible: tries <= 2, child: Image.asset("images/ra.png")),
                Visibility(
                    visible: tries <= 1, child: Image.asset("images/rl.png")),
                Visibility(
                    visible: tries <= 0, child: Image.asset("images/ll.png")),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Wrap(
                spacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  ...List.generate(Display.length, (index) {
                    var rng = Display[index];
                    return makeWord(rng);
                  })
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
                  // will implement this later to make the last row in center
                  child: GridView.builder(
                    itemCount: 26,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (ctx, index) {
                      if (Wrong.contains(myletters[index])) {
                        return WLetter(myletters[index]);
                      } else if (Correct.contains(myletters[index])) {
                        return RLetter(myletters[index]);
                      } else {
                        return Letter(
                          myletters[index],
                          () {
                            setState(
                              () {
                                if (Selected_index != index) {
                                  Selected_index = index;
                                  // print("i changed here ${Selected_index}");
                                } else {
                                  Selected_index = 30;
                                }
                              },
                            );
                          },
                          Selected_index,
                          index,
                        );
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            if (Selected_index == 30) {
                            } else if (Selected_word.toUpperCase()
                                .contains(myletters[Selected_index])) {
                              Correct.add(myletters[Selected_index]);
                              int temp = Selected_word.toUpperCase()
                                  .indexOf(myletters[Selected_index]);

                              Display = replaceCharAt(
                                  Display, temp, myletters[Selected_index]);

                              if (Display == Selected_word.toUpperCase()) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext build) {
                                      return Winning(Display, true);
                                    },
                                  ),
                                );
                              }
                            } else {
                              Wrong.add(myletters[Selected_index]);
                              tries--;
                              if (tries == 0) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext build) {
                                      return Winning(Selected_word, false);
                                    },
                                  ),
                                );
                              }
                            }
                          },
                        );
                        Selected_index = 30;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 59, 67, 186),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 6),
                        child: Text("Confirm",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w900,
                                fontSize: 15)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 59, 67, 186),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      child: Text(
                        "Lives remaining :${tries}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Letter extends StatefulWidget {
  final String letter;
  VoidCallback myfun;
  int selected;
  int index;

  Letter(String this.letter, VoidCallback this.myfun, int this.selected,
      int this.index);

  @override
  State<Letter> createState() => _LetterState();
}

class _LetterState extends State<Letter> {
  bool is_pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            widget.myfun();
          },
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
            padding: const EdgeInsets.all(5),
            color: widget.selected == widget.index
                ? Color(0xff14B9EF)
                : Color.fromARGB(255, 250, 250, 253),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: widget.selected == widget.index
                    ? Color(0xff14B9EF)
                    : Color.fromARGB(255, 11, 18, 103),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(this.widget.letter,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w900)),
                ),
              ),
            )),
      ),
    );
  }
}

class WLetter extends StatefulWidget {
  final String letter;
  WLetter(
    String this.letter,
  );

  @override
  State<WLetter> createState() => _WLetterState();
}

class _WLetterState extends State<WLetter> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
          padding: const EdgeInsets.all(5),
          color: Color(0xff040311),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Color(0xff040311),
              child: Align(
                alignment: Alignment.center,
                child: Text(this.widget.letter,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w900)),
              ),
            ),
          )),
    );
    // return ClipRRect(
    //   borderRadius: BorderRadius.circular(10),
    //   child: Container(
    //     padding: EdgeInsets.all(10),
    //     decoration: BoxDecoration(color: Color(0xff2B1F69)),
    //     child: Text(this.letter,
    //         style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 35,
    //             fontWeight: FontWeight.w900)),
    //   ),
    // );
  }
}

class RLetter extends StatefulWidget {
  final String letter;
  RLetter(
    String this.letter,
  );

  @override
  _RLetterState createState() => _RLetterState();
}

class _RLetterState extends State<RLetter> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
          padding: const EdgeInsets.all(5),
          color: Color(0xff14B9EF),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Color(0xff14B9EF),
              child: Align(
                alignment: Alignment.center,
                child: Text(this.widget.letter,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900)),
              ),
            ),
          )),
    );
    // return ClipRRect(
    //   borderRadius: BorderRadius.circular(10),
    //   child: Container(
    //     padding: EdgeInsets.all(10),
    //     decoration: BoxDecoration(color: Color(0xff2B1F69)),
    //     child: Text(this.letter,
    //         style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 35,
    //             fontWeight: FontWeight.w900)),
    //   ),
    // );
  }
}

class ChooseLetter extends StatelessWidget {
  final String letter;
  ChooseLetter(String this.letter);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Color.fromARGB(255, 31, 51, 105)),
        child: Text(this.letter,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w900)),
      ),
    );
  }
}
