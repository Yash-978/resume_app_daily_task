import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class gmailValidationChrome extends StatefulWidget {
  const gmailValidationChrome({super.key});

  @override
  State<gmailValidationChrome> createState() => _gmailValidationChromeState();
}

class _gmailValidationChromeState extends State<gmailValidationChrome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('Assets/Images/download (2).png'),
                      )),
                    ),
                    Text(
                      'Sign in',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'Use your Google Account',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 50,),
                    SizedBox(
                      width: 400,
                      height: 90,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffE54335),
                              ),
                            ),
                            hintText: 'Email or phone',
                            hintStyle: TextStyle(fontSize: 15)),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot email?',
                          style: TextStyle(
                              color: Color(0xff0A58D0),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text(
                          'Not your computer? Use Guest mode to sign in privetely. ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          'Learn more',
                          style: TextStyle(
                              color: Color(0xff0A58D0),
                              fontSize: 10,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Create account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xff0A58D0),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
