import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app_daily_task/globalList_And_Variables.dart';

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
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: (fileimage != null)
                    ? DecorationImage(
                        image: FileImage(fileimage!), fit: BoxFit.cover)
                    : DecorationImage(
                        image: AssetImage('Assets/Images/Sample_User_Icon.png'),
                        fit: BoxFit.cover),
                // : null,
                color: Colors.blue,
              ),
            ),
          ),
          yourinfo(yourinfo_Name: 'Name : ', person_info_Name: name),
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

  Row yourinfo({required yourinfo_Name,required person_info_Name}) {
    return Row(
          children: [
            Text(yourinfo_Name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text(person_info_Name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Color(0xff32353A)),),
          ],
        );
  }
}
