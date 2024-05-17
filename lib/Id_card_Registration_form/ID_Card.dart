import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../ImagePicker/imagePicker.dart';
class idCard extends StatefulWidget {
  const idCard({super.key});

  @override
  State<idCard> createState() => _idCardState();
}
File? fileimage;
class _idCardState extends State<idCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                image: (fileimage != null)
                    ? DecorationImage(image: FileImage(fileimage!),fit: BoxFit.cover)
                    : DecorationImage(image: AssetImage('Assets/Images/Sample_User_Icon.png'),fit: BoxFit.cover),
                // : null,
                color: Colors.blue,

              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              IconButton(
                  onPressed: () async {
                    XFile? xFileimage =
                    await imagePicker.pickImage(source: ImageSource.camera);
                    setState(() {
                      fileimage = File(xFileimage!.path);
                    });
                  },
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                    size: 70,
                  )),
              IconButton(
                  onPressed: () async {
                    XFile? xFileimage = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    setState(() {
                      fileimage = File(xFileimage!.path);
                    });
                  },
                  icon: Icon(
                    Icons.image,
                    color: Colors.black,
                    size: 70,
                  ))
            ],
          ),
          Container(
            height: 60,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'Upload Me',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}
