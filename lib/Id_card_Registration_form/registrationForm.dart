import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import '../globalList_And_Variables.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

ImagePicker imagePicker = ImagePicker();

File? fileimage;

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtname = TextEditingController();
    TextEditingController txtsurname = TextEditingController();
    TextEditingController txtmobile = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Image Picker',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Center(
              //   child: Container(
              //     height: 350,
              //     width: 350,
              //     decoration: BoxDecoration(
              //       image: (fileimage != null)
              //           ? DecorationImage(
              //           image: FileImage(fileimage!), fit: BoxFit.cover)
              //           : const DecorationImage(
              //           image: AssetImage('Assets/Images/Sample_User_Icon.png'), fit: BoxFit.cover),
              //       color: Colors.blue,
              //     ),
              //   ),
              // ),
              Text(
                'Select Image',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () async {
                        XFile? xFileimage = await imagePicker.pickImage(
                            source: ImageSource.camera);
                        setState(() {
                          fileimage = File(xFileimage!.path);
                        });
                      },
                      icon: const Icon(
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
                      icon: const Icon(
                        Icons.image,
                        color: Colors.black,
                        size: 70,
                      ))
                ],
              ),
              SizedBox(
                height: 70,
                width: 360,
                child: TextFormField(
                  // onChanged: (value) {
                  //   setState(() {
                  //     name = value;
                  //   });
                  // },
                  controller: txtname,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    labelText: 'Name',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                width: 360,
                child: TextFormField(
                  // onChanged: (value) {
                  //   setState(() {
                  //     surname = value;
                  //   });
                  // },

                  controller: txtsurname,
                  decoration: InputDecoration(
                    hintText: 'Surname',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    labelText: 'Surname',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(
                height: 70,
                width: 360,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   setState(() {
                  //     mobileNo = value;
                  //   });
                  // },

                  controller: txtmobile,
                  decoration: InputDecoration(
                    hintText: 'Phone',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    labelText: 'Phone',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),

              RadioListTile(
                value: 'male',
                groupValue: gender,
                title: Text('Male'),
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),
              RadioListTile(
                value: 'female',
                groupValue: gender,
                title: Text('Female'),
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),

              ...List.generate(
                  categories.length,
                  (index) => CheckboxListTile(
                        title: Text(categories[index]['name']),
                        value: categories[index]['isChecked'],
                        onChanged: (value) {
                          setState(() {
                            categories[index]['isChecked'] = value!;
                            if(categories[index]['isChecked'])
                              {
                                hobbiesList.add(index);
                              }
                          });
                        },
                      )),

              // ...List.generate(categories.length, (index) => ),
              // Wrap(
              //   children: [
              //     ...List.generate(hobbiesList.length, (index) => Card(
              //      color: Colors.deepPurpleAccent,
              //       child: Row(
              //         children: [
              //           Text(categories[index]['isChecked']),
              //
              //         ],
              //       ),
              //     ))
              //   ],
              // ),

              GestureDetector(
                onTap: () {

                },
                child: Container(
                  height: 60,
                  width: 380,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      'Upload Me',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




// bool gender=false;


