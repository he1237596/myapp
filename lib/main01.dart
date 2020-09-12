/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-12 15:39:15
 * @Descripttion: Stack配合alignment属性 Alignment坐标以中心为（0，0），范围为（-1~1，-1，1）
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
        alignment: Alignment(-1, 1),
        children: [
          Text('文本文本1'),
          Text('文本文本2'),
          Text('文本文本3'),
        ],
      ),
    );
  }
}
