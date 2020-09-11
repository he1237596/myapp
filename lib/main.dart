/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-11 15:35:50
 * @Descripttion: GridView.builder 
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
                body: HomePage())));
  }
}

class HomePage extends StatelessWidget {
  final listData = new List(10);
  HomePage({Key key}) : super(key: key);

  Widget _getList(content, index) {
    return Container(
      child: Text('item$index'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.7),
        itemCount: this.listData.length,
        itemBuilder: this._getList //迭代器函数
        );
  }
}
