/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-22 10:12:18
 * @Descripttion: 抽离路由配置，注意：
 * 如果不用onGenerateRoute也可以但是要在目标路由得build中获取参数
 * ModalRoute.of(context).settings.arguments：
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
