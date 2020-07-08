import 'package:flutter/material.dart';
import 'package:owlallsample/LayOut_Tuto/layout_01.dart';
import 'package:owlallsample/LayOut_Tuto/layout_02.dart';
import 'package:owlallsample/LayOut_Tuto/layout_03.dart';

class LayOut_List extends StatelessWidget {
  // Global Key of Scaffold
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("LayOut Root Page")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "LayOut 01",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => layout_01()));
                },
              ),
              RaisedButton(
                child: Text(
                  "LayOut 02",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => layout_02()));
                },
              ),
              RaisedButton(
                child: Text(
                  "LayOut 03",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => layout_03()));
                },
              ),
            ],
          ),
        ));
  }
}
