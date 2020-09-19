/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 15:32:53
 * @Descripttion: **
 */
import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'pages/Search.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'MyApp',
        theme: ThemeData.light(),
        // home: Tabs(),
        initialRoute: '/',
        routes: {
          '/': (context) => Tabs(),
          '/search': (context) => SearchPage(),
        },
      ),
    );
  }
}
