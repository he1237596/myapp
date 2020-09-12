/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-12 15:41:21
 * @Descripttion: Align组件单独设置某个子元素未知
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
        home: Scaffold(
          appBar: AppBar(
            title: Text('首页'),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      decoration: BoxDecoration(color: Colors.yellow),
      child: Stack(
        // alignment: Alignment.bottomCenter,
        alignment: Alignment(0, 0), //设置子元素定位，多个会重叠
        children: [
          Align(
            alignment: Alignment(1, 0.5), //优先级更高
            child: Text('文本文本1'),
          ),
          Align(
            alignment: Alignment(1, -0.5), //优先级更高
            child: Text('文本文本2'),
          ),
          Text('文本文本3'),
        ],
      ),
    );
  }
}
