import 'package:flutter/material.dart';
import 'package:task2/homepage.dart';
import 'package:task2/loginscreen.dart';
import 'package:task2/categoryscreen.dart';
import 'package:task2/quizscreen.dart';
import 'package:task2/scorescreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scorescreen(),
    );
  }
}

