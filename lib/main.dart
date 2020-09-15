/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-15 15:07:39
 * @Descripttion: **
 */
import 'package:flutter/material.dart';
// import 'res/listData.dart';

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
      color: Colors.yellow,
      width: 500,
      height: 500,
      child: Wrap(
        spacing: 10,
        runSpacing: 30,
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        // verticalDirection: VerticalDirection.up, // 垂直排版方向 从下到上
        // textDirection: TextDirection.rtl, // 水平排版方向 从右到左
        runAlignment: WrapAlignment.center, // 给父盒子高度才有效果
        children: [
          RaisedButton(
            onPressed: null,
            textColor: Colors.blue,
            color: Colors.blue,
            child: Text('dddddddd'),
          ),
          RaisedButton(
            child: Text('有颜色的按钮'),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: () {
              print('点击了');
            },
          ),
          RaisedButton(
            onPressed: () {},
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            child: Text('dddddfdfdddd'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('ddddsdsdddd'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('dddgggggggddddd'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('dddddddd'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('ddddsdadaddddd'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('ddddsdadaddddd'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('ddddsdadaddddd'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('ddddsdadaddddd'),
          ),
        ],
      ),
    );
  }
}
