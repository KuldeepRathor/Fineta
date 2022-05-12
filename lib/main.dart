import 'package:fineta/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Fineta());
}

class Fineta extends StatelessWidget {
  const Fineta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fineta',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: const Color(0x00e5e5e5),
      ),
      home: const HomePage(title: 'Fineta'),
    );
  }
}