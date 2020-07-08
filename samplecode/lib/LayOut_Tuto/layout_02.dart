import 'package:flutter/material.dart';

class layout_02 extends StatelessWidget {
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
        child: layout_02_View(), // safearea 안에 들어가는 내용.
      ),
    );
  }
}

class layout_02_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 본 앱의 테마의 대표색상을 필드에 저장
    Color color = Theme
        .of(context)
        .primaryColor;

    return Scaffold(appBar: AppBar(
      title: Text("Flutter layout demo"),
    ),
      // 기존 body 삭제
      // body: Center(
      // child: Text("Hello World"),
      // ),
      // 새로운 body 선언
      body: Column( // 컬럼으로 교체
        // 자식들을 추가
        children: <Widget>[
          titleSection, // titleSection 컨테이너 추가
        ],
      ),
    );
  }

  // 버튼과 텍스트로 구성된 컬럼을 생성하여 반환하는 함수
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    // 컬럼을 생성하여 반환
    return Column(
      mainAxisSize: MainAxisSize.min, // 여유공간을 최소로 할당
      mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
      // 컬럼의 자식들로 아이콘과 컨테이너를 등록
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8), // 컨테이너 상단에 8픽셀의 마진을 할당
          child: Text(
            // 텍스트 할당
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }

  // 컨테이터 위젯 구현
  Widget titleSection = Container(
    // 컨테이너 내부 상하좌우에 32픽셀만큼의 패딩 삽입
    padding: const EdgeInsets.all(32),
    // 자식으로 로우를 추가
    child: Row(
      // 로우에 위젯들(Expanded, Icon, Text)을 자식들로 추가
      children: <Widget>[
        // 첫번째 자식
        Expanded(
          // 첫번째 자식의 자식으로 컬럼 추가
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 자식들을 왼쪽정렬로 배치함
            // 컬럼의 자식들로 컨테이너와 텍스트를 추가
            children: <Widget>[
              // 컬럼의 첫번째 자식 컨테이너
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                // 컨테이너 내부 하단에 8픽셀만큼 패딩 삽입
                child: Text(
                  // 컨테이너의 자식으로 텍스트 삽입
                  "Oeschinen Lake Campground",
                  style: TextStyle(fontWeight: FontWeight.bold // 텍스트 강조 설정
                  ),
                ),
              ),
              // 컬럼의 두번째 자식으로 텍스트 삽입
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey[500] // 텍스트의 색상을 설정
                ),
              )
            ],
          ),
        ),
        // 두번째 자식 아이콘
        Icon(
          Icons.star, // 별모양 아이콘 삽입
          color: Colors.red[500], // 빨간색으로 설정
        ),
        // 세번째 자식
        Text('43') // 텍스트 표시
      ],
    ),
  );
}
