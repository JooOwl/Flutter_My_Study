import 'package:flutter/material.dart';

class TapPageTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea( // safearea 설정.
        //left: true,
        //top: false,
        //right: true,
        //bottom: true,
        child: TapPageView(), // safearea 안에 들어가는 내용.
      ),
    );
  }
}


class TapPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
