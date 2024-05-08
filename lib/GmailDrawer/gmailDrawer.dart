import 'package:flutter/material.dart';

import 'list.dart';
class GmailDrawer extends StatefulWidget {
  const GmailDrawer({super.key});

  @override
  State<GmailDrawer> createState() => _GmailDrawerState();
}

class _GmailDrawerState extends State<GmailDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Color(0xff313336),
          child: Column(
            children: [
              // DrawerHeader(child: Text('Gmail')),
              ListTile(
                title: Text('Gmail',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
      
              ),
              ...List.generate(13, (index) =>  gmailListTile(index),
              // ListTile(
              //
              //   title: Text('Primary',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              //   leading: Icon(Icons.inbox_outlined,color: Colors.white,),
              //
              // ),
              ),
            ],
          ),
      
        ),
        appBar: AppBar(
      
        ),
      ),
    );
  }

  ListTile gmailListTile(int index) {
    return ListTile(
             title: Text(drawerText[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             leading: Icon(drawerIcons[index],color: Colors.white,),

           );
  }
}
