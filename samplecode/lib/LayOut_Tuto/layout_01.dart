import 'package:flutter/material.dart';

class layout_01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea( // safearea 설정.
        //left: true,
        //top: false,
        //right: true,
        //bottom: true,
        child: layout_01View(), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

class layout_01View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 매트리얼앱을 생성하여 반환
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter layout demo"),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}