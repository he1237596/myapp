/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-22 18:18:01
 * @Descripttion: AppBar tab切换效果（优化版,只有一个TabBar，置顶）
 */
import 'package:flutter/material.dart';
import 'AppBarDemo.dart'; // 默认AppBar相关属性
import 'TabBarDemo.dart'; // 默认AppBar tab切换（双tab，瑕疵）
import 'TabBarDemoPlus.dart'; // 优化版,只有一个TabBar（将tabs写到title内），置顶,(双Scaffold可以取消外面的AppBar的title)
import 'TabController.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // 隐藏appbar的debugger
        title: 'MyApp',
        theme: ThemeData.light(),
        home: TabControllerDemo(),
      ),
    );
  }
}
