/*
 * @Author: Chris
 * @Date: 2020-09-22 15:06:45
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-22 15:40:30
 * @Descripttion: **
 */
import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('menu Pressed');
            }),
        title: Text('首页'),
        centerTitle: true, // 居中 和ios一致
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search Pressed');
            },
          ),
          IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: "more_horiz", // 长按提是
              onPressed: () {
                print('more_horiz Pressed');
              })
        ],
      ),
      body: Center(
        child: Text('首页'),
      ),
    );
  }
}
