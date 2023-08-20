import 'package:flutter/material.dart';
import 'package:task2/categoryscreen.dart';

class loginscreen extends StatefulWidget {

  loginscreen({super.key});

  @override
  loginscreenState createState() => loginscreenState();
}

class loginscreenState extends State<loginscreen> {
  String _name='';
  String _email='';
  String _num='';

    TextEditingController _password = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool? isschecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c752e),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const Image(
                height: 150,
                width: 150,
                image: AssetImage('images/5.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: const Color(0xffefecec),
                ),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 20),
                      child: Text(
                        'Login',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    ),
                   Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: SizedBox(
                        width: 320,

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
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(60))),
                            labelText: 'Username',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
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
                              borderRadius:
                              BorderRadius.all(Radius.circular(40))),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'New to quizz app?',
                            style: TextStyle(fontSize: 15),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                  color: Color(0xff06920d), fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: SizedBox(
                        width: 170,
                        child: ElevatedButton(

                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(context,MaterialPageRoute (
                                builder: (BuildContext context) =>  categoryscreen(),
                              ),
                              );
                            }

                          },
                          child: const Text('Log In',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
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
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(
                        Icons.fingerprint,
                        size: 60,
                        color: Color(0xff2196f3),
                      ),
                    ),
                    const Text(
                      'Use Touch ID',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Row(
                              children: [
                                Checkbox(
                                    value: isschecked,
                                    activeColor: const Color(0xff4caf50),
                                    onChanged: (newbool) {
                                      setState(() {
                                        isschecked = newbool;
                                      });
                                    }),
                                const Text(
                                  'Remember Me',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgrt Password?',
                                style: TextStyle(
                                    color: Color(0xff51b155), fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}