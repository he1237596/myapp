/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-11 14:30:21
 * @Descripttion: 动态列表（注意map方法调用后需要转换数组tolist）
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
  const HomePage({Key key}) : super(key: key);

// 私有方法
  List _getList() {
    List list = new List();
    for (int i = 0; i < 10; i++)
      list.add({'title': 'title$i', 'subtitle': 'subtitle$i'});
    print(list);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
            // scrollDirection: Axis.horizontal,
            children: _getList()
                .map((item) => ListTile(
                      title: Text(item['title']),
                      subtitle: Text(item['subtitle']),
                    ))
                .toList()));
  }
}
