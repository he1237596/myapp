/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-12 10:49:19
 * @Descripttion: Column mainAxisAlignment，verticalDirection（垂直方向）
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
      child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10), child: ListLayout()),
    );
  }
}

class ListLayout extends StatelessWidget {
  const ListLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.redAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch, // 交叉轴铺满
        // textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.up,
        children: [
          MyButton(
            Icons.settings,
            color: Colors.orange,
          ),
          MyButton(
            Icons.search,
            color: Colors.yellow,
          ),
          MyButton(
            Icons.message,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  IconData icon = Icons.search;
  Color color;
  MyButton(this.icon, {Key key, this.color = Colors.green}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Icon(
        this.icon,
        color: Colors.blueAccent,
      ),
    );
  }
}
