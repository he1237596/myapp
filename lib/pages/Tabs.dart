/*
 * @Author: Chris
 * @Date: 2020-09-17 21:26:20
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-17 21:37:12
 * @Descripttion: **
 */
import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/My.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    Home(),
    My(),
    Home(),
    My(),
    Home(),
    My(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: this._pageList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (index) {
            this.setState(() {
              this._currentIndex = index;
            });
          },
          iconSize: 32.0, //icon的大小
          fixedColor: Colors.red, //选中的颜色
          type: BottomNavigationBarType
              .fixed, //配置底部tabs可以有多个按钮(否则设置大于4个tab的时候就无法正常显示)
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('我的')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('我的')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('我的')),
          ],
        ),
      ),
    );
  }
}
