import 'package:flutter/material.dart';
import 'package:thefinalone/Screens/category_screen.dart';

import '../Global/quizz_data.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //  final Container muContaner = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
        body: Stack(
          // unbounded widget
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 80, 18, 148),
                child: Center(
                  child: Image(
                    image: NetworkImage('https://cdn.icon-icons.com/icons2/2620/PNG/512/among_us_player_red_icon_156942.png'),
                    height: 100,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.7, // width: 50,
              width: double.infinity,

              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 226, 216, 216),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30))),

              child: Form(
                key: _formKey,
                child: Column(children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Name cannot be empty';
                          }
                          if (value.substring(0, 1).toUpperCase() !=
                              value.substring(0, 1)) {
                            return 'Name must begin with an uppercase letter';
                          }
                          if (value.length < 8) {
                            return 'Name must contain 8 letters or more';
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "User name",

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 36, 4, 240), width: 2),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          // border: ,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius:
                            BorderRadius.all(Radius.circular(40)),
                          ),
                          // border:
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SingleChildScrollView(
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'password cannot be empty';
                          }
                          else if (value.length < 9) {
                            return 'password must contain 9 letters or more';
                          }
                          else if (RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                              .hasMatch(value)) {
                            return null;

                          }
                          return 'wrong way to write password';
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                              BorderRadius.all(Radius.circular(40))),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("New to quiz app?"),
                      SizedBox(
                         width: 10,
                       ),
                      InkWell(
                        onTap: () {
                          print("Hello we are ITI");
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.purple, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => CategoryScreen(),
                          ),
                        );
                      }
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Adjust the radius as needed
                        ),
                       backgroundColor: const Color.fromARGB(255, 80, 18, 148),
                        elevation: 10,
                        minimumSize: Size(130, 40)),
                  ),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: Colors.blue,
                    size: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Text(
                    "Touch ID",

                    style: TextStyle(color:Colors.purple,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          Text("Remember me"),
                        ],
                      ),

                      // Spacer(),
                      InkWell(
                        onTap: () {
                          print("Hello we are ITI");
                        },
                        child: Text(
                          "Forget password",
                          style: TextStyle(
                              color: Colors.purple, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            )
          ],
        )

    );
  }
}
