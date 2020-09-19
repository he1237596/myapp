/*
 * @Author: Chris
 * @Date: 2020-09-19 14:55:34
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 18:23:51
 * @Descripttion: **
 */
import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final int index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
  // _TabsState createState() => _TabsState(currentIndex: this.index); //命名参数传递
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  _TabsState(index) {
    this._currentIndex = index;
  }

  // _TabsState({currentIndex}) { //命名参数接收
  //   this._currentIndex = currentIndex;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (index) {
            this.setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('分类')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('设置')),
          ]),
    );
  }
}
