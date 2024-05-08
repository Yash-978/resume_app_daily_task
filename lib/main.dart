import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app_daily_task/Utils/global.dart';
void main()
{
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.red));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/gmaildrawer',
      routes: AppRoutes.routes,

    );
  }
}
