import 'package:flutter/material.dart';
import 'package:thefinalone/Screens/login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,

        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://media.istockphoto.com/photos/black-marble-basalt-abstract-background-onyx-coal-frozen-lava-tube-picture-id1341466956?b=1&k=20&m=1341466956&s=170667a&w=0&h=8iiANpwrKy8dSYqLIQVT7VhKcJ0lVGq8qXNFIIWesHI=",
                ),
                fit: BoxFit.cover)),

        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),

            Image(
              image: NetworkImage('https://media.istockphoto.com/id/1140838167/vector/quiz-time-logo-with-speech-bubble-symbols-concept-of-questionnaire-show-sing-quiz-time.jpg?s=612x612&w=0&k=20&c=aEHPfrZbdoFygyV3IpOceInNZXZ637JwVo-zzTR6jK8='),
              height: MediaQuery.of(context).size.height * 0.2,
            ),

            SizedBox(
              height:30,
            ),

            Text(
              "ITI Quiz App",
              style: TextStyle(
                color: Colors.amberAccent,
                fontFamily: 'DancingScript',
                fontSize:40,


              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              "We are creative, enjoy our app",
              style: TextStyle(
                color: Colors.amberAccent,
                fontFamily: 'DancingScript',
                fontSize:20,


              ),
            ),


            SizedBox(
              height: 150,
            ),



            Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                width: double.infinity,
                child: Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: EdgeInsets.only(left: 125,right:125)
                      ),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "next",
                      )),
                )),


          ],
        ),
      ),
    );
  }
}
