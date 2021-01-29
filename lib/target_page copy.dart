import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:botton_navigation_bar/setting.dart';
import 'package:botton_navigation_bar/target_page.dart';
import 'package:botton_navigation_bar/target_page copy 2.dart';
import 'package:botton_navigation_bar/target_page copy 3.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
  ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  List _pageList = [
    TargetPage(),
    TargetPage3(),
    TargetPage4(),
    Setup_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._pageList[this._currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0.2,
        backgroundColor: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        // currentIndex: currentIndex,
        currentIndex: this._currentIndex,
        hasInk: true,
        inkColor: Colors.black,
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        // onTap: changePage,

        onTap: (int index) {
//              this._currentIndex=index;//不会重新渲染
          setState(() {
            this._currentIndex = index;
          });
        },

        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home, color: Colors.black),
            activeIcon: Icon(Icons.home, color: Colors.blue),
            title: Text('StepBro'),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.search, color: Colors.black),
            activeIcon: Icon(Icons.search, color: Colors.blue),
            title: Text('Search'),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.menu, color: Colors.black),
            activeIcon: Icon(Icons.menu, color: Colors.blue),
            title: Text('Menu'),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.settings, color: Colors.black),
            activeIcon: Icon(Icons.settings, color: Colors.blue),
            title: Text('Setting'),
          ),
        ],
      ),
    );
  }
}
