import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Gesture Demo';

    return MaterialApp(
      title: title,
      home: SnackBarPageVeiw(title: title),
    );
  }
}

class SnackBarPageVeiw extends StatelessWidget {
  final String title;

  SnackBarPageVeiw({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: SnackkButton()),
    );
  }
}

class SnackkButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea(
        // safearea 설정.
        //left: true,
        top: false,
        //right: true,
        //bottom: true,
        child: GestureDetector(
          // When the child is tapped, show a snackbar.
          onTap: () {
            final snackBar = SnackBar(
              content: Text("Tap"),
              action: SnackBarAction(
                label: '확인',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );

            Scaffold.of(context).showSnackBar(snackBar);
          },
          // The custom button
          child: Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Theme
                  .of(context)
                  .buttonColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text('My Button'),
          ),
        ),
      ),
    );
  }
}