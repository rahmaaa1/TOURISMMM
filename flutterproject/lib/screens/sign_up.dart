import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  static const screenRoute = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
    );
  }
}
