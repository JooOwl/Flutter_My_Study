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
              RaisedButton(
                child: Text("Snack Bar Button"),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Yay! A SnackBar!'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      )
                  );
                },
              )
            ],
          ),
        ));
  }

  void showAlertDialog(BuildContext context) async {
    String result = await showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Demo'),
          content: Text("Select button you want"),
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
