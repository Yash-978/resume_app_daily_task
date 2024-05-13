import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_app_daily_task/GmailDrawer/list.dart';

class gmailValidationChrome extends StatefulWidget {
  const gmailValidationChrome({super.key});

  @override
  State<gmailValidationChrome> createState() => _gmailValidationChromeState();
}

class _gmailValidationChromeState extends State<gmailValidationChrome> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();

    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 300,
                width: 950,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        width: 400,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // SizedBox(height: 40,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'Assets/Images/download (2).png'))),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Sign-in',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Use your Google Account',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 490,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 80,
                            ),
                            SizedBox(
                              height: 50,
                              child: TextFormField(
                                // onChanged: (value) {
                                //   setState(() {
                                //     email = value;
                                //   });
                                // },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Valid Email';
                                  } else if (!value.contains('@gmail.com')) {
                                    return 'Enter @gmail.com';
                                  } else if (value.toString() == '@gmail.com') {
                                    return 'abc123@gmail.com';
                                  }
                                },
                                controller: txtEmail,
                                decoration: InputDecoration(
                                  hintText: 'Email or phone',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  labelText: 'xyz123@gmail.com',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // TextFormField(
                            //   validator: (value) {
                            //     if(value!.isEmpty)
                            //     {
                            //       return ' please enter @gmail';
                            //     }
                            //     else if(!value.contains('@gmail.com'))
                            //     {
                            //       return 'invalid Email ID';
                            //     }
                            //     else if(value.toString()=='@gmail.com')
                            //     {
                            //       return 'xyz@gmail.com';
                            //     }
                            //   },
                            //   controller: txtEmail,
                            //   decoration: InputDecoration(
                            //     labelText: 'Email or Phone',
                            //     labelStyle: const TextStyle(
                            //       color: Colors.blue,
                            //     ),
                            //     hintText: 'xyz123@gmail.com',
                            //     border: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(4),
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              height: 7,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Forgot email?',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff125DCB)),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Text(
                                    'Not your Computer? Use Guest mode to sign in privetely.',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Learn more',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff125DCB),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Create account',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff125DCB),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    bool response =
                                        formkey.currentState!.validate();
                                    if (response) {
                                      email = txtEmail.text;
                                      Navigator.of(context).pushNamed('/pass');
                                    }
                                  },
                                  child: Container(
                                    height: 38,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xff125DCB)),
                                    child: Center(
                                      child: Text(
                                        'Next',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
