import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        backgroundColor: Colors.black,
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
             image : DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/564x/d8/4f/e5/d84fe564086a3ce6455a871dceb7db2b.jpg'
              ) ,
              fit: BoxFit.cover,

            )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
                  children:   [

                    Image(
                      image: AssetImage('images/5.png'),
                      height : 150,
                    ),
                    SizedBox(
                      height:30,
                    ),

                    const Text(
                      'ITI Quiz app',
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontFamily: 'DancingScript',
                        fontSize:40,


                      ),
                    ),
                    SizedBox(
                      height:45,
                    ),
                    const Text(
                      'we are creative , enjoy our app',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'DancingScript',
                        fontSize:27,


                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.only(left: 125,right:125)
                      ),
                        onPressed:( ){

                        },

                        child: Text('Start'
                          ,style: TextStyle(
                              fontSize: 20,
                            )

                        ),

                    )


                  ],

      ),

      ),

    );






   


  }
}
