import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/GmailDrawer/list.dart';
class passWordScreen extends StatefulWidget {
  const passWordScreen({super.key});

  @override
  State<passWordScreen> createState() => _passWordScreenState();
}

class _passWordScreenState extends State<passWordScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtpass = TextEditingController();
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
                                    return 'Enter a valid password';
                                  }
                                },
                                controller: txtpass,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      )),
                                  labelText: 'ABC@1234',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 7,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Forgot Password?',
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
                                      pass = txtpass.text;
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