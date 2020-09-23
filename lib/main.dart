/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-23 14:45:36
 * @Descripttion: floatingActionButton+BottomNavigationBar实现底部异性tab
 */
import 'package:flutter/material.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'MyApp',
        theme: ThemeData.light(),
        home: Tabs(),
      ),
    );
  }
}

// 类似咸鱼底部tabBar
class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Text('hello world'),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (index) {
          this.setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 36.0,
        fixedColor: Colors.red, // 选中颜色
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('我的')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              title: Text('设置')),
        ],
      ),
      floatingActionButton: Container(
        // padding: EdgeInsets.all(8),
        width: 80,
        height: 80,

        // color: this._currentIndex == 1 ? Colors.red : Colors.blue,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(40)),
        // margin: EdgeInsets.only(bottom: 0),
        padding: EdgeInsets.all(8),
        child: FloatingActionButton(
          backgroundColor: this._currentIndex == 1 ? Colors.red : Colors.blue,
          onPressed: () {
            this.setState(() {
              this._currentIndex = 1;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
