import 'package:flutter/material.dart';

class DynamicTextField extends StatefulWidget {
  const DynamicTextField({super.key});

  @override
  State<DynamicTextField> createState() => _DynamicTextFieldState();
}

class _DynamicTextFieldState extends State<DynamicTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SKills',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              txtControllerList.length,
              (index) => ListTile(
                title: TextField(textInputAction: TextInputAction.next,
                  controller: txtControllerList[index],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        TextEditingController txtController=TextEditingController();
                        setState(() {
                          txtControllerList.add(txtController);
                        });
                      },
                      icon: Icon(Icons.add_circle_outline),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          txtControllerList.removeAt(index);
                        });
                      },
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String skill=txtController.text;
          for(int i =1;i<txtControllerList.length;i++)
            {
              skill=skill+ '' + txtControllerList[i].text;
            }
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${skill} ${txtControllerList[1].text}')));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// List txtControllerList = [];
TextEditingController txtController = TextEditingController();
List<TextEditingController> txtControllerList = [
  txtController
];