import 'package:flutter/material.dart';

class BottenVeiwTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea( // safearea 설정.
        //left: true,
        //top: false,
        //right: true,
        //bottom: true,
        child: TestSceene(), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

class TestSceene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),

      body: Center(
        child: RaisedButton(
          child: const Text('Go to First'),
          // Pops Second Screen off the navigation stack
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
