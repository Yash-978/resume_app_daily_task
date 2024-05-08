import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class statusAndappBar extends StatefulWidget {
  const statusAndappBar({super.key});

  @override
  State<statusAndappBar> createState() => _statusAndappBarState();
}

class _statusAndappBarState extends State<statusAndappBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.green,
      ),

    ),
    );
  }
}
