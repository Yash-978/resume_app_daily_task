import 'package:flutter/material.dart';
class verifiedsuccessful extends StatefulWidget {
  const verifiedsuccessful({super.key});

  @override
  State<verifiedsuccessful> createState() => _verifiedsuccessfulState();
}

class _verifiedsuccessfulState extends State<verifiedsuccessful> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF0F4F8),
      body: Center(
        child: Container(
          height: height * 0.43,
          width: width * 0.50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 250,
                  ),
                  Image.asset(
                    'Assets/Images/download (2).png',
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ],
              ),
              const SizedBox(
                width: 200,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login\nSuccessfully',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 35),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

