import 'package:flutter/material.dart';

class scorescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: (
            Text('Test`s score',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize:35,
                fontWeight: FontWeight.bold,
              ),

            )
        ),
        backgroundColor: const Color(0xff2c752e),
      ),

      body: Center(
        child: Container(
          height: double.infinity,
            width: double.infinity,
          child:
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 200,
                  child: Image(image:
                  NetworkImage('https://cdn-icons-png.flaticon.com/512/7503/7503982.png')
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'hello , ahmad great job',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Your score is 8/10',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('congratulations',
                  style: TextStyle(
                    fontSize:30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DancingScript',
                  ),
                ),
                SizedBox(
                  height:100,
                ),
                Container(
                  height: 45,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: (){

                      },

                      child: Text('to re-test',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff268828),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

              ],

            )
        ),
      ),
    );
  }
}