/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-11 20:32:05
 * @Descripttion: Padding
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
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('11111111'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('11111111'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('11111111'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('11111111'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('11111111'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('11111111'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('11111111'),
            )
          ],
        ),
      ),
    );
  }
}
