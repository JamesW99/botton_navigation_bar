import 'package:flutter/material.dart';
import 'package:botton_navigation_bar/setting.dart';
import 'package:botton_navigation_bar/target_page.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  //下面的三个方法都是三个界面的方法
  List _pageList = [
    TargetPage(),
    Setup_page()
    // Setup_page()
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('底部导航栏切换'),
      ),
      /**
         *  切换底部导航栏的时候动态修改body内容
         */
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        //实现底部导航栏点击选中功能
        onTap: (int index) {
//              this._currentIndex=index;//不会重新渲染
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("我的"))
        ],
      ),
    );
  }
}
