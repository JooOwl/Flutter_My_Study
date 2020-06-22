import 'package:flutter/material.dart';
import 'package:owlallsample/buttonpage/button_page_root.dart';
import 'package:owlallsample/AlerDailogClass.dart';

void main() => runApp(MyApp());

// 메인 바디만 구성하는 클래스
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // MateriApp 타입의 바디.
      debugShowCheckedModeBanner: false,  // 디버그 마크를 보일지 말지 결정.
      home: Scaffold( // scaffold 가 뭔진 모르지만 홈이시다.
        body: SafeAreaBodyWidget(), // 바디를 만들꺼야~~ class는 safeareaBody 로
      ),
    );
  }
}

//SafeArea 를 사용하기 위한 내용을 만들꺼야.
class SafeAreaBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // 정렬을 어떻게 할껀지 정하는거.
      child: SafeArea( // safearea 설정.
        //left: true,
        top: false,
        //right: true,
        //bottom: true,
        child: ListViewWidgetPage(title:"SafeView"), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

// 상태에 따라서 값이 변하게 하기위해 statefulwidget 을 상속받는다.
class ListViewWidgetPage extends StatefulWidget {
  ListViewWidgetPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ListViewWidget createState() => _ListViewWidget();
}

class _ListViewWidget extends State<ListViewWidgetPage> {
  int _counter = 0;

  void _ChageString() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile( leading: Icon(Icons.add_circle_outline), title: Text('$_counter'),
              onTap: () {
                _ChageString();
              },
            ),
            ListTile( leading: Icon(Icons.sim_card_alert), title: Text('경고 버튼 예제'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => AlertDialogDemo()));
              },
            ),
            ListTile( leading: Icon(Icons.navigation), title: Text('네비게이션 페이지'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => BottenVeiwTop()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FirstTestBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to Second'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator
                .of(context)
                .push(MaterialPageRoute(builder: (_) => TestSceene()));
          },
        ),
      ),
    );
  }
}