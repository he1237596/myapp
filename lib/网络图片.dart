/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-10 20:57:17
 * @Descripttion: 引入本地图片（会影响打包的大小）
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
        width: 300,
        height: 120,
        child: Image.network(
          'https://pics3.baidu.com/feed/14ce36d3d539b600770f75489730742dc45cb7f7.jpeg?token=0e093d0a6d3f5b9c24b5cb7ed0e6c8a3',
          fit: BoxFit.cover,
          // alignment: Alignment.bottomCenter,
          // repeat: ImageRepeat.repeatX,
          // color: Colors.green, //混色 配合colorBlendMode使用
          // colorBlendMode: BlendMode.screen,
        ),
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}
