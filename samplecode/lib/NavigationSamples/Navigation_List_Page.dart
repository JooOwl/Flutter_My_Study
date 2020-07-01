import 'package:flutter/material.dart';
import 'package:owlallsample/NavigationSamples/data_toss_page.dart';

class NavidagionSamplesPage extends StatelessWidget {
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
                  "Data toss Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));
                },
              ),

            ],
          ),
        ));
  }
}
