// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:botton_navigation_bar/setting.dart';
import 'package:botton_navigation_bar/fake_timeline.dart';
import 'package:botton_navigation_bar/fake_search.dart';
import 'package:botton_navigation_bar/fake_profile.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
  ));
}

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);
  @override
  _BottomBar createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  int _currentIndex = 0;

  List _pageList = [
    TargetPage(), //class name of timeline
    TargetPage3(), //class name of search
    TargetPage4(), //class name of profile
    Setup_page(), //class name of setting
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
             // this._currentIndex=index; //won't rerender
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
