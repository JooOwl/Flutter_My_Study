
import 'package:flutter/material.dart';

class TabPageMain extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPageMain> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: Center(
            child: Text('_selectedIndex = $_selectedIndex'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
              BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
            ],
            currentIndex: _selectedIndex,
            fixedColor: Colors.deepPurple,
            onTap: (int index) {
              setState(() { _selectedIndex = index; });
            },
          ),
        ),
      ),
    );
  }
}