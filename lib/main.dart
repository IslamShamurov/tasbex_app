import 'package:flutter/material.dart';
import 'package:tasbex_app/screens/second_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomeApp(), routes: {
      HomeApp.id: (context) => HomeApp(),
      SecondScreen.id: (context) => SecondScreen(),
    });
  }
}
