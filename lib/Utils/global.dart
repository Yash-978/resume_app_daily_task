

import 'package:flutter/cupertino.dart';
// import 'package:resume_app_daily_task/Utils/statusbar.dart';

import '../GmailDrawer/gmailDrawer.dart';
import '../Google/gmail.dart';
import '../Google/passwordScreen.dart';
import '../Google/verifcationScreen.dart';
import '../Id_card_Registration_form/registrationForm.dart';
import '../ImagePicker/imagePicker.dart';
import '../LoginPages/EntryScreen.dart';
import '../LoginPages/loginScreen.dart';

class AppRoutes
{
  static Map<String,Widget Function(BuildContext)>routes={
    // '/':(context)=>statusAndappBar(),
    // '/':(context)=>GmailDrawer(),
    // '/':(context)=>EntryScreen(),

    // '/login':(context)=>LoginPage(),
    // '/':(context)=>gmailValidationChrome(),
    // '/pass':(context)=>passWordScreen(),
    // '/verified':(context)=>verifiedsuccessful(),
    '/':(context)=>RegistrationForm(),


  };
}

