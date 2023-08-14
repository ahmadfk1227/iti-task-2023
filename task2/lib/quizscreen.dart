import 'package:flutter/material.dart';

class quizscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
        ),
        title: (
        Text('Test',
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontSize:35,
            fontWeight: FontWeight.bold,
          ),

        )
        ),
        backgroundColor: const Color(0xff2c752e),
        actions: [
          IconButton(
            icon: Image.asset('images/5.png'),
            onPressed: () {

            },
          ),
        ],
      ),

      body: Column(
        children: [
          SizedBox(
                height:60,
          ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Container(
                    width: double.infinity,
                    height: 100,
                    padding: EdgeInsets.all(9.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),

                      ),
                      color: const Color(0xffefecec),
                    ),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Question 1 :',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'DancingScript',
                          ),
                        ),
                        const  SizedBox(
                          height: 10,
                        ),
                        Text(
                          'what is the capital of france?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                           // fontFamily: 'DancingScript',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          SizedBox(
            height:30,
          ),
          Text(
              'Choose one :',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'DancingScript',
            ),
          ),

          SizedBox(
            height:30,
          ),

          Expanded(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                width: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),

                  ),
                  color: const Color(0xffDCDCDC),
                ),
                child: Text(
                  'Paris',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,


                  ),

                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                width: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),

                  ),
                  color: const Color(0xffDCDCDC),
                ),
                child: Text(
                  'Cairo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,


                  ),

                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                width: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),

                  ),
                  color: const Color(0xffDCDCDC),
                ),
                child: Text(
                  'Tokyo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,


                  ),

                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                width: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),

                  ),
                  color: const Color(0xffDCDCDC),
                ),
                child: Text(
                  'London',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,


                  ),

                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),



        ],
      ),
    );
  }
}