import 'package:flutter/material.dart';

import 'package:thefinalone/Global/quizz_data.dart';

import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({

    required this.index,
  });

  List quizName = ["Sport Test", "General Test", "IQ Test","History Test","Geography Test","Chemistry Test"];
  List quizColor = [Colors.blue, Colors.red, Colors.green,Colors.purple,Colors.yellow,Colors.pink];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizScreen(
                categoryMap: dataBase[index],
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
             style: TextStyle(

    ),
          ),
        ),
      ),
    )
    );
  }
}