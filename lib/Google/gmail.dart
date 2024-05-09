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
            height: 500,
            width: 900,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('Assets/Images/download (2).png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                        )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                        )),
                      ),
                    )
                  ],
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.black,
                //         )),
                //     focusedBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.red,
                //         )),
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
