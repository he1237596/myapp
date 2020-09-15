/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-15 16:13:15
 * @Descripttion: 有状态组件和无状态组件
 * StatelessWidget 是无状态组件，状态不可变的 widget
 * StatefulWidget 是有状态组件，持有的状态可能在 widget 生命周期改变。
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

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Chip(
          deleteIconColor: Colors.red,
          label: Text('$count'),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            this.setState(() {
              this.count++;
            });
          },
          child: Text('按钮'),
        )
      ],
    );
  }
}
