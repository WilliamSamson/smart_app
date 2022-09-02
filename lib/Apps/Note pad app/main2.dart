import 'package:Nixon/Apps/Note%20pad%20app/Views/home_view.dart';
import 'package:flutter/material.dart';
import 'Utils/theme_bloc.dart';
import 'Classes/theme_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

final routeObserver = RouteObserver<PageRoute>();

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
