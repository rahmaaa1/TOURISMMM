import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/favourite_page.dart';
import 'package:flutter_project/screens/mytrips_page.dart';
import 'package:flutter_project/screens/about_page.dart';
import 'package:flutter_project/screens/home_page.dart';

//import:'package:flutter/src/widgets/navigator.dart';
class Appdrawer extends StatelessWidget {
  const Appdrawer({super.key});

  Widget newMethod(String title, IconData icon, onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 15,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'MadimiOne',
          color: Color.fromARGB(255, 22, 23, 82),
        ),
      ),
      onTap: onTapLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      Container(
          height: 75,
          width: double.infinity,
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          color: Color.fromARGB(255, 121, 155, 228),
          child: Text(
            'OTHERS',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'MadimiOne',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 22, 23, 82),
            ),
          )),
      SizedBox(height: 15),
      Container(
          child: Column(children: [
        const infoCard(name: " abu anwar"),
        Column(children: [
          Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Divider(
                  color: const Color.fromARGB(101, 158, 158, 158), height: 1)),
          // Stack(
          // children: [
          // AnimatedPositioned(
          // duration: const Duration(milliseconds: 300),
          // curve: Curves.fastOutSlowIn,
          // height: 56,
          // width: isActive? 288:0,
          // left: 0,
          // child: Container(
          // decoration: const BoxDecoration(
          // color: Color(0xFF6792FF),
          //borderRadius: BorderRadius.all(Radius.circular(10)),
          // ),
          //),
          // ),
          //ListTile(
          //onTap: press,
          //leading: SizedBOx( height:34),
          //)
          //  ],
          //)
        ])
      ])),
      SizedBox(height: 17),
      newMethod(
        'Home Page',
        Icons.home,
        () {
          Navigator.of(context).pushReplacementNamed(Homepage.screenRoute);
        },
      ),
      newMethod(
        'Favourite ♡',
        Icons.heat_pump_rounded,
        () {
          Navigator.of(context).pushReplacementNamed(Favourite.screenRoute);
        },
      ),
      newMethod(
        'My Trips +',
        Icons.card_travel_rounded,
        () {
          Navigator.of(context).pushReplacementNamed(Mytrips.screenRoute);
        },
      ),
      newMethod(
        'About',
        Icons.arrow_forward_sharp,
        () {
          Navigator.of(context).pushReplacementNamed(About.screenRoute);
        },
      ),
    ]));
  }
}

class infoCard extends StatelessWidget {
  const infoCard({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color.fromARGB(58, 147, 182, 192),
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontFamily: 'MadimiOne',
          color: Color.fromARGB(255, 22, 23, 82),
        ),
      ),
    );
  }
}
