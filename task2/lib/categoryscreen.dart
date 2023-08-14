import 'package:flutter/material.dart';

class categoryscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: const Color(0xff2c752e),
        title: (
        Text('Quiz App')
        ),
      ),
      body: Column(
        children: [

          Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.29,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://i.pinimg.com/564x/aa/1d/17/aa1d175b087f6ef5ed67047ac6232f44.jpg'),
                        fit: BoxFit.cover,
                      )
                    ),
                    child: Center(
                      child: const Text(
                          'Aquatic biology category',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
                      ),
                    ),
                  ),
                ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height *0.29,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://i.pinimg.com/564x/34/75/9f/34759f2c36a47bec1fbd34a7e46c44d7.jpg'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Center(
                child: const Text(
                  'Geography category',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height *0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://i.pinimg.com/564x/f7/fb/96/f7fb9635d8975aa88d0f18124f862e55.jpg'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Center(
                child: const Text(
                  'History category',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
