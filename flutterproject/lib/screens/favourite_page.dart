import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/app_drawer.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  static const screenRoute = '/favourite';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite'),
      ),
      drawer: Appdrawer(),
    );
  }
}
