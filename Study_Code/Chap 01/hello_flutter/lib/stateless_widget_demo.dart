import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Stateless Widget Demo',
  home: Scaffold(
    appBar: AppBar(title: Text('Stateless 위젯 데모')),
    body: _FirstStatelessWidget(),
  ),
));

//statelesswidget 은 상태가 없는 위젯으로 변하는 부분이 없을때 사용하여 상속한다.
// 상속 한 후 build 로 반환해주면 화면 생성이 가능해진다.
class _FirstStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateless 위젯입니다');
  }
}