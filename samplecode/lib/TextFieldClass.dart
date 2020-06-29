import 'package:flutter/material.dart';

class TextFieldRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea( // safearea 설정.
        //left: true,
        //top: false,
        //right: true,
        //bottom: true,
        child: TextFieldView(), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

class TextFieldView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextFieldCustomForm(),
    );
  }
}

// Define a custom Form widget.
class TextFieldCustomForm extends StatefulWidget {
  @override
  _TextFieldCustomForm createState() => _TextFieldCustomForm();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _TextFieldCustomForm extends State<TextFieldCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(myController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}