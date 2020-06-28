import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Stateless -> Stateful 위젯 데모',
  home: Scaffold(
    appBar: AppBar(title: Text('Stateless -> Stateful 위젯 데모')),
    body: _FirstStatefulWidget(),
  ),
));

// 상태를 가지는 위젯 statefulwidget 상태가 변하면 위젯의 상태를 변화 시킬수있다.
class _FirstStatefulWidget extends StatefulWidget {
  @override
  State createState() => _FirstStatefulWidgetState();
}

class _FirstStatefulWidgetState extends State<_FirstStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateful 위젯입니다');

  }
}