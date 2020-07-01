import 'package:flutter/material.dart';

class WebImg_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea(
        // safearea 설정.
        //left: true,
        //top: false,
        //right: true,
        //bottom: true,
        child: WebImg_Body(), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

class WebImg_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebImg_Page Screen'),
      ),

      body: Image.network(
        'https://picsum.photos/250?image=9',
      ),
    );
  }
}
