/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-10 21:19:24
 * @Descripttion: 内置圆角图片组件
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
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            'https://pics3.baidu.com/feed/14ce36d3d539b600770f75489730742dc45cb7f7.jpeg?token=0e093d0a6d3f5b9c24b5cb7ed0e6c8a3',
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
