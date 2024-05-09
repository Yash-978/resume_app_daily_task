import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:
                        AssetImage('Assets/Images/Certification-cuate (1).png'),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Build Awesome Apps',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            Text(
              "Let's put your creativity on the \n development hightway.",
              style: TextStyle(
                  color: Color(0xff534B12),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),),
                    child: Center(
                      child: Text(
                        'Login',style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'SIGNUP',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
