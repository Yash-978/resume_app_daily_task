import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app_daily_task/GmailDrawer/list.dart';

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
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    TextEditingController txtname = TextEditingController();
    TextEditingController txtsurname = TextEditingController();
    TextEditingController txtmobile = TextEditingController(text: '+91  ');
    TextEditingController txtemail = TextEditingController();
    TextEditingController txtaddress = TextEditingController();

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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
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
                            inputKeyBoard: TextInputType.name,
                            usermaxLines: 1),
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
                            inputKeyBoard: TextInputType.name,
                            usermaxLines: 1),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                width: 430,
                child: buildTextFormField(
                    label: 'Phone',
                    hint: 'Phone',
                    userController: txtmobile,
                    inputKeyBoard: TextInputType.number,
                    usermaxLines: 1),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                width: 430,
                child: buildTextFormField(
                    label: 'Email',
                    hint: 'Email',
                    userController: txtemail,
                    inputKeyBoard: TextInputType.name,
                    usermaxLines: 1),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 430,
                child: buildTextFormField(
                    label: 'Address',
                    hint: 'Address',
                    userController: txtaddress,
                    inputKeyBoard: TextInputType.name,
                    usermaxLines: 4),
              ),
              SizedBox(
                height: 10,
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
                    buildRadioListTile(userGender: 'male', usertitleGender: 'Male'),
                    buildRadioListTile(userGender: 'female', usertitleGender: 'Female'),
                    buildRadioListTile(userGender: 'other', usertitleGender: 'Other'),

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
                onTap: () {
                  name = txtname.text;
                  surname = txtsurname.text;
                  contact = txtmobile.text;
                  useremail = txtemail.text;
                  profileImage = fileimage!.path;
                  Address = txtaddress.text;
                  userGender = gender.toString();

                  Navigator.of(context).pushNamed('/idcard');
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

  RadioListTile<String> buildRadioListTile({required userGender,required usertitleGender}) {
    return RadioListTile(
                    value: userGender,
                    groupValue: gender,
                    title: Text(usertitleGender),
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  );
  }

  Widget buildTextFormField(
      {required String label,
      required String hint,
      required userController,
      required inputKeyBoard,
      required usermaxLines}) {
    return TextFormField(
      // onChanged: (value) {
      //   setState(() {
      //     name = value;
      //   });
      // },
      maxLines: usermaxLines,
      controller: userController,
      keyboardType: inputKeyBoard,
      textInputAction: TextInputAction.next,
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
String? name;
String? surname;
String? contact;
String? useremail;
String? profileImage;
String? Address;
String? userGender;
