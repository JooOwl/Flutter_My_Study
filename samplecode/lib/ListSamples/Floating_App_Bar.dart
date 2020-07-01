import 'package:flutter/material.dart';

class Floating_App_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea( // safearea 설정.
        //left: true,
        //top: false,
        //right: true,
        //bottom: true,
        child: Floating_App_Body(), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

class Floating_App_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Floating_App_Bar"),
            floating: true,
            flexibleSpace: Placeholder(),
            expandedHeight: 100,
          ),
          // Next, create a SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
