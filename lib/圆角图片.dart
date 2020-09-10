/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-10 21:16:10
 * @Descripttion: 圆角图片（应该是类似web背景图）
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
        width: 400,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: NetworkImage(
                  'https://pics3.baidu.com/feed/14ce36d3d539b600770f75489730742dc45cb7f7.jpeg?token=0e093d0a6d3f5b9c24b5cb7ed0e6c8a3'),
              fit: BoxFit.contain,
            )),
      ),
    );
  }
}
