import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter_project/screens/log_in.dart';

class Startpage extends StatefulWidget {
  const Startpage({super.key});

  @override
  State<Startpage> createState() => startpage();
}

class startpage extends State<Startpage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => Navigator.pushNamed(context, 'login'));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/photo_2024-04-18_04-44-40.jpg"),
              fit: BoxFit.cover,
              opacity: 0.5,
            )),
        child: Column(
          // Padding(
          // padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 250),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TOURISM GUIDING",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MadimiOne'),
            )
          ],
        ),
      ),
      //)
    );
  }
}
