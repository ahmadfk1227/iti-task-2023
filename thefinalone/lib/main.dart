import 'package:flutter/material.dart';

import 'Screens/category_screen.dart';

import 'Screens/login_screen.dart';
import 'Screens/opening_screen.dart';
import 'Screens/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Cupertino App
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OpeningScreen()

      // OurFirstScreen(
      //   title: 'Flutter Demo Home Page',
      // ),
    );
  }
}

