import 'package:flutter/material.dart';

class textfield_Chage_focus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea( // safearea 설정.
        //left: true,
        //top: false,
        //right: true,
        //bottom: true,
        child: textfield_Chage_Form(), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

// Define a custom Form widget.
class textfield_Chage_Form extends StatefulWidget {
  @override
  _textfield_Chage_State createState() => _textfield_Chage_State();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _textfield_Chage_State extends State<textfield_Chage_Form> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  String str_text;

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {

    setState(() {
      str_text = myController.text;
    });

    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                print("First text field: $text");
              },
            ),
            TextField(
              controller: myController,
            ),
            Text(
              'TEXT : $str_text',
            ),
          ],
        ),
      ),
    );
  }
}