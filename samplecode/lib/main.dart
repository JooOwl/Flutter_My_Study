import 'package:flutter/material.dart';
import 'package:owlallsample/buttonpage/button_page_root.dart';
import 'package:owlallsample/buttonpage/snackBarPage.dart';
import 'package:owlallsample/AlerDailogClass.dart';
import 'package:owlallsample/TapPage.dart';
import 'package:owlallsample/TextFieldPage/TextField_List_Page.dart';
import 'package:owlallsample/ListSamples/ListRootPage.dart';
import 'package:owlallsample/WebImageView.dart';
import 'package:owlallsample/NavigationSamples/Navigation_List_Page.dart';
import 'package:owlallsample/LayOut_Tuto/layout_list.dart';
// 자동 줄 맞춤은 Ctrl + Alt + L;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MateriApp 타입의 바디.
      debugShowCheckedModeBanner: false, // 디버그 마크를 보일지 말지 결정.
      home: Scaffold( // MaterialApp 구성 요소 안에 Scaffold 타입으로 home 을 구성
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
      child: SafeArea(
        // safearea 설정.
        //left: true,
        top: false,
        //right: true,
        //bottom: true,
        child: MainRootViewPage(title: "SafeView Main"), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

// 상태에 따라서 값이 변하게 하기위해 statefulwidget 을 상속받는다.
class MainRootViewPage extends StatefulWidget {
  MainRootViewPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainRootViewPageWidget createState() => _MainRootViewPageWidget();
}

class _MainRootViewPageWidget extends State<MainRootViewPage> {
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

        /////////////////////////////////////////////
        // 상단 탑 옆 드래그 메뉴
        drawer: Drawer(
          // 옆 버튼 드레그 메뉴
          child: Container(
            color: Colors.black26,
            child: new ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer 머리글 근데 범위가 왜 이리 넓지'),
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  title: Text('Drawer 메뉴 Item 1'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Drawer 메뉴 Item 2'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        /////////////////////////////////////////////
        // 페이지들을 보여주기 위한 리스트 뷰
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text('숫자가 변해요 $_counter'),
              onTap: () {
                _ChageString();
              },
            ),
            ListTile(
              leading: Icon(Icons.sim_card_alert),
              title: Text('경고 버튼 예제'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => AlertDialogDemo()));
              },
            ),
            ListTile(
              leading: Icon(Icons.radio_button_checked),
              title: Text('버튼 페이지'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => BottenVeiwTop()));
              },
            ),
            ListTile(
              leading: Icon(Icons.aspect_ratio),
              title: Text('스낵바'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SnackBarPageVeiw(title : "SnackBar Test")));
              },
            ),
            ListTile(
              leading: Icon(Icons.touch_app),
              title: Text('탭바 페이지'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => TabPageMain()));
              },
            ),
            ListTile(
              leading: Icon(Icons.text_fields),
              title: Text('텍스트 필드 페이지'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => TextFieldSamplesPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('리스트 예제 페이지'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ListSamplesPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('웹 이미지 보기'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => WebImg_Page()));
              },
            ),
            ListTile(
              leading: Icon(Icons.navigation),
              title: Text('네비게이선 페이지'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => NavidagionSamplesPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.layers),
              title: Text('레이아웃 페이지'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => LayOut_List()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
