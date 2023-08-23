import 'package:flutter/material.dart';
import 'package:thefinalone/Screens/quiz_screen.dart';
import '../Widgets/category_container.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Categories'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          for (int i = 0; i < 6; i++)
            CategoryContainer(
              index: i,
            )
        ],
      ),
    );
  }
}