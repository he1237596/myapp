/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-11 12:06:03
 * @Descripttion:自定义列表builder(注意取属性用字符串+中括号)
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
            body: HomePage()),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List list = new List();
  HomePage({Key key}) : super(key: key) {
    for (var i = 0; i < 20; i++) {
      this.list.add({'subtitle': '我是第$i条subtitle', 'title': '我是第$i条title'});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(this.list[index]['title']),
                subtitle: Text(this.list[index]['subtitle']),
              );
            }));
  }
}
