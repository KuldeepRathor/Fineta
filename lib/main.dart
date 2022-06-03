import 'package:fineta/screens/Onboardscreen.dart';
import 'package:fineta/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/piechart_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HowToSpend(),
        ),
      ],
      child: const Fineta(),
    ),
  );
}

class Fineta extends StatelessWidget {
  const Fineta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fineta',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Image.asset('images/Gradient.png').color,
      ),
      home: Onboard(),
    );
  }
}
