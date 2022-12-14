import 'package:Nixon/Apps/Habit%20App/details.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyApp5 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
      home: Home(),
      routes: {
        '/details': (context) => Details(),
      },
    );
  }
}

List<Map<String, dynamic>> habits = [
  {
    'color': Color.fromARGB(255, 67, 95, 152),
    'title': 'NW',
    'fulltext': 'New Words',
  },
  {
    'color': Colors.red,
    'title': 'GE',
    'fulltext': 'Get Up Early',
  },
  {
    'color': Color.fromARGB(255, 27, 145, 88),
    'title': 'ET',
    'fulltext': 'Exercise Today',
  },
];
List<Map<String, dynamic>> habits2 = [
  {
    'color': Color.fromARGB(255, 16, 28, 192),
    'objectif': 'Learn 5 new words',
    'progress': '0 from 7 this week'
  },
  {
    'color': Color(0xfff03244),
    'objectif': 'Get Up Early',
    'progress': '0 from 7 this week'
  },
  {
    'color': Color.fromARGB(255, 27, 145, 88),
    'objectif': 'Exercise Today',
    'progress': '0 from 7 this week'
  },
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 30, 39),
        body: Container(
          padding: EdgeInsets.only(top: 25.0, left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: RichText(
                      softWrap: true,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: " Habits",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              color: Color.fromARGB(255, 27, 145, 88),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 27, 37, 67),
                        ),
                        child: IconButton(
                          iconSize: 20,
                          icon: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 27, 145, 88),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: habits.length,
                  itemBuilder: (ctx, id) {
                    return Container(
                      width: 150,
                      margin:
                          EdgeInsets.only(right: 15.0, top: 9.0, bottom: 9.0),
                      padding: EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        color: habits[id]['color'],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: habits[id]['color'],
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            habits[id]['title'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                                color: Colors.white),
                          ),
                          Text(
                            habits[id]['fulltext'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Color(0xff1b232e),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.all(15),
                child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, f) {
                    int day = DateTime.now().day + f;
                    return FittedBox(
                      child: Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.only(right: 15.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: day == DateTime.now().day
                              ? Color.fromARGB(255, 31, 37, 101)
                              : Color(0xff131b26),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "${DateTime.now().day + f}",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: day == DateTime.now().day
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: day == DateTime.now().day
                                    ? Colors.white
                                    : Colors.grey[500],
                              ),
                            ),
                            Text(
                              DateFormat('EE').format(
                                DateTime.now().add(
                                  Duration(days: f),
                                ),
                              ),
                              style: TextStyle(
                                  color: day == DateTime.now().day
                                      ? Colors.white
                                      : Color.fromARGB(255, 126, 126, 126),
                                  fontWeight: day == DateTime.now().day
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Your Habits ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: " 3",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
              ),
              // ListItem(id: 1,)
              Expanded(
                child: ListView.builder(
                  itemCount: habits2.length,
                  itemBuilder: (ctx, id) {
                    return ListItem(id: id);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final int id;

  const ListItem({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/details');
      },
      child: Container(
        height: 150,
        margin: EdgeInsets.symmetric(vertical: 21.0),
        padding: EdgeInsets.only(right: 25.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: id == 0 ? habits2[id]['color'] : Colors.transparent,
                    border: id == 0
                        ? Border()
                        : Border.all(
                            color: Color.fromARGB(255, 189, 184, 184),
                          ),
                  ),
                  child: Icon(
                    Icons.check,
                    color: id == 0
                        ? Colors.white
                        : Color.fromARGB(255, 115, 114, 114),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      habits2[id]['objectif'],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      habits2[id]['progress'],
                      style: TextStyle(color: Colors.grey[500], fontSize: 17),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                )
              ],
            ),
            LinearProgressIndicator(
              value: .0,
              backgroundColor: Color.fromARGB(255, 121, 125, 131),
              valueColor: AlwaysStoppedAnimation(
                habits2[id]['color'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
    // return InkWell(
    //   onTap: () {
    //     Navigator.pushNamed(context, '/details');
    //   },
    //   child: Container(
    //     // height: 150,
    //     margin: EdgeInsets.symmetric(vertical: 21.0),
    //     padding: EdgeInsets.only(right: 25.0),
    //     child: Column(
    //       children: <Widget>[
    //         Row(
    //           children: <Widget>[
    //             Container(
    //               padding: EdgeInsets.all(5.0),
    //               decoration: BoxDecoration(
    //                 shape: BoxShape.circle,
    //                 color: id == 0 ? habits2[id]['color'] : Colors.transparent,
    //                 border: id == 0
    //                     ? Border()
    //                     : Border.all(
    //                         color: Colors.grey[500],
    //                       ),
    //               ),
    //               child: Icon(
    //                 Icons.check,
    //                 color: id == 0 ? Colors.white : Colors.grey[500],
    //               ),
    //             ),
    //             SizedBox(width: 15),
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: <Widget>[
    //                 Text(
    //                   habits2[id]['objectif'],
    //                   style: TextStyle(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 19),
    //                 ),
    //                 SizedBox(
    //                   height: 3,
    //                 ),
    //                 Text(
    //                   habits2[id]['progress'],
    //                   style: TextStyle(color: Colors.grey[500], fontSize: 17),
    //                 ),
    //                 SizedBox(
    //                   height: 15,
    //                 ),
    //               ],
    //             )
    //           ],
    //         ),
    //         LinearProgressIndicator(
    //           value: .0,
    //           backgroundColor: Color.fromARGB(255, 121, 125, 131),
    //           valueColor: AlwaysStoppedAnimation(
    //             habits2[id]['color'],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

