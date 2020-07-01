import 'package:flutter/material.dart';
import 'package:owlallsample/ListSamples/Floating_App_Bar.dart';
import 'package:owlallsample/ListSamples/Grid_List.dart';
import 'package:owlallsample/ListSamples/different_types_list.dart';
import 'package:owlallsample/ListSamples/horizontal_list.dart';

class ListSamplesPage extends StatelessWidget {
  // Global Key of Scaffold
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("List Root Page")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "Floating_App_Page",
                  style: TextStyle(fontSize: 24),
                ),
                color: Colors.blue,
                textColor: Colors.red,
                onPressed:(){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Floating_App_Page()));
                },
              ),
              RaisedButton(
                child: Text("Gird List"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Grid_List_Page()));
                },
              ),
              RaisedButton(
                child: Text("different List"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Different_List_Page()));
                },
              ),
              RaisedButton(
                child: Text("horizontal List"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Horizontal_List_Page()));
                },
              ),
            ],
          ),
        ));
  }
}
