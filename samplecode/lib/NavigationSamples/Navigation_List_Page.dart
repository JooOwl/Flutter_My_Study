import 'package:flutter/material.dart';
import 'package:owlallsample/NavigationSamples/data_toss_page.dart';
import 'package:owlallsample/NavigationSamples/hero_animations.dart';
import 'package:owlallsample/NavigationSamples/send_new_page_data.dart';

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
              RaisedButton(
                child: Text(
                  "Hero Animation",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => TransitionPage()));
                },
              ),
              RaisedButton(
                child: Text(
                  "send page data",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => TodosScreen()));
                },
              ),
            ],
          ),
        ));
  }
}
