/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-12 10:55:21
 * @Descripttion: Expanded(类似flex弹性布局，使用flex属性按比例分配弹性空间)
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
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.redAccent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center, // 交叉轴居中
        textDirection: TextDirection.rtl,
        // verticalDirection: VerticalDirection.up,
        children: [
          Expanded(
            flex: 1,
            child: MyButton(
              Icons.settings,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 1,
            child: MyButton(
              Icons.search,
              color: Colors.yellow,
            ),
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
      height: 80,
      width: 80,
      color: this.color,
      child: ListView(
        children: [
          Text('的撒发生大手动'),
          Icon(
            this.icon,
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
