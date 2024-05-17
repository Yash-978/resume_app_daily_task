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
    TextEditingController txtemail = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Id card',
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
              SizedBox(
                height: 30,
              ),

              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: (fileimage != null)
                        ? DecorationImage(
                            image: FileImage(fileimage!), fit: BoxFit.cover)
                        : const DecorationImage(
                            image: AssetImage(
                                'Assets/Images/Sample_User_Icon.png'),
                            fit: BoxFit.cover),
                    color: Color(0xffEADDFF),
                  ),
                ),
              ),
              // Text(
              //   'Select Image',
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 30,
              //   ),
              // ),
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
                        size: 60,
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
                        size: 60,
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 70,
                      width: 210,
                      child: buildTextFormField(
                          label: 'Name',
                          hint: 'Name',
                          userController: txtname,
                          inputKeyBoard: TextInputType.name),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 70,
                      width: 210,
                      child: buildTextFormField(
                          label: 'Surname',
                          hint: 'Surname',
                          userController: txtsurname,
                          inputKeyBoard: TextInputType.name),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                width: 430,
                child: buildTextFormField(
                    label: 'Phone',
                    hint: 'Phone',
                    userController: txtsurname,
                    inputKeyBoard: TextInputType.number),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Gender :-',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
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
                    RadioListTile(
                      value: 'Other',
                      groupValue: gender,
                      title: Text('Other'),
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Skills :-',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

              ...List.generate(
                  categories.length,
                  (index) => CheckboxListTile(
                        title: Text(categories[index]['name']),
                        value: categories[index]['isChecked'],
                        onChanged: (value) {
                          setState(() {
                            categories[index]['isChecked'] = value!;
                            if (categories[index]['isChecked']) {
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
                onTap: () {},
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

  Widget buildTextFormField(
      {required String label,
      required String hint,
      required userController,
      required inputKeyBoard}) {
    return TextFormField(
      // onChanged: (value) {
      //   setState(() {
      //     name = value;
      //   });
      // },
      controller: userController,
      keyboardType: inputKeyBoard,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.black,
            )),
        labelText: label,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

// bool gender=false;
