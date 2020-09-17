/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-17 21:22:27
 * @Descripttion: BottomNavigationBar 底部导航
 */
import 'package:flutter/material.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Text('Hello World'),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('我的')),
          ],
        ),
      ),
    );
  }
}
