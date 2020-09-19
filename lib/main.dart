/*
 * @Author: Chris
 * @Date: 2020-09-07 15:53:59
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 16:57:36
 * @Descripttion: onGenerateRoute 监听路由
 */
import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'pages/Search.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);

  final routes = {
    '/': (context) => Tabs(),
    '/search': (context, {arguments}) =>
        SearchPage(arguments: arguments), // 参数传递
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'MyApp',
        theme: ThemeData.light(),
        // home: Tabs(),
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => Tabs(),
        //   '/search': (context) => SearchPage(),
        // },
        onGenerateRoute: (RouteSettings settings) {
          final String name = settings.name;
          final Function pageContentBuilder = this.routes[name];
          if (pageContentBuilder != null) {
            if (settings.arguments != null) {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context,
                      arguments: settings.arguments));
              return route;
            } else {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context));
              return route;
            }
          }
        },
      ),
    );
  }
}
