/*
 * @Author: Chris
 * @Date: 2020-09-19 17:02:07
 * @LastEditors: Chris
 * @LastEditTime: 2020-09-19 17:21:22
 * @Descripttion: 路由配置
 */
import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';

final Map<String, Function> routes = {
  '/': (context) => Tabs(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments), // 参数传递
  '/product': (context, {arguments}) =>
      ProductPage(arguments: arguments), // 参数传递
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
