/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 17:07:42
 * @Descripttion: 抽离路由配置
 */
import 'package:flutter/material.dart';
import 'routes/Routes.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'MyApp',
        theme: ThemeData.light(),
        // home: Tabs(),
        initialRoute: '/',
        // routes: {
        //   '/': (context) => Tabs(),
        //   '/search': (context) => SearchPage(),
        // },
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
