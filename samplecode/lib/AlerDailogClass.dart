import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatelessWidget {
  // Global Key of Scaffold
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("AlertDialog Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "아무것도 아닌 버튼",
                  style: TextStyle(fontSize: 24),
                ),
                color: Colors.blue,
                textColor: Colors.red,
              ),
              RaisedButton(
                child: Text("Show AlertDialog"),
                onPressed: () {
                  showAlertDialog(context);
                },
              ),
            ],
          ),
        ));
  }

  void showAlertDialog(BuildContext context) async {
    String result = await showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        // AlertDialog
        return CupertinoAlertDialog(
          title: Text('AlertDialog Demo'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context, "OK");
              },
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, "Cancel");
              },
            ),
            FlatButton(
              child: Text('111'),
              onPressed: () {
                Navigator.pop(context, "111");
              },
            ),
          ],
        );
      },
    );

    scaffoldKey.currentState
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text("Result: $result"),
          backgroundColor: Colors.orange,
          action: SnackBarAction(
            label: "Done",
            textColor: Colors.white,
            onPressed: () {},
          ),
        ),
      );
  }
}
