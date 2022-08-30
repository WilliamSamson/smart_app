// import 'package:Smart_app/Apps/Note%20pad%20app/Classes/theme_data.dart';
// import 'package:Smart_app/Apps/Note%20pad%20app/Views/home_view.dart';
// import 'package:flutter/material.dart';

// class Breach extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       builder: (builder, snapshot) {
//         if (snapshot.data == null) {
//           return MaterialApp(
//             title: 'Notepad',
//             navigatorObservers: [routeObserver],
//             home: HomeView(snapshot.data),
//           );
//         } else {
//           return StreamBuilder(
//             initialData: snapshot.data,
//             builder: (context, snapshot) {
//               if (snapshot.data == null) {
//                 return MaterialApp(
//                   title: 'Notepad',
//                   navigatorObservers: [routeObserver],
//                   home: HomeView(snapshot.data),
//                 );
//               } else {
//                 return MaterialApp(
//                   title: 'Notepad',
//                   navigatorObservers: [routeObserver],
//                   home: HomeView(snapshot.data),
//                 );
//               }
//             },
//           );
//         }
//       },
//     );
//   }
// }
