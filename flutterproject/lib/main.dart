import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home_page.dart';
import 'package:flutter_project/screens/log_in.dart';
import 'package:flutter_project/screens/start_page.dart';
import 'package:flutter_project/screens/favourite_page.dart';
import 'package:flutter_project/screens/mytrips_page.dart';
import 'package:flutter_project/screens/about_page.dart';
import 'package:flutter_project/screens/sign_up.dart';

void main() {
  runApp(const flutterproject());
}

class flutterproject extends StatelessWidget {
  const flutterproject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "tourism guide",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFE6969),
      ),
      home: Startpage(),
      initialRoute: 'startpage',
      routes: {
        'login': (context) => Login(),
        //'homepage': (context) => Homepage(),
        //'favourite': (context) => Favourite(),
        // 'mytrips': (context) => Mytrips(),

        Favourite.screenRoute: (context) => Favourite(),
        Mytrips.screenRoute: (context) => Mytrips(),
        About.screenRoute: (context) => About(),
        Homepage.screenRoute: (context) => Homepage(),
        Signup.screenRoute: (context) => Signup(),
      },
    );
  }
}
