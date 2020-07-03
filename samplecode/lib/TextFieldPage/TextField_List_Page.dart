import 'package:flutter/material.dart';
import 'package:owlallsample/TextFieldPage/TextFieldClass.dart';
import 'package:owlallsample/TextFieldPage/TextField_02.dart';


class TextFieldSamplesPage extends StatelessWidget {
  // Global Key of Scaffold
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("Navigation Root Page")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "Text Field 01",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => TextFieldRoot()));
                },
              ),
              RaisedButton(
                child: Text(
                  "Text Field 02",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => TextField_02()));
                },
              ),
            ],
          ),
        ));
  }
}
