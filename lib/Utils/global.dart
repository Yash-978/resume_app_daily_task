

import 'package:flutter/cupertino.dart';
// import 'package:resume_app_daily_task/Utils/statusbar.dart';

import '../GmailDrawer/gmailDrawer.dart';
import '../LoginPages/loginScreen.dart';

class AppRoutes
{
  static Map<String,Widget Function(BuildContext)>routes={
    // '/':(context)=>statusAndappBar(),
    // '/':(context)=>GmailDrawer(),
    '/':(context)=>LoginPage(),

  };
}

