import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  // statefulwidget  은 createState 로 상태를 담당하는 클래스를 지정할 수 있다.
  _MyHomePageState createState() => _MyHomePageState();
}

// dart 에서는 클래스 이름 앞에 _ 언더바를 붙이면 private를 의미합니다.
// dart 에서의 private 의 의미는 같은 파일 내에서의 접근을 의미합니다.
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    // 스테이터스를 세팅하는 함수로. StatefulWiget인 MyHomePage 에서 상태를 담당하는 클래스로 지정되었으니
    // 이곳에서 setState 를 위잿의 내용이 변했으므로 화면을 다시 갱신합니다.
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      // 위치를 지정한 버튼이며
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // 쿨렀을때 발생할 이벤트에 연결하는 함수 이름
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
