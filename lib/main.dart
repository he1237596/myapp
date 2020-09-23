/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-23 16:33:22
 * @Descripttion: **
 */
import 'package:flutter/material.dart';
import 'CheckboxDemo.dart';
import 'RadioDemo.dart';
import 'TextFieldDemo.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      theme: ThemeData.light(),
      routes: {
        '/checkbox': (context) => CheckboxPage(),
        '/radio': (context) => RadioPage(),
        '/textField': (context) => TextFieldPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/checkbox');
            },
            child: Text('Checkbox/Switch'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/radio');
            },
            child: Text('Radio'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/textField');
            },
            child: Text('textField'),
          )
        ],
      ),
    );
  }
}
