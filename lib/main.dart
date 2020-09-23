/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-23 11:03:23
 * @Descripttion: 各种按钮 都可以带图标RaisedButton
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
    return Column(
      children: [
        RaisedButton(
          onPressed: () {},
          child: Text('凸起按钮'),
        ),
        RaisedButton.icon(
            onPressed: () {}, icon: Icon(Icons.settings), label: Text('按钮')),
        FlatButton(onPressed: () {}, child: Text('扁平化按钮')),
        OutlineButton(
          onPressed: () {},
          child: Text('镂空线框按钮'),
        ),
        IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
        FloatingActionButton(
          onPressed: () {},
          child: Text('浮动'),
        ),
        ButtonBar(
          children: [
            IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
            Text('dddddd'),
            FloatingActionButton(
              onPressed: () {},
              child: Text('浮动'),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                    color: Colors.blue,
                    elevation: 20, // 阴影
                    textColor: Colors.white,
                    label: Text('按钮')))
          ],
        )
      ],
    );
  }
}
